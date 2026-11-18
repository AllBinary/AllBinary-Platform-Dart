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
import 'package:allbinary/org/allbinary/animation/RotationAnimation.dart';
import 'package:allbinary/org/allbinary/direction/Direction.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';
import 'package:allbinary/org/allbinary/math/Angle.dart';
import 'package:allbinary/org/allbinary/math/AngleFactory.dart';
import 'package:allbinary/org/allbinary/math/AngleInfo.dart';
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';

class SimultaneousCompoundRotationAnimation extends RotationAnimation {
    late List<RotationAnimation?> animationInterfaceArray;

    // Java field initializers run after the base constructor
    void initFieldsSimultaneousCompoundRotationAnimation() {
    
    }
    

    SimultaneousCompoundRotationAnimation(List<RotationAnimation?> animationInterfaceArray, AnimationBehavior animationBehavior) : super(AngleInfo.getInstance1(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior) {
        this.initFieldsSimultaneousCompoundRotationAnimation();
        
        this.animationInterfaceArray = animationInterfaceArray;
    }
    

    @override
    void setFrame(int frameIndex) {
        for (int index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index]!.setFrame(frameIndex);
        }
    }
    

    @override
    int getFrame() {
        return this.animationInterfaceArray[0]!.getFrame();
    }
    

    @override
    int getAnimationSize() {
        return this.animationInterfaceArray[0]!.getAnimationSize();
    }
    

    @override
    int getSize() {
        return this.animationInterfaceArray[0]!.getSize();
    }
    

    @override
    void previousFrame() {
        for (int index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index]!.previousFrame();
        }
    }
    

    @override
    void nextFrame() {
        for (int index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index]!.nextFrame();
        }
    }
    

    @override
    void previousRotation() {
        for (int index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index]!.previousRotation();
        }
    }
    

    @override
    void nextRotation() {
        for (int index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index]!.nextRotation();
        }
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
        for (int index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index]!.paintXY(graphics, x, y);
        }
    }
    

    @override
    void paintThreedXYZ(Graphics graphics, int x, int y, int z) {
        for (int index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index]!.paintThreedXYZ(graphics, x, y, z);
        }
    }
    

    @override
    void setFrameByDirection(Direction direction) {
        for (int index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index]!.setFrameByDirection(direction);
        }
    }
    

    @override
    void setFrameToAngle(Angle angle) {
        for (int index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index]!.setFrameToAngle(angle);
        }
    }
    

    @override
    void adjustFrameToAngle(Angle newAngle) {
        this.adjustFrame(newAngle.getValue());
    }
    

    @override
    void adjustFrame(int angle) {
        for (int index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index]!.adjustFrame(angle);
        }
    }
    

    @override
    AngleInfo getAngleInfoP() {
        return this.animationInterfaceArray[0]!.getAngleInfoP();
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

