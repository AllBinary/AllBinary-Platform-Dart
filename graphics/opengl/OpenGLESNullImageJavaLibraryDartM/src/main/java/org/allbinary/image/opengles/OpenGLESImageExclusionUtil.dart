/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.image.opengles

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class OpenGLESImageExclusionUtil {
    static final OpenGLESImageExclusionUtil instance = OpenGLESImageExclusionUtil();
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsOpenGLESImageExclusionUtil() {
    this.list = BasicArrayListD();
    }

    OpenGLESImageExclusionUtil() {
        this.initFieldsOpenGLESImageExclusionUtil();
    }
    

    static OpenGLESImageExclusionUtil getInstance() {
        return OpenGLESImageExclusionUtil.instance;
    }
    

    bool isCustomScaling(Image image) {
        return false;
    }
}

