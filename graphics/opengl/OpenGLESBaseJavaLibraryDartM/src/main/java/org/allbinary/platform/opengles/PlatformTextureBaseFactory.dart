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
// package org.allbinary.platform.opengles

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/khronos/opengles/GL10.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class PlatformTextureBaseFactory {
    static final PlatformTextureBaseFactory NULL_PLATFORM_TEXTURE_BASE_FACTORY = PlatformTextureBaseFactory();
    late CommonStrings commonStrings;

    // Java field initializers run after the base constructor
    void initFieldsPlatformTextureBaseFactory() {
    this.commonStrings = CommonStrings.getInstance();
    }

    PlatformTextureBaseFactory() {
        this.initFieldsPlatformTextureBaseFactory();
    }
    

    void load(GL10 gl, int target, int level, Image image, int border, bool flip) {
    }
}

