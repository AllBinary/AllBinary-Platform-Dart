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
// package org.allbinary.animation

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/khronos/opengles/GL.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorSetUtil.dart';
import 'package:allbinary/org/allbinary/image/opengles/OpenGLSurfaceChangedInterface.dart';
import 'package:allbinary/org/allbinary/animation/AnimationInterface.dart';

class Animation implements AnimationInterface, OpenGLSurfaceChangedInterface {
    late BasicColorSetUtil basicSetColorUtil;
    late BasicColor basicColor;
    int colorP = 0;
    late BasicColor changeBasicColorP;
    int changeColorP = 0;
    int alphaP = 0;

    // Java field initializers run after the base constructor
    void initFieldsAnimation() {
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    this.basicColor = BasicColorFactory.getInstance().WHITE;
    this.colorP = 0;
    this.changeBasicColorP = BasicColorFactory.getInstance().NULL_COLOR;
    this.changeColorP = 0;
    this.alphaP = 0;
    }
    

    Animation() {
        this.initFieldsAnimation();
    }
    

    void setAlpha(int alpha) {
        this.alphaP = alpha;
    }
    

    @override
    void nextFrame() {
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
    }
    

    @override
    void paintThreedXYZ(Graphics graphics, int x, int y, int z) {
    }
    

    bool isThreed() {
        return false;
    }
    

    BasicColor getBasicColorP() {
        return this.basicColor;
    }
    

    void setBasicColorP(BasicColor basicColor) {
        this.basicColor = basicColor;
        this.colorP = this.basicColor.intValue();
    }
    

    void setBackgroundBasicColorP(BasicColor basicColor) {
    }
    

    BasicColor getChangeBasicColor() {
        return this.changeBasicColorP;
    }
    

    void changeBasicColor(BasicColor basicColor) {
        this.changeBasicColorP = basicColor;
        this.changeColorP = this.changeBasicColorP.intValue();
    }
    

    int getChangeColor() {
        return this.changeColorP;
    }
    

    int getColor() {
        return this.colorP;
    }
    

    void setScale(double scaleX, double scaleY) {
    }
    

    void setMaxScale(double maxScaleX, double maxScaleY) {
    }
    

    @override
    void set(GL gl) {
    }
    

    void setDx(int dx) {
    }
    

    int getDx() {
        return 0;
    }
    

    void setDy(int dy) {
    }
    

    int getDy() {
        return 0;
    }
}

