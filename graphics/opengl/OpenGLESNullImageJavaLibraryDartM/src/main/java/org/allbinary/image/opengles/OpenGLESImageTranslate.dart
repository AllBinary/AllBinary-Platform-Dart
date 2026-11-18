/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
import 'package:allbinary/javax/microedition/khronos/opengles/GL10.dart';
import 'package:allbinary/org/allbinary/image/opengles/OpenGLESImage.dart';

class OpenGLESImageTranslate {
    static final OpenGLESImageTranslate instance = OpenGLESImageTranslate();
    

    static OpenGLESImageTranslate getInstance() {
        return OpenGLESImageTranslate.instance;
    }
    

    void translate(GL10 gl, OpenGLESImage openGLESImage, double x, double y) {
        openGLESImage.imageProcessor.translate(gl, x, y);
    }
    

    void translate2(GL10 gl, OpenGLESImage openGLESImage) {
    }
}

