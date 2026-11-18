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
// package org.allbinary.graphics.threed

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/midlet/MIDlet.dart';
import 'package:allbinary/org/allbinary/graphics/threed/GLHolder.dart';
import 'package:allbinary/org/allbinary/graphics/threed/RatioProcessor.dart';

//SWTWithoutJOGL
class SWTJOGLProcessor implements Runnable {
    static final SWTJOGLProcessor instance = SWTJOGLProcessor();
    late GLHolder glHolder;

    // Java field initializers run after the base constructor
    void initFieldsSWTJOGLProcessor() {
    this.glHolder = GLHolder() /* Java anonymous class body: implement it as a named subclass
        

        @override
        void run(Object renderer) {
        } */;
    }

    SWTJOGLProcessor() {
        this.initFieldsSWTJOGLProcessor();
    }
    

    static SWTJOGLProcessor getInstance() {
        return SWTJOGLProcessor.instance;
    }
    

    void init(Object display, Object comp) {
    }
    

    bool isHolderCreated() {
        return this.glHolder.isCreated;
    }
    

    void setRenderer(Object renderer) {
    }
    

    bool isJOGL() {
        return false;
    }
    

    void createSurface() {
    }
    

    void onSurfaceCreated() {
    }
    

    void onSurfaceChangedForEvent(Object event) {
    }
    

    void onSurfaceChanged() {
    }
    

    void onSurfaceChangedWH(int width, int height) {
    }
    

    void addListener() {
    }
    

    void addListeners(MIDlet midlet) {
    }
    

    @override
    void run() {
    }
    

    void clear() {
    }
    

    void setCustom(int width, int height, double ratio) {
    }
    

    void setRatioProcessor(RatioProcessor ratioProcessor) {
    }
    

    int charWidth(Font font, int ch) {
        throw JException('RuntimeException', '');
    }
    

    int charsWidth(Font font, List<int> ch, int offset, int length) {
        throw JException('RuntimeException', '');
    }
    

    int stringWidth(Font font, String str) {
        throw JException('RuntimeException', '');
    }
    

    int substringWidth(Font font, String str, int offset, int len) {
        throw JException('RuntimeException', '');
    }
}

