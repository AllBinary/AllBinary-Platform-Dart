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
// package org.allbinary.platform.graphics

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/javax/microedition/lcdui/NullImage.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';

class PlatformBitmapBase {
    static final PlatformBitmapBase NULL_PLATFORM_BITMAP_BASE = PlatformBitmapBase();
    int alpha = 0;
    late BasicColor basicColor;

    // Java field initializers run after the base constructor
    void initFieldsPlatformBitmapBase() {
    this.alpha = 255;
    this.basicColor = BasicColorFactory.getInstance().NULL_COLOR;
    }

    PlatformBitmapBase() {
        this.initFieldsPlatformBitmapBase();
    }
    

    int getWidth() {
        return 0;
    }
    

    int getHeight() {
        return 0;
    }
    

    Image getImage() {
        return NullImage.NULL_IMAGE;
    }
}

