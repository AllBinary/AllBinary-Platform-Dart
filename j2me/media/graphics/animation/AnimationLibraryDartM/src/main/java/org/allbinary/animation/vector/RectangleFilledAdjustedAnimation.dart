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
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/ColorCompositeInterface.dart';
import 'package:allbinary/org/allbinary/animation/vector/RectangleFilledAnimation.dart';

class RectangleFilledAdjustedAnimation extends RectangleFilledAnimation implements ColorCompositeInterface {
    int offsetX = 0;
    int offsetY = 0;

    // Java field initializers run after the base constructor
    void initFieldsRectangleFilledAdjustedAnimation() {
    
    
    }
    

    RectangleFilledAdjustedAnimation(int width, int height, int offsetX, int offsetY, BasicColor basicColor) : super(width, height, basicColor) {
        this.initFieldsRectangleFilledAdjustedAnimation();
        
        this.offsetX = offsetX;
        this.offsetY = offsetY;
        this.setBasicColorP(basicColor);
    }
    

    @override
    void nextFrame() {
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        super.paintXY(graphics, x + this.offsetX, y + this.offsetY);
    }
    

    void setOffsetX(int offsetX) {
        this.offsetX = offsetX;
    }
    

    void setOffsetY(int offsetY) {
        this.offsetY = offsetY;
    }
    

    @override
    BasicColor getBasicColorP() {
        return super.getBasicColorP();
    }
    

    @override
    void setBasicColorP(BasicColor basicColor) {
        super.setBasicColorP(basicColor);
    }
}

