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
// package org.allbinary.input.motion.gesture

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/input/InputFactory.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/MotionGestureInput.dart';

class TrackballMotionGestureFactory {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    late MotionGestureInput LEFT;
    late MotionGestureInput RIGHT;
    late MotionGestureInput UP;
    late MotionGestureInput DOWN;

    // Java field initializers run after the base constructor
    void initFieldsTrackballMotionGestureFactory() {
    
    
    
    
    }
    

    static TrackballMotionGestureFactory getInstance() {
        if (TrackballMotionGestureFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            TrackballMotionGestureFactory.instance = TrackballMotionGestureFactory();
        }
        return (TrackballMotionGestureFactory.instance as TrackballMotionGestureFactory);
    }
    

    TrackballMotionGestureFactory() {
        this.initFieldsTrackballMotionGestureFactory();
        int MAX = InputFactory.getInstance().MAX;
        this.LEFT = MotionGestureInput(MAX - 26, "L Trackball");
        this.RIGHT = MotionGestureInput(MAX - 27, "R Trackball");
        this.UP = MotionGestureInput(MAX - 28, "Up Trackball");
        this.DOWN = MotionGestureInput(MAX - 29, "D Trackball");
    }
}

