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
// package org.allbinary.input.motion

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/CustomGPoint.dart';
import 'package:allbinary/org/allbinary/graphics/GPointCircularPool.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/MotionGestureRecognizer.dart';
import 'package:allbinary/org/allbinary/input/motion/MotionRecognizer.dart';

class GestureOnlyMotionRecognizer extends MotionRecognizer {
    static int index = 0;
    static final GPointCircularPool pointCircularPool = GPointCircularPool(40);
    late MotionGestureRecognizer motionGestureRecognizer;
    int id = 0;

    // Java field initializers run after the base constructor
    void initFieldsGestureOnlyMotionRecognizer() {
    
    
    }
    

    GestureOnlyMotionRecognizer() {
        this.initFieldsGestureOnlyMotionRecognizer();
        this.id = GestureOnlyMotionRecognizer.index++;
        this.motionGestureRecognizer = MotionGestureRecognizer(this.id);
    }
    

    @override
    void processStartMotionEvent(int x, int y, int deviceId, int modifiers) {
        CustomGPoint point = (GestureOnlyMotionRecognizer.pointCircularPool.getNextInstance() as CustomGPoint);
        point.setX(x);
        point.setY(y);
        this.motionGestureRecognizer.processPressedMotionEvent(point, deviceId, modifiers);
    }
    

    @override
    void processEndMotionEvent(int x, int y, int deviceId, int modifiers) {
        CustomGPoint point = (GestureOnlyMotionRecognizer.pointCircularPool.getNextInstance() as CustomGPoint);
        point.setX(x);
        point.setY(y);
        this.motionGestureRecognizer.processReleasedMotionEvent(point, deviceId, modifiers);
    }
    

    @override
    void processDraggedMotionEvent(int x, int y, int deviceId, int modifiers) {
        CustomGPoint point = (GestureOnlyMotionRecognizer.pointCircularPool.getNextInstance() as CustomGPoint);
        point.setX(x);
        point.setY(y);
        this.motionGestureRecognizer.processDraggedMotionEvent(point, deviceId, modifiers);
    }
}

