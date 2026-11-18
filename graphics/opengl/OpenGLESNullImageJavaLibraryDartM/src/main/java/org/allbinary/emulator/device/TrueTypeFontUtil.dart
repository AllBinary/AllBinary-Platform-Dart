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
// package org.allbinary.emulator.device

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/khronos/opengles/GL10.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/image/opengles/OpenGLESImage.dart';
import 'package:allbinary/org/allbinary/emulator/device/TrueTypeFontUtilBase.dart';

class TrueTypeFontUtil extends TrueTypeFontUtilBase {
    static final TrueTypeFontUtil instance = TrueTypeFontUtil();
    late OpenGLESImage fontImage;

    // Java field initializers run after the base constructor
    void initFieldsTrueTypeFontUtil() {
    this.fontImage = OpenGLESImage.NULL_OPENGL_IMAGE;
    }
    

    static TrueTypeFontUtil getInstance() {
        return TrueTypeFontUtil.instance;
    }
    

    TrueTypeFontUtil() : super(1) {
        this.initFieldsTrueTypeFontUtil();
        
    }
    

    @override
    int getAsTextureSize(int textureSize) {
        throw JException('RuntimeException', '');
    }
    

    @override
    int getCellSize(int cellSize) {
        throw JException('RuntimeException', '');
    }
    

    Image getFontBitmap(String filename, int fontSize, int cellSize, BasicColor basicColor) {
        throw JException('RuntimeException', '');
    }
    

    void saveFontAtlasAsFile() {
    }
    

    Image getFontBitmapGL(GL10 gl, String filename, int cellSize, BasicColor basicColor) {
        throw JException('RuntimeException', '');
    }
    

    List<int> getFontWidths(String filename, int fontSize) {
        throw JException('RuntimeException', '');
    }
}

