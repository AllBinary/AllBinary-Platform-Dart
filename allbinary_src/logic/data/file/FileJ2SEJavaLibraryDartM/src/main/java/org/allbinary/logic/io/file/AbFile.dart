/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.logic.io.file

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/io/File.dart';
import 'package:allbinary/java/io/FileFilter.dart';
import 'package:allbinary/java/io/FilenameFilter.dart';
import 'package:allbinary/java/net/URI.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/logic/io/path/AbPath.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/io/file/AbFileInterface.dart';

class AbFile implements AbFileInterface {
    static final AbFile NULL_FILE = AbFile.createAbFileFromRawPath(StringUtil.getInstance().EMPTY_STRING);
    late File file;

    // Java field initializers run after the base constructor
    void initFieldsAbFile() {
    
    }
    

    static AbFile createAbFileWithChild(AbFile file, String childPathName) {
        return AbFile(File(file.getFile(), childPathName));
    }
    

    static AbFile createAbFile(String filePath) {
        return AbFile(File(AbPath(filePath, StringUtil.getInstance().EMPTY_STRING).toFileSystemString()));
    }
    

    static AbFile createAbFilePathAndName(String filePath, String fileName) {
        return AbFile(File(AbPath(filePath, StringUtil.getInstance().EMPTY_STRING).toFileSystemString(), fileName));
    }
    

    static AbFile createAbFileFromAbPath(AbPath abPath) {
        return AbFile(File(abPath.toFileSystemString()));
    }
    

    static AbFile createAbFileFromRawPath(String filePath) {
        return AbFile(File(filePath));
    }
    

    AbFile(File file) {
        this.initFieldsAbFile();
        this.file = file;
    }
    

    File getFile() {
        return this.file;
    }
    

    String getName() {
        return this.file.getName();
    }
    

    @override
    String getParent() {
        return this.file.getParent();
    }
    

    Object getParentFile() {
        return this.file.getParentFile();
    }
    

    @override
    String getPath() {
        return this.file.getPath();
    }
    

    @override
    bool isAbsolute() {
        return this.file.isAbsolute();
    }
    

    @override
    String getAbsolutePath() {
        return this.file.getAbsolutePath();
    }
    

    Object getAbsoluteFile() {
        return this.file.getAbsoluteFile();
    }
    

    @override
    String getCanonicalPath() {
        return this.file.getCanonicalPath();
    }
    

    Object getCanonicalFile() {
        return this.file.getCanonicalFile();
    }
    

    @override
    URI toURI() {
        return this.file.toURI();
    }
    

    @override
    bool canRead() {
        return this.file.canRead();
    }
    

    @override
    bool canWrite() {
        return this.file.canWrite();
    }
    

    @override
    bool exists() {
        return this.file.exists();
    }
    

    @override
    bool isDirectory() {
        return this.file.isDirectory();
    }
    

    @override
    bool isFile() {
        return this.file.isFile();
    }
    

    @override
    bool isHidden() {
        return this.file.isHidden();
    }
    

    @override
    int lastModified() {
        return this.file.lastModified();
    }
    

    @override
    int length() {
        return this.file.length();
    }
    

    @override
    bool createNewFile() {
        return this.file.createNewFile();
    }
    

    @override
    bool delete() {
        return this.file.delete();
    }
    

    @override
    void deleteOnExit() {
        this.file.deleteOnExit();
    }
    

    @override
    List<String?> list() {
        return this.file.list();
    }
    

    @override
    List<String?> listWithFilter(FilenameFilter filter) {
        return this.file.list(filter);
    }
    

    List<Object?> listFiles() {
        return (this.file.listFiles() as List<Object?>);
    }
    

    List<Object?> listFilesFileNameFilter(FilenameFilter filter) {
        return (this.file.listFiles(filter) as List<Object?>);
    }
    

    List<Object?> listFilesFileFilter(FileFilter filter) {
        return (this.file.listFiles(filter) as List<Object?>);
    }
    

    @override
    bool mkdir() {
        return this.file.mkdir();
    }
    

    @override
    bool mkdirs() {
        return this.file.mkdirs();
    }
    

    bool renameTo(AbFile dest) {
        return this.file.renameTo(dest.getFile());
    }
    

    @override
    bool setLastModified(int time) {
        return this.file.setLastModified(time);
    }
    

    @override
    bool setReadOnly() {
        return this.file.setReadOnly();
    }
    

    bool setWritable([dynamic p0 = jnone, dynamic p1 = jnone]) {
        if (!identical(p1, jnone) && p0 is bool && p1 is bool) {
            return this.setWritable$2(p0, p1);
        }
        if (!identical(p0, jnone) && identical(p1, jnone) && p0 is bool) {
            return this.setWritable$1(p0);
        }
        throw JException('NoSuchMethodError', 'setWritable');
    }

    bool setWritable$2(bool writable, bool ownerOnly) {
        return this.file.setExecutable(writable, ownerOnly);
    }
    

    bool setWritable$1(bool writable) {
        return this.file.setWritable(writable);
    }
    

    bool setReadable([dynamic p0 = jnone, dynamic p1 = jnone]) {
        if (!identical(p1, jnone) && p0 is bool && p1 is bool) {
            return this.setReadable$2(p0, p1);
        }
        if (!identical(p0, jnone) && identical(p1, jnone) && p0 is bool) {
            return this.setReadable$1(p0);
        }
        throw JException('NoSuchMethodError', 'setReadable');
    }

    bool setReadable$2(bool readable, bool ownerOnly) {
        return this.file.setReadable(readable, ownerOnly);
    }
    

    bool setReadable$1(bool readable) {
        return this.file.setReadable(readable);
    }
    

    bool setExecutable([dynamic p0 = jnone, dynamic p1 = jnone]) {
        if (!identical(p1, jnone) && p0 is bool && p1 is bool) {
            return this.setExecutable$2(p0, p1);
        }
        if (!identical(p0, jnone) && identical(p1, jnone) && p0 is bool) {
            return this.setExecutable$1(p0);
        }
        throw JException('NoSuchMethodError', 'setExecutable');
    }

    bool setExecutable$2(bool executable, bool ownerOnly) {
        return this.file.setExecutable(executable, ownerOnly);
    }
    

    bool setExecutable$1(bool executable) {
        return this.file.setExecutable(executable);
    }
    

    bool canExecute() {
        return this.file.canExecute();
    }
    

    int getTotalSpace() {
        return this.file.getTotalSpace();
    }
    

    int getFreeSpace() {
        return this.file.getFreeSpace();
    }
    

    int getUsableSpace() {
        return this.file.getUsableSpace();
    }
    

    int compareTo(File pathname) {
        return this.file.compareTo(pathname);
    }
    

    bool equals(Object obj) {
        return TsUtil.getInstance().equalsNotstring(this.file, obj);
    }
    

    @override
    int get hashCode {
        return this.file.hashCode;
    }
    

    @override
    String toString() {
        return this.file.toString();
    }
}

