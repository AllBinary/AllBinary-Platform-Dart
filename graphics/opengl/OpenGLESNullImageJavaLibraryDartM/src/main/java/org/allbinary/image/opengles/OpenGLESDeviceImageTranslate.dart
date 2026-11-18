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
import 'package:allbinary/org/allbinary/image/opengles/OpenGLESImageTranslate.dart';
import 'package:allbinary/org/allbinary/image/opengles/OpenGLESImage.dart';

class OpenGLESDeviceImageTranslate extends OpenGLESImageTranslate {
    double translateX = 0.0;
    double translateY = 0.0;
    double translateX2 = 0.0;
    double translateY2 = 0.0;

    // Java field initializers run after the base constructor
    void initFieldsOpenGLESDeviceImageTranslate() {
    this.translateX = 0.0;
    this.translateY = 0.0;
    this.translateX2 = 0.0;
    this.translateY2 = 0.0;
    }

    OpenGLESDeviceImageTranslate() {
        this.initFieldsOpenGLESDeviceImageTranslate();
    }
    

    @override
    void translate(GL10 gl, OpenGLESImage openGLESImage, double x, double y) {
        openGLESImage.imageProcessor.translate(gl, this.translateX + (openGLESImage.openGLESImageProperties.scaleX * x), this.translateY + (openGLESImage.openGLESImageProperties.scaleY * y));
    }
    

    @override
    void translate2(GL10 gl, OpenGLESImage openGLESImage) {
        openGLESImage.imageProcessor.translate(gl, this.translateX2, this.translateY2);
    }
}

