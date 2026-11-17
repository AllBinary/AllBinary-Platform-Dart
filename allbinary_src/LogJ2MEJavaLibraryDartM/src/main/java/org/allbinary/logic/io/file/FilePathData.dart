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
// ignore_for_file: unused_import, unused_local_variable, unnecessary_null_comparison
// package org.allbinary.logic.io.file

import 'package:allbinary/allbinary_java.dart';

class FilePathData {
    static final FilePathData instance = FilePathData();
    int SEPARATORCHAR = 0;
    late String PATH_START;

    // Java field initializers run after the base constructor
    void initFieldsFilePathData() {
    this.SEPARATORCHAR = "\\".codeUnitAt(0);
    this.PATH_START = "\\\\";
    }
    

    static FilePathData getInstance() {
        return FilePathData.instance;
    }
    

    FilePathData() {
        this.initFieldsFilePathData();
    }
}

