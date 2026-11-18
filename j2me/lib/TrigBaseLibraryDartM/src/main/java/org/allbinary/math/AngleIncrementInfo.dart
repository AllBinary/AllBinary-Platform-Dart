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
// package org.allbinary.math

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/math/AngleFactory.dart';
import 'package:allbinary/org/allbinary/math/FrameUtil.dart';

class AngleIncrementInfo {
    static const String INCREMENT = "Inc: ";
    int angleIncrement = 0;
    late int DOWN_FRAME;
    late int UP_FRAME;
    late int LEFT_FRAME;
    late int RIGHT_FRAME;
    late FrameUtil frameUtil;

    // Java field initializers run after the base constructor
    void initFieldsAngleIncrementInfo() {
    
    
    
    
    
    this.frameUtil = FrameUtil.getInstance();
    }
    

    AngleIncrementInfo(int angleIncrement) {
        this.initFieldsAngleIncrementInfo();
        this.angleIncrement = angleIncrement;
        final AngleFactory angleFactory = AngleFactory.getInstance();
        final SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        this.DOWN_FRAME = smallIntegerSingletonFactory.getAt(angleFactory.DOWN.getValue() ~/ this.angleIncrement);
        this.UP_FRAME = smallIntegerSingletonFactory.getAt(angleFactory.UP.getValue());
        this.LEFT_FRAME = smallIntegerSingletonFactory.getAt(angleFactory.LEFT.getValue() ~/ this.angleIncrement);
        this.RIGHT_FRAME = smallIntegerSingletonFactory.getAt(angleFactory.RIGHT.getValue() ~/ this.angleIncrement);
    }
    

    int getFrameAngle(int frame) {
        return this.frameUtil.getFrameAngle(frame, this.angleIncrement);
    }
    

    int getAngleIncrement() {
        return this.angleIncrement;
    }
    

    @override
    String toString() {
        return StringMaker().append(AngleIncrementInfo.INCREMENT).appendshort(this.angleIncrement).toString();
    }
    

    int getClosestGeneralDirection(int angle) {
        int closestDirection = SmallIntegerSingletonFactory.getInstance().getAt(360);
        if ((this.UP_FRAME).toInt() - angle < (closestDirection).toInt() - angle) {
            closestDirection = this.UP_FRAME;
        }
        if ((this.DOWN_FRAME).toInt() - angle < (closestDirection).toInt() - angle) {
            closestDirection = this.DOWN_FRAME;
        }
        if ((this.LEFT_FRAME).toInt() - angle < (closestDirection).toInt() - angle) {
            closestDirection = this.LEFT_FRAME;
        }
        if ((this.RIGHT_FRAME).toInt() - angle < (closestDirection).toInt() - angle) {
            closestDirection = this.RIGHT_FRAME;
        }
        return (closestDirection).toInt();
    }
}

