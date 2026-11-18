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
// package org.allbinary.graphics

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';

class Line {
    late GPoint p1;
    late GPoint p2;
    double deltaX = 0.0;
    double deltaY = 0.0;

    // Java field initializers run after the base constructor
    void initFieldsLine() {
    
    
    this.deltaX = 0.0;
    this.deltaY = 0.0;
    }
    

    Line(GPoint p1, GPoint p2) {
        this.initFieldsLine();
        this.p1 = PointFactory.getInstance().ZERO_ZERO;
        this.p2 = this.p1;
        this.setP1(p1);
        this.setP2(p2);
    }
    

    double getGradient() {
        return this.getDeltaY() / this.getDeltaX();
    }
    

    void update() {
        this.deltaX = (this.getP1().getX()).toDouble() - (this.getP2().getX()).toDouble();
        this.deltaY = (this.getP1().getY()).toDouble() - (this.getP2().getY()).toDouble();
    }
    

    double getDeltaX() {
        return this.deltaX;
    }
    

    double getDeltaY() {
        return this.deltaY;
    }
    

    GPoint getP1() {
        return this.p1;
    }
    

    GPoint getP2() {
        return this.p2;
    }
    

    void setP1(GPoint p1) {
        this.p1 = p1;
        this.update();
    }
    

    void setP2(GPoint p2) {
        this.p2 = p2;
        this.update();
    }
}

