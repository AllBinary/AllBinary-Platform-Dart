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
import 'package:allbinary/javax/microedition/lcdui/game/Sprite.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';
import 'package:allbinary/org/allbinary/graphics/Anchor.dart';
import 'package:allbinary/org/allbinary/animation/image/ImageSegmentAnimation.dart';

class TopToBottomImageAnimation extends ImageSegmentAnimation {
    int currentHeight = 0;
    int anchor = 0;

    // Java field initializers run after the base constructor
    void initFieldsTopToBottomImageAnimation() {
    
    this.anchor = Anchor.TOP_LEFT;
    }
    

    TopToBottomImageAnimation(Image image, List<int> sequenceArray, AnimationBehavior animationBehavior) : super(image, sequenceArray, animationBehavior) {
        this.initFieldsTopToBottomImageAnimation();
        
        this.currentHeight = 0;
        if (this.getSequence()[0] == -1) {
            this.setFrame(this.getSize() - 1);
        }
    }
    

    @override
    void nextFrame() {
        if (this.getSequence()[0] == -1) {
            super.previousFrame();
        } else {
            super.nextFrame();
        }
        this.update();
    }
    

    @override
    void previousFrame() {
        if (this.getSequence()[0] == -1) {
            super.nextFrame();
        } else {
            super.previousFrame();
        }
        this.update();
    }
    

    @override
    void setFrame(int index) {
        super.setFrame(index);
        this.update();
    }
    

    void update() {
        this.currentHeight = this.getDrawHeight() * this.getFrame() ~/ this.getSize();
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        graphics.drawRegion(this.getImage(), this.getStartX(), this.getStartY(), this.getDrawWidth(), this.currentHeight, Sprite.TRANS_NONE, x, y, this.anchor);
    }
}

