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
// package org.allbinary.graphics.opengles

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';

class OpenGLCapabilities {
    static final OpenGLCapabilities instance = OpenGLCapabilities();
    bool CUSTOM_GL_SURFACE_VIEW = false;
    late String VERSION_1_0;
    late String VERSION_1_1;
    late String VERSION_2_0;
    late String VERSION_3_0;
    late String VERSION_3_1;
    late String VERSION_3_2;
    late String VERSION_HIGHER_THAN_EXISTS;
    late String glVersion;
    int shaderVersion = 0;
    late String glInstanceVersion;
    int maxTextureSize = 0;

    // Java field initializers run after the base constructor
    void initFieldsOpenGLCapabilities() {
    this.CUSTOM_GL_SURFACE_VIEW = true;
    this.VERSION_1_0 = "1.0";
    this.VERSION_1_1 = "1.1";
    this.VERSION_2_0 = "2.0";
    this.VERSION_3_0 = "3.0";
    this.VERSION_3_1 = "3.1";
    this.VERSION_3_2 = "3.2";
    this.VERSION_HIGHER_THAN_EXISTS = "999.999";
    this.glVersion = StringUtil.getInstance().EMPTY_STRING;
    this.shaderVersion = 0;
    this.glInstanceVersion = StringUtil.getInstance().EMPTY_STRING;
    this.maxTextureSize = 64;
    }
    

    static OpenGLCapabilities getInstance() {
        return OpenGLCapabilities.instance;
    }
    

    OpenGLCapabilities() {
        this.initFieldsOpenGLCapabilities();
    }
    

    bool isInitialized() {
        return true;
    }
    

    void initCapabilities(Object gl) {
    }
    

    bool isGlExtensionDrawTexture() {
        return false;
    }
    

    String getGlVersion() {
        return this.glVersion;
    }
    

    bool isVertexBufferObjectSupport() {
        return false;
    }
    

    bool isTextureSizeValid(int widthAndHeight) {
        return true;
    }
}

