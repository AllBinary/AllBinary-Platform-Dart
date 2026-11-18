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
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';
import 'package:allbinary/org/allbinary/animation/image/ImageSegmentAnimation.dart';

class BottomToTopImageAnimation extends ImageSegmentAnimation {
    int startHeight = 0;
    int currentHeight = 0;
    int anchor = 0;

    // Java field initializers run after the base constructor
    void initFieldsBottomToTopImageAnimation() {
    this.startHeight = 0;
    this.currentHeight = 0;
    this.anchor = Anchor.TOP_LEFT;
    }
    

    BottomToTopImageAnimation(Image image, AnimationBehavior animationBehavior) : super(image, PrimitiveIntUtil.getArrayInstance(), animationBehavior) {
        this.initFieldsBottomToTopImageAnimation();
        
        this.setFrame(this.getSize() - 1);
    }
    

    @override
    void nextFrame() {
        super.previousFrame();
        this.update();
    }
    

    @override
    void previousFrame() {
        super.nextFrame();
        this.update();
    }
    

    @override
    void setFrame(int index) {
        super.setFrame(index);
        this.update();
    }
    

    void update() {
        this.startHeight = this.getDrawHeight() * this.getFrame() ~/ this.getSize();
        this.currentHeight = this.getDrawHeight() - this.startHeight;
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        graphics.drawRegion(this.getImage(), this.getStartX(), this.startHeight, this.getDrawWidth(), this.currentHeight, Sprite.TRANS_NONE, x, y + this.startHeight, this.anchor);
    }
}

