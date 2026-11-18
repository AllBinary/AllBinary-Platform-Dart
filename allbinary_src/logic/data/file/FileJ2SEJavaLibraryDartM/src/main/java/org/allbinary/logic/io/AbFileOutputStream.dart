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
import 'package:allbinary/java/io/FileOutputStream.dart';
import 'package:allbinary/org/allbinary/logic/io/file/AbFile.dart';

class AbFileOutputStream extends FileOutputStream {
    

    static AbFileOutputStream createFromAbFile(AbFile file) {
        return AbFileOutputStream(file.getPath(), false);
    }
    

    static AbFileOutputStream createFromAbFileAppend(AbFile file, bool append) {
        return AbFileOutputStream(file.getPath(), append);
    }
    

    static AbFileOutputStream createFromFilePath(String name) {
        return AbFileOutputStream(name, false);
    }
    

    static AbFileOutputStream createFromFilePathAppend(String name, bool append) {
        return AbFileOutputStream(name, append);
    }
    

    AbFileOutputStream(String name, bool append) : super(name, append) {
        
    }
}

