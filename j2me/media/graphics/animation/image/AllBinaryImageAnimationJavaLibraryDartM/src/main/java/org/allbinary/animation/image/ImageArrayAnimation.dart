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
// package org.allbinary.animation.image

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/javax/microedition/lcdui/NullImage.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/graphics/Anchor.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';

class ImageArrayAnimation extends IndexedAnimation {
    late List<Image?> imageArray;
    int totalFrames = 0;
    late CircularIndexUtil circularIndexUtil;
    int anchor = 0;

    // Java field initializers run after the base constructor
    void initFieldsImageArrayAnimation() {
    this.imageArray = NullImage.NULL_IMAGE_ARRAY;
    this.totalFrames = 0;
    this.circularIndexUtil = CircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL;
    this.anchor = Anchor.TOP_LEFT;
    }
    

    ImageArrayAnimation(List<Image?> imageArray, AnimationBehavior animationBehavior) : super(animationBehavior) {
        this.initFieldsImageArrayAnimation();
        
        this.setImageArray(imageArray);
    }
    

    @override
    int getAnimationSize() {
        return this.getSize();
    }
    

    @override
    void nextFrame() {
        this.circularIndexUtil.next();
    }
    

    @override
    void previousFrame() {
        this.circularIndexUtil.previous();
    }
    

    @override
    void setFrame(int index) {
        this.circularIndexUtil.setIndex(index);
    }
    

    @override
    int getFrame() {
        return this.circularIndexUtil.getIndex();
    }
    

    @override
    int getSize() {
        return this.totalFrames;
    }
    

    @override
    void setSequence(List<int> sequence) {
    }
    

    @override
    List<int> getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    Image getImage(int index) {
        return this.imageArray[index]!;
    }
    

    List<Image?> getImageArray() {
        return this.imageArray;
    }
    

    void setImageArray(List<Image?> imageArray) {
        this.imageArray = imageArray;
        this.totalFrames = imageArray.length;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.totalFrames);
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        graphics.drawImage(this.imageArray[this.circularIndexUtil.getIndex()]!, x, y, this.anchor);
    }
}

