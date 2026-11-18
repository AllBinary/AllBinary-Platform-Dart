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
// package org.allbinary.animation.vector

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/AndroidUtil.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/animation/vector/CircleAnimation.dart';

class AdjustedCircleAnimation extends CircleAnimation {
    int xAdjustment = 0;
    int yAdjustment = 0;

    // Java field initializers run after the base constructor
    void initFieldsAdjustedCircleAnimation() {
    this.xAdjustment = 0;
    this.yAdjustment = 0;
    }
    

    static AdjustedCircleAnimation createAnimation(int width, int height, int xAdjustment, int yAdjustment, BasicColor basicColor) {
        final AdjustedCircleAnimation adjustedCircleAnimation = AdjustedCircleAnimation(width, height, basicColor);
        adjustedCircleAnimation.initXY(xAdjustment, yAdjustment);
        return adjustedCircleAnimation;
    }
    

    static AdjustedCircleAnimation createW(int width, int height, int innerWidth, BasicColor basicColor) {
        final AdjustedCircleAnimation adjustedCircleAnimation = AdjustedCircleAnimation(width, height, basicColor);
        adjustedCircleAnimation.init(innerWidth);
        return adjustedCircleAnimation;
    }
    

    AdjustedCircleAnimation(int width, int height, BasicColor basicColor) : super(width, height, basicColor) {
        this.initFieldsAdjustedCircleAnimation();
        
    }
    

    void initXY(int xAdjustment, int yAdjustment) {
        this.xAdjustment = xAdjustment;
        this.yAdjustment = yAdjustment;
    }
    

    void init(int innerWidth) {
        if (AndroidUtil.isAndroid()) {
            int widthPortion = (((innerWidth ~/ 3) * 10) ~/ 7);
            this.xAdjustment = -((this.width >> 1) - widthPortion);
            this.yAdjustment = this.xAdjustment;
        } else {
            this.xAdjustment = -((this.width >> 1) - innerWidth);
            this.yAdjustment = this.xAdjustment;
        }
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        graphics.drawArc(x + this.xAdjustment, y + this.yAdjustment, this.width, this.height, 0, this.TOTAL_ANGLE);
    }
}

