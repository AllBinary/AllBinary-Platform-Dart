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
import 'package:allbinary/org/allbinary/math/AngleInfo.dart';
import 'package:allbinary/org/allbinary/animation/image/ImageBaseRotationAnimation.dart';

class AdjustedImageBaseRotationAnimation extends ImageBaseRotationAnimation {
    int dx = 0;
    int dy = 0;

    // Java field initializers run after the base constructor
    void initFieldsAdjustedImageBaseRotationAnimation() {
    this.dx = 0;
    this.dy = 0;
    }
    

    AdjustedImageBaseRotationAnimation(Image image, AngleInfo angleInfo, int totalAngle, int dx, int dy, AnimationBehavior animationBehavior) : super(image, angleInfo, totalAngle, animationBehavior) {
        this.initFieldsAdjustedImageBaseRotationAnimation();
        
        this.init(dx, dy);
    }
    

    void init(int dx, int dy) {
        this.dx = dx;
        this.dy = dy;
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        super.paintXY(graphics, x + this.dx, y + this.dy);
    }
}

