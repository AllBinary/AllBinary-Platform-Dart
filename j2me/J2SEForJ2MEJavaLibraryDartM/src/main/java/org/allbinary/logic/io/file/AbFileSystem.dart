/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
import 'package:allbinary/java/io/FileInputStream.dart';
import 'package:allbinary/java/io/InputStream.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

//J2SEForJ2ME
class AbFileSystem {
    static final AbFileSystem instance = AbFileSystem();
    late LogUtil logUtil;
    late CommonStrings commonStrings;

    // Java field initializers run after the base constructor
    void initFieldsAbFileSystem() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    }

    AbFileSystem() {
        this.initFieldsAbFileSystem();
    }
    

    static AbFileSystem getInstance() {
        return AbFileSystem.instance;
    }
    

    bool isDirectoryOrFile(String path) {
        final File file = File(path);
        return file.isDirectory() || file.isFile();
    }
    

    bool isDirectory(String path) {
        return File(path).isDirectory();
    }
    

    List<String?> getFilesAsStringArrayForPath(String currentDirPath) {
        final File file = File(currentDirPath);
        if (file.exists()) {
            return file.list();
        } else {
            return StringUtil.getInstance().getArrayInstance();
        }
    }
    

    String readAsString([dynamic p0 = jnone, dynamic p1 = jnone]) {
        if (!identical(p0, jnone) && identical(p1, jnone) && p0 is String) {
            return this.readAsString$1(p0);
        }
        if (!identical(p1, jnone) && p0 is String && jIsList(p1)) {
            return this.readAsString$2(p0, p1);
        }
        throw JException('NoSuchMethodError', 'readAsString');
    }

    String readAsString$1(String fileName) {
        final List<int> bytes = List<int>.filled(1000000, 0);
        return this.readAsString(fileName, bytes);
    }
    

    String readAsString$2(String fileName, List<int> bytes) {
        Object closeable = NullUtil.getInstance().NULL_OBJECT;
        try {
            final InputStream idFile = FileInputStream(fileName);
            closeable = idFile;
            final int size = idFile.read(bytes);
            if (size > 0) {
                return JString.fromChars(bytes, 0, size);
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "readAsString", e);
            }
        } finally {
            this.close(closeable);
        }
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    bool close(Object closeable) {
        try {
            if (closeable != null) {
                final InputStream inputStream = ((closeable as InputStream));
                inputStream.close();
            }
            return true;
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.CLOSE, e);
            return false;
            }
        }
    }
    

    static void main(List<String?> args) {
        final bool isDirectory = AbFileSystem.getInstance().isDirectory("c:");
        JSystem.println(jstr("isDirectory: " + jstr(isDirectory)));
    }
}

