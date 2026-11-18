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
// package org.allbinary.image.opengles

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/khronos/opengles/GL.dart';
import 'package:allbinary/javax/microedition/khronos/opengles/GL10.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/javax/microedition/lcdui/NullImage.dart';
import 'package:allbinary/org/allbinary/platform/graphics/PlatformBitmapBase.dart';
import 'package:allbinary/org/allbinary/platform/graphics/PlatformBitmapBaseFactory.dart';
import 'package:allbinary/org/allbinary/platform/opengles/PlatformTextureBaseFactory.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/image/opengles/OpenGLSurfaceChangedInterface.dart';
import 'package:allbinary/org/allbinary/image/opengles/OpenGLESImageProperties.dart';

//OpenGLESNullImageJ2MEJavaLibrary
class OpenGLESImage implements OpenGLSurfaceChangedInterface {
    static final OpenGLESImage NULL_OPENGL_IMAGE = OpenGLESImage(NullImage.NULL_IMAGE, PlatformBitmapBaseFactory.NULL_PLATFORM_BITMAP_BASE_FACTORY, PlatformTextureBaseFactory.NULL_PLATFORM_TEXTURE_BASE_FACTORY);
    static final BasicArrayList texture2dList = BasicArrayListD();
    static const int TYPE = 4;
    late CommonStrings commonStrings;
    late PlatformTextureBaseFactory textureFactory;
    late PlatformBitmapBase openGLBitmap;
    late OpenGLESImageProperties openGLESImageProperties;

    // Java field initializers run after the base constructor
    void initFieldsOpenGLESImage() {
    this.commonStrings = CommonStrings.getInstance();
    
    
    this.openGLESImageProperties = OpenGLESImageProperties();
    }
    

    OpenGLESImage(Image image, PlatformBitmapBaseFactory bitmapFactory, PlatformTextureBaseFactory textureFactory) {
        this.initFieldsOpenGLESImage();
        this.openGLBitmap = bitmapFactory.createBitmap(image);
        this.textureFactory = textureFactory;
    }
    

    @override
    void set(GL gl) {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    bool initTexture(GL10 gl) {
        return false;
    }
    

    void drawRegion(GL10 gl, int viewHeight, double x_src, double y_src, double width, double height, int x, int y, int z) {
    }
    

    void draw(GL10 gl, int x, int y, int z) {
    }
    

    int getType() {
        return OpenGLESImage.TYPE;
    }
}

