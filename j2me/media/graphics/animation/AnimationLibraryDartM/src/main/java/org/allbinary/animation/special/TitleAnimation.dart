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
// package org.allbinary.animation.special

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/animation/IndexedAnimationBehavior.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/logic/ABSystemWrapper.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';
import 'package:allbinary/org/allbinary/animation/special/SpecialAnimation.dart';

class TitleAnimation extends SpecialAnimation {
    late ABSystemWrapper systemWrapper;
    double deltaX = 0.0;
    double deltaY = 0.0;
    double deltaZ = 0.0;
    late List<BasicColor?> basicColorArray;
    late List<int> dxArray;
    late List<int> dyArray;
    int widthP = 0;
    late List<IndexedAnimation?> animationInterfaceArray;
    int sizeP = 0;
    int y = 0;
    int lastFrameStartTime = 0;
    late DisplayInfoSingleton displayInfoSingleton;
    late BasicColor CLEAR_COLOR;

    // Java field initializers run after the base constructor
    void initFieldsTitleAnimation() {
    this.systemWrapper = ABSystemWrapper.getInstance();
    this.deltaX = 0.0;
    this.deltaY = 0.0;
    this.deltaZ = 0.0;
    
    
    
    
    
    
    
    
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.CLEAR_COLOR = BasicColorFactory.getInstance().CLEAR_COLOR;
    }
    

    static TitleAnimation createAnimation(List<IndexedAnimation?> animationInterfaceArray, List<BasicColor?> basicColorArray, List<int> dxArray, List<int> dyArray, int y, int width) {
        return TitleAnimation(animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, IndexedAnimationBehavior(1, 250));
    }
    

    TitleAnimation(List<IndexedAnimation?> animationInterfaceArray, List<BasicColor?> basicColorArray, List<int> dxArray, List<int> dyArray, int y, int width, AnimationBehavior animationBehavior) : super(animationBehavior) {
        this.initFieldsTitleAnimation();
        
        this.lastFrameStartTime = this.systemWrapper.currentTimeMillis();
        this.animationInterfaceArray = animationInterfaceArray;
        this.sizeP = this.animationInterfaceArray.length;
        this.basicColorArray = basicColorArray;
        this.dxArray = dxArray;
        this.dyArray = dyArray;
        this.y = y;
        this.widthP = width;
        this.reset();
    }
    

    @override
    void nextFrame() {
        final int currentTime = this.systemWrapper.currentTimeMillis();
        final int totalTimeElapsed = currentTime - this.lastFrameStartTime;
        final IndexedAnimationBehavior indexedAnimationBehavior = (this.getAnimationBehavior() as IndexedAnimationBehavior);
        if (totalTimeElapsed > indexedAnimationBehavior.frameDelayTime) {
            this.previousFrame();
            this.lastFrameStartTime = currentTime;
        }
        if (this.animationInterfaceArray[0]!.getFrame() == 0) {
            indexedAnimationBehavior.loopIndex++;
        }
    }
    

    @override
    bool isComplete() {
        final IndexedAnimationBehavior indexedAnimationBehavior = (this.getAnimationBehavior() as IndexedAnimationBehavior);
        if (indexedAnimationBehavior.loopTotal == -1 || indexedAnimationBehavior.loopIndex < indexedAnimationBehavior.loopTotal || this.getFrame() != 0) {
            return false;
        } else {
            return true;
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
    int getSize() {
        return this.animationInterfaceArray[0]!.getSize();
    }
    

    @override
    int getFrame() {
        return this.animationInterfaceArray[0]!.getFrame();
    }
    

    @override
    void setFrame(int frame) {
        for (int index = 0; index < this.sizeP; index++) {
            this.animationInterfaceArray[index]!.setFrame(frame);
        }
    }
    

    @override
    void setLastFrame() {
        this.setFrame(this.getSize() - 1);
    }
    

    @override
    void reset() {
        this.setLastFrame();
        final IndexedAnimationBehavior indexedAnimationBehavior = ((this.getAnimationBehavior() as IndexedAnimationBehavior));
        indexedAnimationBehavior.reset();
    }
    

    @override
    void previousFrame() {
        for (int index = 0; index < this.sizeP; index++) {
            this.animationInterfaceArray[index]!.previousFrame();
        }
    }
    

    void paintFrameXY(Graphics graphics, int frame, int x, int y) {
        this.setFrame(frame);
        this.paintXY(graphics, x, y);
    }
    

    @override
    void paintXY(Graphics graphics, int ax, int ay) {
        int x = 0;
        if (this.widthP != Integer.MIN_VALUE) {
            x = ((this.displayInfoSingleton.getLastWidth() - this.widthP) ~/ 2);
        }
        int deltaX = 0;
        int deltaY = 0;
        for (int index = 0; index < this.sizeP; index++) {
            deltaX = this.dxArray[index] + x;
            deltaY = this.dyArray[index] + this.y;
            if (!identical(this.basicColorArray[index]!, this.CLEAR_COLOR)) {
                this.basicSetColorUtil.setBasicColorP(graphics, this.basicColorArray[index]!);
            }
            this.animationInterfaceArray[index]!.paintXY(graphics, deltaX, deltaY);
        }
    }
}

