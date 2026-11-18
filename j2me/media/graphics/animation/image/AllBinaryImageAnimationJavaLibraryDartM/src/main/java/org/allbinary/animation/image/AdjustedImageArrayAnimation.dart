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
import 'package:allbinary/org/allbinary/animation/image/ImageArrayAnimation.dart';

class AdjustedImageArrayAnimation extends ImageArrayAnimation {
    int dx = 0;
    int dy = 0;

    // Java field initializers run after the base constructor
    void initFieldsAdjustedImageArrayAnimation() {
    this.dx = 0;
    this.dy = 0;
    }
    

    AdjustedImageArrayAnimation(List<Image?> imageArray, int dx, int dy, AnimationBehavior animationBehavior) : super(imageArray, animationBehavior) {
        this.initFieldsAdjustedImageArrayAnimation();
        
        this.init(dx, dy);
    }
    

    void init(int dx, int dy) {
        this.setDx(dx);
        this.setDy(dy);
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        super.paintXY(graphics, x + this.dx, y + this.dy);
    }
    

    @override
    void setDx(int dx) {
        this.dx = dx;
    }
    

    @override
    int getDx() {
        return this.dx;
    }
    

    @override
    void setDy(int dy) {
        this.dy = dy;
    }
    

    @override
    int getDy() {
        return this.dy;
    }
}

