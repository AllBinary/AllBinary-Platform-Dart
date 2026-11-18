#!/usr/bin/env bash

# Analyzes the Dart sources the Dart converter generated with dart analyze. Every converted project is part of one Dart
# package named allbinary, so the package is assembled in object_dir from the hand written runtime, the sources of the
# dependencies (META-INF/dart/lib of their jars), and this project. This project's sources are written to <output>/lib
# so dependent projects find them in this project's jar under META-INF/dart.
# Arguments: source_dir output_dir object_dir dependency_dir runtime_dir compiler "flags" artifactId fail_on_error

set -uo pipefail

export PATH="/usr/local/bin:/usr/bin:/bin:$PATH"

source_dir="$(cygpath -u "$1")"
output_dir="$(cygpath -u "$2")"
object_dir="$(cygpath -u "$3")"
dependency_dir="$(cygpath -u "$4")"
runtime_dir="$(cygpath -u "$5")"
compiler="$(cygpath -u "$6")"
read -r -a compiler_flags <<< "$7"
artifact="$8"
fail_on_error="${9:-true}"

if [ ! -d "$source_dir" ]; then
    echo "No Dart sources: $source_dir"
    exit 0
fi

rm -rf "$output_dir" "$object_dir"
package_dir="$object_dir/package"
mkdir -p "$output_dir/lib" "$package_dir/lib"

# The runtime keeps java.* classes at their package paths: lib/java/io/PrintStream.dart
cp -R "$runtime_dir"/. "$package_dir/lib/"
if [ -d "$dependency_dir/lib" ]; then
    cp -R "$dependency_dir/lib/." "$package_dir/lib/"
fi
cp -R "$source_dir/." "$package_dir/lib/"
cp -R "$source_dir/." "$output_dir/lib/"
printf 'name: allbinary\nenvironment:\n  sdk: ">=3.0.0 <4.0.0"\n' > "$package_dir/pubspec.yaml"

cd "$package_dir" || exit 1
echo "Dart sources: $(find "$source_dir" -name '*.dart' | wc -l)"
"$compiler" pub get --offline > /dev/null
# Only the diagnostics of this project and the runtime count. Like Java, a dependency is not checked again here: its own
# optional dependencies (LogFormatUtil of LogJ2MEJavaLibrary for LoggingJ2MEAll) are not transitive so they are missing.
# Machine format lines are SEVERITY|TYPE|CODE|FILE|LINE|COLUMN|LENGTH|MESSAGE.
checked_files="$object_dir/checked-files.txt"
( cd "$source_dir" && find . -name '*.dart' ; cd "$runtime_dir" && find . -name '*.dart' ) | sed 's|^\./||' > "$checked_files"
"$compiler" analyze --format=machine "${compiler_flags[@]}" lib > "$object_dir/analyze.txt" 2>&1
lib_dir="$(cygpath -m "$package_dir/lib")/"
diagnostics="$(awk -F'|' -v lib="$lib_dir" -v list="$checked_files" '
    BEGIN { while ((getline line < list) > 0) { checked[line] = 1 } }
    NF >= 8 {
        file = $4
        gsub(/\\+/, "/", file)
        if (index(tolower(file), tolower(lib)) == 1) { file = substr(file, length(lib) + 1) }
        if (file in checked) { print "  " tolower($1) " - " file ":" $5 ":" $6 " - " $8 " - " tolower($3) }
    }' "$object_dir/analyze.txt")"
if [ -z "$diagnostics" ]; then
    echo "Dart analyzed: $artifact"
    exit 0
fi
echo "$diagnostics"
echo "Dart build failed: $artifact" >&2
if [ "$fail_on_error" = "true" ]; then
    exit 1
fi
exit 0
