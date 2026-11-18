// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.animation

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';

class FillAnimation extends IndexedAnimation {
    late List<int> pixelBuffer;
    int width = 0;
    int height = 0;

    // Java field initializers run after the base constructor
    void initFieldsFillAnimation() {
    
    
    
    }
    

    FillAnimation(List<int> pixelBuffer, int width, int height, AnimationBehavior animationBehavior) : super(animationBehavior) {
        this.initFieldsFillAnimation();
        
        this.width = 100;
        this.height = 100;
        this.pixelBuffer = pixelBuffer;
    }
    

    @override
    void setBasicColorP(BasicColor basicColor) {
        bool changed = false;
        if (this.getBasicColorP() == null || this.getBasicColorP().intValue() != basicColor.intValue()) {
            changed = true;
        }
        super.setBasicColorP(basicColor);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    @override
    void changeBasicColor(BasicColor basicColor) {
        bool changed = false;
        if (this.getChangeBasicColor() == null || this.getChangeBasicColor().intValue() != basicColor.intValue()) {
            changed = true;
        }
        super.changeBasicColor(basicColor);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    @override
    void setAlpha(int alpha) {
        bool changed = false;
        if (this.alphaP != alpha) {
            changed = true;
        }
        super.setAlpha(alpha);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    @override
    void setScale(double scaleX, double scaleY) {
    }
    

    @override
    void setMaxScale(double maxScaleX, double maxScaleY) {
    }
    

    void updateModifiers() {
    }
    

    void paint(Graphics g) {
        g.drawRGB(this.pixelBuffer, 0, this.width, 0, 0, this.width, this.height, true);
    }
}

