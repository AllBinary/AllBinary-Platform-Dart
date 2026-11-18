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
import 'package:allbinary/java/io/File.dart';
import 'package:allbinary/java/io/FileInputStream.dart';
import 'package:allbinary/org/allbinary/logic/io/file/AbFile.dart';
import 'package:allbinary/org/allbinary/logic/io/file/AbFileNativeUtil.dart';

class AbFileInputStream extends FileInputStream {
    

    AbFileInputStream(String name) : super(name) {
        
    }
    

    static AbFileInputStream createFromAbFile(AbFile file) {
        return AbFileInputStream(AbFileNativeUtil.get(file).getPath());
    }
    

    static AbFileInputStream createFromFile(File file) {
        return AbFileInputStream(file.getPath());
    }
}

