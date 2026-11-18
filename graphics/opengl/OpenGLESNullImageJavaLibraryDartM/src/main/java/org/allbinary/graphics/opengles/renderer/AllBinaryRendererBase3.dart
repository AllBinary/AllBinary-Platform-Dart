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
// package org.allbinary.graphics.opengles.renderer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/khronos/opengles/GL10.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/org/allbinary/image/opengles/OpenGLESImage.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class AllBinaryRendererBase3 {
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsAllBinaryRendererBase3() {
    this.list = BasicArrayListD();
    }

    AllBinaryRendererBase3() {
        this.initFieldsAllBinaryRendererBase3();
    }
    

    void update(GL10 gl) {
        while (this.list.size() > 0) {
            final OpenGLESImage openGLESImage = (this.list.removeAt(0) as OpenGLESImage);
            if (openGLESImage != null) {
                openGLESImage.set(gl);
            }
        }
    }
    

    void add(Image image) {
        this.list.add(image);
    }
}

