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
// package org.allbinary.animation.image.sprite

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/javax/microedition/lcdui/game/Sprite.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';
import 'package:allbinary/org/allbinary/animation/RotationAnimation.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';
import 'package:allbinary/org/allbinary/math/AngleInfo.dart';
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';

class HackRotationSpriteIndexedAnimation extends RotationAnimation {
    late Sprite sprite;
    late Image image;

    // Java field initializers run after the base constructor
    void initFieldsHackRotationSpriteIndexedAnimation() {
    
    
    }
    

    HackRotationSpriteIndexedAnimation(Sprite sprite, Image image, AngleInfo angleInfo, AnimationBehavior animationBehavior) : super(angleInfo, CircularIndexUtil.createInstance(360 ~/ angleInfo.getAngleIncrementInfo().getAngleIncrement()), animationBehavior) {
        this.initFieldsHackRotationSpriteIndexedAnimation();
        
        this.sprite = sprite;
        this.image = image;
    }
    

    @override
    int getAnimationSize() {
        return this.getSize();
    }
    

    void paintFrame(Graphics g, int frame, int x, int y) {
        this.setFrame(frame);
        this.paintXY(g, x, y);
    }
    

    @override
    void paintXY(Graphics g, int x, int y) {
        this.sprite.setPosition(x, y);
        this.paint(g);
    }
    

    void paint(Graphics g) {
        this.sprite.paint(g);
    }
    

    @override
    void nextRotation() {
        this.sprite.nextFrame();
    }
    

    @override
    void previousRotation() {
        this.sprite.prevFrame();
    }
    

    @override
    int getSize() {
        return this.sprite.getRawFrameCount();
    }
    

    @override
    void setFrame(int frame) {
        this.sprite.setFrame(frame);
    }
    

    @override
    int getFrame() {
        return this.sprite.getFrame();
    }
    

    @override
    void setSequence(List<int> sequence) {
    }
    

    @override
    List<int> getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
}

