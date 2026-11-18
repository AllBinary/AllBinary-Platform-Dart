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
import 'package:allbinary/java/io/BufferedReader.dart';
import 'package:allbinary/java/io/FileReader.dart';
import 'package:allbinary/org/allbinary/logic/io/file/AbFile.dart';
import 'package:allbinary/org/allbinary/logic/io/file/AbFileNativeUtil.dart';

class BufferedLineReader {
    late BufferedReader tmpIn;

    // Java field initializers run after the base constructor
    void initFieldsBufferedLineReader() {
    
    }
    

    BufferedLineReader(AbFile file) {
        this.initFieldsBufferedLineReader();
        this.tmpIn = BufferedReader(FileReader(AbFileNativeUtil.get(file)));
    }
    

    void readUpToLines(int readAheadIndex) {
    }
    

    String readLine() {
        return this.tmpIn.readLine();
    }
    

    bool ready() {
        return this.tmpIn.ready();
    }
    

    int getSize() {
        return 0;
    }
    

    int getCurrent() {
        return 0;
    }
}

