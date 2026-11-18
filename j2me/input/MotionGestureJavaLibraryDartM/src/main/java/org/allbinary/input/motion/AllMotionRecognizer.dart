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
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonRecognizer.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/MotionGestureRecognizer.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/input/motion/MotionRecognizer.dart';

class AllMotionRecognizer extends MotionRecognizer {
    static int index = 0;
    static final GPointCircularPool pointCircularPool = GPointCircularPool(40);
    late LogUtil logUtil;
    late MotionGestureRecognizer motionGestureRecognizer;
    bool touchButtonProcessing = false;
    late TouchButtonRecognizer touchButtonRecognizer;
    int id = 0;
    int lastX = 0;
    int lastY = 0;

    // Java field initializers run after the base constructor
    void initFieldsAllMotionRecognizer() {
    this.logUtil = LogUtil.getInstance();
    
    this.touchButtonProcessing = false;
    
    
    this.lastX = 0;
    this.lastY = 0;
    }
    

    AllMotionRecognizer() {
        this.initFieldsAllMotionRecognizer();
        this.id = AllMotionRecognizer.index++;
        this.motionGestureRecognizer = MotionGestureRecognizer(this.id);
        this.touchButtonRecognizer = TouchButtonRecognizer();
    }
    

    @override
    void processStartMotionEvent(int x, int y, int deviceId, int modifiers) {
        if (this.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)) {
            this.touchButtonProcessing = true;
        }
        if (!this.touchButtonProcessing) {
            final CustomGPoint point = (AllMotionRecognizer.pointCircularPool.getNextInstance() as CustomGPoint);
            point.setX(x);
            point.setY(y);
            this.motionGestureRecognizer.processPressedMotionEvent(point, deviceId, modifiers);
        }
    }
    

    @override
    void processEndMotionEvent(int x, int y, int deviceId, int modifiers) {
        if (this.touchButtonRecognizer.releaseTouchButtonInput(x, y, deviceId)) {
        }
        if (!this.touchButtonProcessing) {
            final CustomGPoint point = (AllMotionRecognizer.pointCircularPool.getNextInstance() as CustomGPoint);
            point.setX(x);
            point.setY(y);
            this.motionGestureRecognizer.processReleasedMotionEvent(point, deviceId, modifiers);
        }
        if (this.touchButtonProcessing) {
            this.touchButtonProcessing = false;
        }
    }
    

    @override
    void processDraggedMotionEvent(int x, int y, int deviceId, int modifiers) {
        if (this.touchButtonProcessing) {
            this.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId);
        }
        if (!this.touchButtonProcessing) {
            final CustomGPoint point = (AllMotionRecognizer.pointCircularPool.getNextInstance() as CustomGPoint);
            point.setX(x);
            point.setY(y);
            this.motionGestureRecognizer.processDraggedMotionEvent(point, deviceId, modifiers);
        }
    }
    

    void processMovedMotionEvent(int x, int y, int deviceId, int modifiers) {
        if (x != this.lastX || y != this.lastY) {
            this.lastX = x;
            this.lastY = y;
            final CustomGPoint point = (AllMotionRecognizer.pointCircularPool.getNextInstance() as CustomGPoint);
            point.setX(x);
            point.setY(y);
            this.motionGestureRecognizer.processMovedMotionEvent(point, deviceId, modifiers);
        }
    }
    

    void processScrolledMotionEvent(int x, int y, int deviceId, int modifiers) {
        final CustomGPoint point = (AllMotionRecognizer.pointCircularPool.getNextInstance() as CustomGPoint);
        point.setX(x);
        point.setY(y);
        this.motionGestureRecognizer.processScrolledMotionEvent(point, deviceId, modifiers);
    }
    

    MotionGestureRecognizer getMotionGestureRecognizer() {
        return this.motionGestureRecognizer;
    }
}

