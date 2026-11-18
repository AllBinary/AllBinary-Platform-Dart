// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.animation.vector

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/animation/vector/RectangleFilledAnimation.dart';

class ARectangleFilledAnimation extends RectangleFilledAnimation {
    int x = 0;
    int y = 0;

    // Java field initializers run after the base constructor
    void initFieldsARectangleFilledAnimation() {
    this.x = 0;
    this.y = 0;
    }
    

    ARectangleFilledAnimation() : super(0, 0, BasicColorFactory.getInstance().BLACK) {
        this.initFieldsARectangleFilledAnimation();
        
    }
    

    @override
    void nextFrame() {
    }
    

    @override
    void paintXY(Graphics graphics, int unusedX, int unusedY) {
        super.paintXY(graphics, this.x, this.y);
    }
}

