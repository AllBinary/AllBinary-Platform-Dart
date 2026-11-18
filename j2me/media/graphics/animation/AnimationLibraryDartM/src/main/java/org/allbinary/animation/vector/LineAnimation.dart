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
import 'package:allbinary/org/allbinary/layer/PositionInterface.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';

class LineAnimation extends Animation implements ColorCompositeInterface, PositionInterface {
    late List<List<int>?> newLine;
    late List<List<int>?> tempLine;
    late List<List<int>?> line;

    // Java field initializers run after the base constructor
    void initFieldsLineAnimation() {
    this.newLine = List<List<int>>.generate(2, (_) => List<int>.filled(2, 0));
    this.tempLine = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY;
    this.line = List<List<int>>.generate(2, (_) => List<int>.filled(2, 0));
    }
    

    LineAnimation(BasicColor basicColor) {
        this.initFieldsLineAnimation();
        this.setBasicColorP(basicColor);
    }
    

    void init(int x, int y) {
        this.newLine[0]![0] = x;
        this.newLine[0]![1] = y;
        this.newLine[1]![0] = x;
        this.newLine[1]![1] = y;
        this.tempLine = this.line;
        this.line = this.newLine;
        this.newLine = this.tempLine;
    }
    

    @override
    void setPosition(int x, int y, int z) {
        this.newLine[0]![0] = this.line[1]![0];
        this.newLine[0]![1] = this.line[1]![1];
        this.newLine[1]![0] = x;
        this.newLine[1]![1] = y;
        this.tempLine = this.line;
        this.line = this.newLine;
        this.newLine = this.tempLine;
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        final List<List<int>?> currentLine = this.line;
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        graphics.drawLine(currentLine[0]![0], currentLine[0]![1], currentLine[1]![0], currentLine[1]![1]);
    }
    

    @override
    void nextFrame() {
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

