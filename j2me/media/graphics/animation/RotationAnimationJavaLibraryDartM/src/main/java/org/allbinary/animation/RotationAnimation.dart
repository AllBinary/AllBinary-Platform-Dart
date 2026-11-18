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
// package org.allbinary.animation

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/direction/Direction.dart';
import 'package:allbinary/org/allbinary/direction/DirectionUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/math/Angle.dart';
import 'package:allbinary/org/allbinary/math/AngleInfo.dart';
import 'package:allbinary/org/allbinary/math/FrameUtil.dart';
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/animation/RotationAnimationInterface.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';

class RotationAnimation extends IndexedAnimation implements RotationAnimationInterface {
    late FrameUtil frameUtil;
    late DirectionUtil directionUtil;
    late AngleInfo angleInfo;
    late CircularIndexUtil circularIndexUtil;

    // Java field initializers run after the base constructor
    void initFieldsRotationAnimation() {
    this.frameUtil = FrameUtil.getInstance();
    this.directionUtil = DirectionUtil.getInstance();
    
    
    }
    

    RotationAnimation(AngleInfo angleInfo, CircularIndexUtil circularIndexUtil, AnimationBehavior animationBehavior) : super(animationBehavior) {
        this.initFieldsRotationAnimation();
        
        this.angleInfo = angleInfo;
        this.circularIndexUtil = circularIndexUtil;
    }
    

    void nextRotationX() {
    }
    

    void previousRotationX() {
    }
    

    @override
    void nextRotation() {
        this.angleInfo.adjustAngle(this.circularIndexUtil.next());
    }
    

    @override
    void previousRotation() {
        this.angleInfo.adjustAngle(this.circularIndexUtil.previous());
    }
    

    void nextRotationZ() {
    }
    

    void previousRotationZ() {
    }
    

    @override
    void setFrame(int index) {
        this.circularIndexUtil.setIndex(index);
        final int newFrame = this.circularIndexUtil.getIndex();
        this.angleInfo.adjustAngle(newFrame);
    }
    

    @override
    void setFrameByDirection(Direction direction) {
        final Angle angle = this.directionUtil.getFrameAngle(direction);
        this.adjustFrameToAngle(angle);
    }
    

    @override
    void setFrameToAngle(Angle angle) {
        this.adjustFrameToAngle(angle);
    }
    

    @override
    void adjustFrameToAngle(Angle angle) {
        this.adjustFrame(angle.getValue());
    }
    

    @override
    void adjustFrame(int angle) {
        this.setFrame(this.frameUtil.getFrameForAngle(angle, this.angleInfo.getAngleIncrementInfo().getAngleIncrement()));
    }
    

    @override
    int getFrame() {
        return this.circularIndexUtil.getIndex();
    }
    

    @override
    int getSize() {
        return this.circularIndexUtil.getSize();
    }
    

    @override
    AngleInfo getAngleInfoP() {
        return this.angleInfo;
    }
    

    @override
    String toString() {
        return StringMaker().append(super.toString()).append("circularIndexUtil: ").append(this.circularIndexUtil.toString()).append("angleInfo: ").append(this.angleInfo.toString()).toString();
    }
}

