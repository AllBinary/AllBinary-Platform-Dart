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
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';
import 'package:allbinary/org/allbinary/animation/compound/CompoundAnimationInterface.dart';

class CompoundIndexedAnimation extends IndexedAnimation implements CompoundAnimationInterface {
    late CircularIndexUtil circularIndexUtil;
    late List<Animation?> animationInterfaceArray;

    // Java field initializers run after the base constructor
    void initFieldsCompoundIndexedAnimation() {
    
    
    }
    

    CompoundIndexedAnimation(List<Animation?> animationInterfaceArray, AnimationBehavior animationBehavior) : super(animationBehavior) {
        this.initFieldsCompoundIndexedAnimation();
        
        this.animationInterfaceArray = animationInterfaceArray;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.animationInterfaceArray.length);
    }
    

    @override
    void setFrame(int index) {
        final IndexedAnimation indexedAnimation = (this.animationInterfaceArray[this.circularIndexUtil.getIndex()]! as IndexedAnimation);
        indexedAnimation.setFrame(index);
    }
    

    @override
    int getFrame() {
        final IndexedAnimation indexedAnimation = (this.animationInterfaceArray[this.circularIndexUtil.getIndex()]! as IndexedAnimation);
        return indexedAnimation.getFrame();
    }
    

    @override
    int getSize() {
        final IndexedAnimation indexedAnimation = (this.animationInterfaceArray[this.circularIndexUtil.getIndex()]! as IndexedAnimation);
        return indexedAnimation.getSize();
    }
    

    @override
    void previousFrame() {
        final IndexedAnimation indexedAnimation = (this.animationInterfaceArray[this.circularIndexUtil.getIndex()]! as IndexedAnimation);
        indexedAnimation.previousFrame();
    }
    

    @override
    void setSequence(List<int> sequence) {
    }
    

    @override
    List<int> getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    @override
    void nextFrame() {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()]!.nextFrame();
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
        return (this.animationInterfaceArray[this.circularIndexUtil.getIndex()]! as IndexedAnimation);
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
        int frame = this.getFrame();
        this.circularIndexUtil.setIndex(index);
        this.setFrame(frame);
    }
    

    List<Animation?> getAnimationInterfaceArray() {
        return this.animationInterfaceArray;
    }
    

    void setAnimationInterfaceArray(List<Animation?> animationInterfaceArray) {
        this.animationInterfaceArray = animationInterfaceArray;
    }
    

    @override
    void set(GL gl) {
        for (int index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index]!.set(gl);
        }
    }
}

