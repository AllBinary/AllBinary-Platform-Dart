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
// package org.allbinary.graphics.displayable

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListUtil.dart';

class CanvasStrings {
    static final CanvasStrings instance = CanvasStrings();
    late String CONSTRUCTOR;
    late String PAUSE;
    late String UN_PAUSE;
    late String SET_FULL_SCREEN_MODE;
    late String SIZE_CHANGED;
    late String SCALED_IMAGES;
    late String PAINT;
    late String ON_DISPLAY_CHANGE_EVENT;
    late String UPDATE_MEASUREMENT;
    late String FD_WIDTH;
    late String FD_HEIGHT;
    late BasicArrayList EMPTY_CHILD_NAME_LIST;
    late String ABOUT;
    late String OPTIONS;
    late String FONT_ATLAS;
    late String OBJ_MODEL;
    late String MD2_MODEL;
    late String u_PNG;

    // Java field initializers run after the base constructor
    void initFieldsCanvasStrings() {
    this.CONSTRUCTOR = "MyCanvas::MyCanvas";
    this.PAUSE = "MyCanvas::pause";
    this.UN_PAUSE = "MyCanvas::unPause";
    this.SET_FULL_SCREEN_MODE = "setFullScreenMode";
    this.SIZE_CHANGED = "sizeChanged";
    this.SCALED_IMAGES = "scaledImages";
    this.PAINT = "paint";
    this.ON_DISPLAY_CHANGE_EVENT = "onDisplayChangeEvent";
    this.UPDATE_MEASUREMENT = "updateMeasurement";
    this.FD_WIDTH = " font/display width: ";
    this.FD_HEIGHT = " font/display height: ";
    this.EMPTY_CHILD_NAME_LIST = BasicArrayListUtil.getInstance().getImmutableInstance();
    this.ABOUT = "About";
    this.OPTIONS = "Options";
    this.FONT_ATLAS = "/font.png";
    this.OBJ_MODEL = "_obj";
    this.MD2_MODEL = "_md2";
    this.u_PNG = ".png";
    }

    CanvasStrings() {
        this.initFieldsCanvasStrings();
    }
    

    static CanvasStrings getInstance() {
        return CanvasStrings.instance;
    }
}

