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
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';

class SimultaneousCompoundIndexAnimation extends IndexedAnimation {
    late List<IndexedAnimation?> animationInterfaceArray;

    // Java field initializers run after the base constructor
    void initFieldsSimultaneousCompoundIndexAnimation() {
    
    }
    

    SimultaneousCompoundIndexAnimation(List<IndexedAnimation?> animationInterfaceArray, AnimationBehavior animationBehavior) : super(animationBehavior) {
        this.initFieldsSimultaneousCompoundIndexAnimation();
        
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
    void set(GL gl) {
        for (int index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index]!.set(gl);
        }
    }
    

    List<IndexedAnimation?> getAnimationInterfaceArray() {
        return this.animationInterfaceArray;
    }
    

    void setAnimationInterfaceArray(List<IndexedAnimation?> animationInterfaceArray) {
        this.animationInterfaceArray = animationInterfaceArray;
    }
}

