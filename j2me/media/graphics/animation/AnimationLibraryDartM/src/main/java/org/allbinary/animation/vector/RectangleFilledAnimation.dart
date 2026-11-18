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
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/ColorCompositeInterface.dart';

class RectangleFilledAnimation extends Animation implements ColorCompositeInterface {
    int widthP = 0;
    int heightP = 0;

    // Java field initializers run after the base constructor
    void initFieldsRectangleFilledAnimation() {
    
    
    }
    

    RectangleFilledAnimation(int width, int height, BasicColor basicColor) {
        this.initFieldsRectangleFilledAnimation();
        this.widthP = width;
        this.heightP = height;
        this.setBasicColorP(basicColor);
    }
    

    @override
    void nextFrame() {
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        graphics.fillRect(x, y, this.widthP, this.heightP);
    }
    

    void setWidth(int width) {
        this.widthP = width;
    }
    

    void setHeight(int height) {
        this.heightP = height;
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

