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
// package org.allbinary.logic.java

import 'package:allbinary/allbinary_java.dart';

class FileExtensionData {
    static final FileExtensionData instance = FileExtensionData();
    late String DOT_JAVA_SOURCE;
    late String JAVA_SOURCE;

    // Java field initializers run after the base constructor
    void initFieldsFileExtensionData() {
    this.DOT_JAVA_SOURCE = ".java";
    this.JAVA_SOURCE = "java";
    }
    

    static FileExtensionData getInstance() {
        return FileExtensionData.instance;
    }
    

    FileExtensionData() {
        this.initFieldsFileExtensionData();
    }
}

