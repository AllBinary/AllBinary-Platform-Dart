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
// package org.allbinary.animation.compound

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/khronos/opengles/GL.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/animation/RotationAnimation.dart';
import 'package:allbinary/org/allbinary/direction/Direction.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';
import 'package:allbinary/org/allbinary/math/Angle.dart';
import 'package:allbinary/org/allbinary/math/AngleFactory.dart';
import 'package:allbinary/org/allbinary/math/AngleInfo.dart';
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';
import 'package:allbinary/org/allbinary/animation/compound/CompoundAnimationInterface.dart';

class AutoCompoundRotationAnimation extends RotationAnimation implements CompoundAnimationInterface {
    late List<RotationAnimation?> animationInterfaceArray;

    // Java field initializers run after the base constructor
    void initFieldsAutoCompoundRotationAnimation() {
    
    }
    

    AutoCompoundRotationAnimation(List<RotationAnimation?> animationInterfaceArray, AnimationBehavior animationBehavior) : super(AngleInfo.getInstance1(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior) {
        this.initFieldsAutoCompoundRotationAnimation();
        
        this.animationInterfaceArray = animationInterfaceArray;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.animationInterfaceArray.length);
    }
    

    @override
    void setFrame(int index) {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()]!.setFrame(index);
    }
    

    @override
    int getFrame() {
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()]!.getFrame();
    }
    

    @override
    int getAnimationSize() {
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()]!.getAnimationSize();
    }
    

    @override
    int getSize() {
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()]!.getSize();
    }
    

    @override
    void previousFrame() {
        this.circularIndexUtil.previous();
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()]!.previousFrame();
    }
    

    @override
    void nextFrame() {
        this.circularIndexUtil.next();
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()]!.nextFrame();
    }
    

    @override
    void previousRotation() {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()]!.previousRotation();
    }
    

    @override
    void nextRotation() {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()]!.nextRotation();
    }
    

    @override
    void setSequence(List<int> sequence) {
    }
    

    @override
    List<int> getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()]!.paintXY(graphics, x, y);
    }
    

    @override
    void paintThreedXYZ(Graphics graphics, int x, int y, int z) {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()]!.paintThreedXYZ(graphics, x, y, z);
    }
    

    @override
    IndexedAnimation getCurrentAnimation() {
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()]!;
    }
    

    @override
    void nextAnimation() {
        int frame = this.getFrame();
        this.circularIndexUtil.next();
        this.setFrame(frame);
    }
    

    @override
    void previousAnimation() {
        int frame = this.getFrame();
        this.circularIndexUtil.previous();
        this.setFrame(frame);
    }
    

    @override
    void setAnimation(int index) {
        final int frame = this.getFrame();
        this.circularIndexUtil.setIndex(index);
        this.setFrame(frame);
    }
    

    @override
    void setFrameByDirection(Direction direction) {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()]!.setFrameByDirection(direction);
    }
    

    @override
    void setFrameToAngle(Angle angle) {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()]!.setFrameToAngle(angle);
    }
    

    @override
    void adjustFrameToAngle(Angle newAngle) {
        this.adjustFrame(newAngle.getValue());
    }
    

    @override
    void adjustFrame(int angle) {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()]!.adjustFrame(angle);
    }
    

    @override
    AngleInfo getAngleInfoP() {
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()]!.getAngleInfoP();
    }
    

    List<RotationAnimation?> getAnimationInterfaceArray() {
        return this.animationInterfaceArray;
    }
    

    void setAnimationInterfaceArray(List<RotationAnimation?> animationInterfaceArray) {
        this.animationInterfaceArray = animationInterfaceArray;
    }
    

    @override
    void set(GL gl) {
        for (int index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index]!.set(gl);
        }
    }
}

