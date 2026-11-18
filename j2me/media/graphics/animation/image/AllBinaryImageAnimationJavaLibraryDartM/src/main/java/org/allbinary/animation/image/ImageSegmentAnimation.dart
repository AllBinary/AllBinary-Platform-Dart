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
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';
import 'package:allbinary/org/allbinary/animation/image/ImageAnimation.dart';

class ImageSegmentAnimation extends ImageAnimation {
    int startX = 0;
    int startY = 0;
    int drawWidth = 0;
    int drawHeight = 0;
    late CircularIndexUtil circularIndexUtil;
    late List<int> sequenceArray;

    // Java field initializers run after the base constructor
    void initFieldsImageSegmentAnimation() {
    
    
    
    
    
    
    }
    

    ImageSegmentAnimation(Image image, List<int> sequenceArray, AnimationBehavior animationBehavior) : super(image, animationBehavior) {
        this.initFieldsImageSegmentAnimation();
        
        this.startX = 0;
        this.startY = 0;
        this.drawWidth = this.getImage().getWidth();
        this.drawHeight = this.getImage().getHeight();
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.drawHeight);
        this.sequenceArray = sequenceArray;
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
        return this.circularIndexUtil.getSize();
    }
    

    @override
    void setSequence(List<int> sequenceArray) {
        this.sequenceArray = sequenceArray;
    }
    

    @override
    List<int> getSequence() {
        return this.sequenceArray;
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
    }
    

    int getStartX() {
        return this.startX;
    }
    

    void setStartX(int startX) {
        this.startX = startX;
    }
    

    int getStartY() {
        return this.startY;
    }
    

    void setStartY(int startY) {
        this.startY = startY;
    }
    

    int getDrawWidth() {
        return this.drawWidth;
    }
    

    void setDrawWidth(int drawWidth) {
        this.drawWidth = drawWidth;
    }
    

    int getDrawHeight() {
        return this.drawHeight;
    }
    

    void setDrawHeight(int drawHeight) {
        this.drawHeight = drawHeight;
    }
}

