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
// package org.allbinary.game.paint

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/ColorCompositeInterface.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';

class ColorFillBasePaintable extends Paintable implements ColorCompositeInterface {
    late BasicColor basicColor;
    int colorP = 0;

    // Java field initializers run after the base constructor
    void initFieldsColorFillBasePaintable() {
    this.basicColor = BasicColorFactory.getInstance().WHITE;
    this.colorP = 0;
    }
    

    ColorFillBasePaintable(BasicColor basicColor) {
        this.initFieldsColorFillBasePaintable();
        this.setBasicColorP(basicColor);
    }
    

    @override
    void setBasicColorP(BasicColor basicColor) {
        this.basicColor = basicColor;
        this.setColor(this.getBasicColorP().intValue());
    }
    

    @override
    BasicColor getBasicColorP() {
        return this.basicColor;
    }
    

    int getColor() {
        return this.colorP;
    }
    

    void setColor(int color) {
        this.colorP = color;
    }
    

    @override
    void paint(Graphics graphics) {
    }
}

