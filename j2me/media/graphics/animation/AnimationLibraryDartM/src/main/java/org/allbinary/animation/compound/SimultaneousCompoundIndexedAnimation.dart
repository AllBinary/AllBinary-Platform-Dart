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
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';

class SimultaneousCompoundIndexedAnimation extends IndexedAnimation {
    late List<Animation?> animationInterfaceArray;

    // Java field initializers run after the base constructor
    void initFieldsSimultaneousCompoundIndexedAnimation() {
    
    }
    

    SimultaneousCompoundIndexedAnimation(List<Animation?> animationInterfaceArray, AnimationBehavior animationBehavior) : super(animationBehavior) {
        this.initFieldsSimultaneousCompoundIndexedAnimation();
        
        this.animationInterfaceArray = animationInterfaceArray;
    }
    

    @override
    void setFrame(int frameIndex) {
        late IndexedAnimation indexedAnimation;
        for (int index = this.animationInterfaceArray.length; --index >= 0; ) {
            indexedAnimation = (this.animationInterfaceArray[index]! as IndexedAnimation);
            indexedAnimation.setFrame(frameIndex);
        }
    }
    

    @override
    int getFrame() {
        final IndexedAnimation indexedAnimation = (this.animationInterfaceArray[0]! as IndexedAnimation);
        return indexedAnimation.getFrame();
    }
    

    @override
    int getSize() {
        final IndexedAnimation indexedAnimation = (this.animationInterfaceArray[0]! as IndexedAnimation);
        return indexedAnimation.getSize();
    }
    

    @override
    void previousFrame() {
        late IndexedAnimation indexedAnimation;
        for (int index = this.animationInterfaceArray.length; --index >= 0; ) {
            indexedAnimation = (this.animationInterfaceArray[index]! as IndexedAnimation);
            indexedAnimation.previousFrame();
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
    void nextFrame() {
        for (int index = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index]!.nextFrame();
        }
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        int size = this.animationInterfaceArray.length;
        for (int index = 0; index < size; index++) {
            this.animationInterfaceArray[index]!.paintXY(graphics, x, y);
        }
    }
    

    @override
    void paintThreedXYZ(Graphics graphics, int x, int y, int z) {
        int size = this.animationInterfaceArray.length;
        for (int index = 0; index < size; index++) {
            this.animationInterfaceArray[index]!.paintThreedXYZ(graphics, x, y, z);
        }
    }
    

    List<Animation?> getAnimationInterfaceArray() {
        return this.animationInterfaceArray;
    }
    

    void setAnimationInterfaceArray(List<Animation?> animationInterfaceArray) {
        this.animationInterfaceArray = animationInterfaceArray;
    }
}

