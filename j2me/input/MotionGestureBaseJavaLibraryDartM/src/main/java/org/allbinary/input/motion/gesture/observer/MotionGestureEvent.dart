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
// package org.allbinary.input.motion.gesture.observer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/MotionGestureInput.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/TouchMotionGestureFactory.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';

class MotionGestureEvent extends AllBinaryEventObject {
    static const String PREVIOUS = " Previous: ";
    static const String HASHCODE = " hashcode: ";
    late MotionGestureInput motionGesture;
    int id = 0;
    late GPoint previousPoint;
    late GPoint currentPoint;
    late CommonLabels commonLabels;

    // Java field initializers run after the base constructor
    void initFieldsMotionGestureEvent() {
    this.motionGesture = TouchMotionGestureFactory.getInstance().NO_MOTION;
    
    this.previousPoint = PointFactory.getInstance().ZERO_ZERO;
    this.currentPoint = PointFactory.getInstance().ZERO_ZERO;
    this.commonLabels = CommonLabels.getInstance();
    }
    

    MotionGestureEvent(Object source, int id, MotionGestureInput motionGesture) : super(source) {
        this.initFieldsMotionGestureEvent();
        
        this.id = id;
        this.setMotionGesture(motionGesture);
    }
    

    MotionGestureInput getMotionGesture() {
        return this.motionGesture;
    }
    

    void setMotionGesture(MotionGestureInput motionGesture) {
        this.motionGesture = motionGesture;
    }
    

    GPoint getPreviousPoint() {
        return this.previousPoint;
    }
    

    void setPreviousPoint(GPoint previousPoint) {
        this.previousPoint = previousPoint;
    }
    

    GPoint getCurrentPoint() {
        return this.currentPoint;
    }
    

    void setCurrentPoint(GPoint currentPoint) {
        this.currentPoint = currentPoint;
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        final StringUtil stringUtil = StringUtil.getInstance();
        stringBuffer.append(stringUtil.toString1(this.motionGesture));
        stringBuffer.append(this.commonLabels.CURRENT);
        stringBuffer.append(stringUtil.toString1(this.currentPoint));
        stringBuffer.append(MotionGestureEvent.PREVIOUS);
        stringBuffer.append(stringUtil.toString1(this.previousPoint));
        stringBuffer.append(MotionGestureEvent.HASHCODE);
        stringBuffer.appendint(TsUtil.getInstance().hashCode1(this));
        return stringBuffer.toString();
    }
    

    int getId() {
        return this.id;
    }
}

