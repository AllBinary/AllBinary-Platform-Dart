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
import 'package:allbinary/org/allbinary/logic/io/file/AbFile.dart';

class FileFactory {
    static final FileFactory instance = FileFactory();
    

    static FileFactory getInstance() {
        return FileFactory.instance;
    }
    

    AbFile getInstance1(String filePath) {
        return AbFile.createAbFileFromRawPath(filePath);
    }
    

    AbFile getInstance2(AbFile file, String childFilePath) {
        return AbFile.createAbFileWithChild(file, childFilePath);
    }
    

    bool isFile(String path) {
        AbFile file = AbFile.createAbFile(path);
        if (file.exists()) {
            return true;
        } else {
            return false;
        }
    }
}

