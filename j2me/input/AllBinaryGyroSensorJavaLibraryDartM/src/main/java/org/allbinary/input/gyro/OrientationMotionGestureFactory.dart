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
// package org.allbinary.input.gyro

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/input/InputFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/MotionGestureInput.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';

class OrientationMotionGestureFactory {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    late MotionGestureInput LEFT;
    late MotionGestureInput RIGHT;
    late MotionGestureInput UP;
    late MotionGestureInput DOWN;
    late MotionGestureInput ROLL_LEFT;
    late MotionGestureInput ROLL_RIGHT;

    // Java field initializers run after the base constructor
    void initFieldsOrientationMotionGestureFactory() {
    
    
    
    
    
    
    }
    

    static OrientationMotionGestureFactory getInstance() {
        if (OrientationMotionGestureFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            OrientationMotionGestureFactory.instance = OrientationMotionGestureFactory();
        }
        return (OrientationMotionGestureFactory.instance as OrientationMotionGestureFactory);
    }
    

    OrientationMotionGestureFactory() {
        this.initFieldsOrientationMotionGestureFactory();
        int MAX = InputFactory.getInstance().MAX;
        this.LEFT = MotionGestureInput(MAX - 20, "Left Orient");
        this.RIGHT = MotionGestureInput(MAX - 21, "Right Orient");
        this.UP = MotionGestureInput(MAX - 22, "Up Orient");
        this.DOWN = MotionGestureInput(MAX - 23, "Down Orient");
        this.ROLL_LEFT = MotionGestureInput(MAX - 24, "Roll Left");
        this.ROLL_RIGHT = MotionGestureInput(MAX - 25, "Roll Right");
    }
}

