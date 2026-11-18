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
// package org.allbinary.logic.io

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/io/file/AbFile.dart';
import 'package:allbinary/org/allbinary/logic/io/path/AbPath.dart';
import 'package:allbinary/org/allbinary/logic/io/AbFileInputStream.dart';
import 'package:allbinary/org/allbinary/logic/io/AbFileOutputStream.dart';

class FileStreamFactory {
    static Object SINGLETON = NullUtil.getInstance().NULL_OBJECT;
    

    static FileStreamFactory getInstance() {
        if (FileStreamFactory.SINGLETON == NullUtil.getInstance().NULL_OBJECT) {
            FileStreamFactory.SINGLETON = FileStreamFactory();
        }
        return (FileStreamFactory.SINGLETON as FileStreamFactory);
    }
    

    FileStreamFactory() {
    }
    

    AbFileInputStream getFileInputStreamInstance(String path, String fileName) {
        final AbPath FILEABPATH = AbPath(path, fileName);
        final AbFile file = AbFile.createAbFileFromAbPath(FILEABPATH);
        return AbFileInputStream.createFromAbFile(file);
    }
    

    AbFileOutputStream getFileOutputStreamInstance(String path, String fileName) {
        final AbPath FILEABPATH = AbPath(path, fileName);
        final AbFile file = AbFile.createAbFileFromAbPath(FILEABPATH);
        if (file.exists()) {
            file.delete();
            file.createNewFile();
        }
        return AbFileOutputStream.createFromAbFile(file);
    }
    

    void delete(String path, String fileName) {
        final AbPath FILEABPATH = AbPath(path, fileName);
        final AbFile file = AbFile.createAbFileFromAbPath(FILEABPATH);
        file.delete();
    }
}

