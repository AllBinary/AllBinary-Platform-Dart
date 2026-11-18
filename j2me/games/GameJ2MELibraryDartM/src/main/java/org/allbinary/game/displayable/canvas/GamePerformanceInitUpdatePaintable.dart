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
// package org.allbinary.game.displayable.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/canvas/GameStatisticsFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/paint/InitUpdatePaintable.dart';

class GamePerformanceInitUpdatePaintable extends InitUpdatePaintable implements UpdateMyFontInterface {
    int halfHeight = 0;
    late List<int> yArray;
    late MyFontProcessor myFontProcessor;
    late List<List<int>?> baseRefreshHelperCharArray;
    int defaultStringWidth = 0;
    int RED = 0;

    // Java field initializers run after the base constructor
    void initFieldsGamePerformanceInitUpdatePaintable() {
    this.halfHeight = DisplayInfoSingleton.getInstance().getLastHalfHeight();
    this.yArray = <int>[this.halfHeight + 30, this.halfHeight + 30, this.halfHeight + 30 + 15, this.halfHeight + 30 + 15, this.halfHeight + 30 + 30, this.halfHeight + 30 + 30, this.halfHeight + 30 + 45, this.halfHeight + 30 + 45];
    this.myFontProcessor = UpdateMyFontProcessor(this);
    this.baseRefreshHelperCharArray = List<List<int>>.generate(0, (_) => List<int>.filled(0, 0));
    this.defaultStringWidth = 0;
    this.RED = BasicColorFactory.getInstance().RED.intValue();
    }

    GamePerformanceInitUpdatePaintable() {
        this.initFieldsGamePerformanceInitUpdatePaintable();
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        this.defaultStringWidth = MyFontProcessor.defaultStringWidth(font, 2);
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    @override
    void init() {
    }
    

    @override
    void update() {
        this.baseRefreshHelperCharArray = GameStatisticsFactory.getInstance().to2DCharArray();
    }
    

    @override
    void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        graphics.setColor(this.RED);
        late List<int> charArray;
        late List<int> charArray2;
        int size2 = 0;
        int size3 = 0;
        final int size = this.baseRefreshHelperCharArray.length - 2;
        for (int index = size; index >= 0; index -= 2) {
            charArray = this.baseRefreshHelperCharArray[index]!;
            charArray2 = this.baseRefreshHelperCharArray[index + 1]!;
            size2 = charArray.length;
            size3 = charArray2.length;
            graphics.drawChars(charArray, 0, size2, 0, this.yArray[index], 0);
            graphics.drawChars(charArray2, 0, size3, size2 * this.defaultStringWidth, this.yArray[index + 1], 0);
        }
    }
}

