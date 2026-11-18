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

class RectangleAnimation extends Animation implements ColorCompositeInterface {
    int width = 0;
    int height = 0;

    // Java field initializers run after the base constructor
    void initFieldsRectangleAnimation() {
    
    
    }
    

    RectangleAnimation(int width, int height, BasicColor basicColor) {
        this.initFieldsRectangleAnimation();
        this.width = width;
        this.height = height;
        this.setBasicColorP(basicColor);
    }
    

    @override
    void nextFrame() {
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        graphics.drawRect(x, y, this.width, this.height);
    }
    

    void setWidth(int width) {
        this.width = width;
    }
    

    void setHeight(int height) {
        this.height = height;
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

