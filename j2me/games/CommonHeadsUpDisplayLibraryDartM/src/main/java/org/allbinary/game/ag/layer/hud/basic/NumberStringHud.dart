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
// package org.allbinary.game.ag.layer.hud.basic

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/game/graphics/hud/BasicHud.dart';
import 'package:allbinary/org/allbinary/game/graphics/hud/BasicHudFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/paint/PaintableInterface.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveLongSingleton.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveLongUtil.dart';

class NumberStringHud extends BasicHud implements PaintableInterface {
    late PrimitiveLongUtil primitiveLongUtil;
    late String prependString;
    late List<int> PREPEND_STRING;
    int value = 0;
    int max = 0;
    int offset = 0;
    late List<int> valueString;
    int valueTotalDigits = 0;

    // Java field initializers run after the base constructor
    void initFieldsNumberStringHud() {
    
    
    
    
    
    this.offset = 0;
    
    this.valueTotalDigits = 0;
    }
    

    NumberStringHud(String prependString, int max, int location, int direction, int bufferZone, BasicColor basicColor) : super(location, direction, bufferZone, basicColor) {
        this.initFieldsNumberStringHud();
        
        this.prependString = prependString;
        this.PREPEND_STRING = JString.toCharArray(prependString);
        this.valueString = PrimitiveLongSingleton.getInstance().NUMBER_CHAR_ARRAYS[0]!;
        this.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(max + 1);
        this.max = max;
        this.value = 0;
        if (direction == 0) {
            throw JException('RuntimeException', BasicHudFactory.getInstance().DIRECTION_EXCEPTION);
        }
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        this.offset = font.stringWidth(this.prependString) + MyFontProcessor.defaultCharWidth(font);
        super.updateMeasurement(graphics);
    }
    

    int get() {
        return this.value;
    }
    

    void add(int value) {
        this.set(this.value + value);
    }
    

    void set(int value) {
        this.value = value;
        if (this.value > this.max) {
            this.value = 0;
        }
        this.valueString = this.primitiveLongUtil.getCharArray(this.value);
        this.valueTotalDigits = this.primitiveLongUtil.getCurrentTotalDigits();
    }
    

    void reduce(int value) {
        this.set(this.value - value);
    }
    

    @override
    void paint(Graphics graphics) {
        super.paintDX(graphics, this.PREPEND_STRING, 0, this.PREPEND_STRING.length, this.valueString, 0, this.valueTotalDigits, this.offset);
    }
    

    void paintXY(Graphics graphics, int x, int y) {
        this.myFontProcessor.process(graphics);
        List<int> charArray = this.PREPEND_STRING;
        int len = this.PREPEND_STRING.length;
        List<int> charArray2 = this.valueString;
        int len2 = this.valueTotalDigits;
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        graphics.drawChars(charArray, 0, len, x, y, 0);
        graphics.drawChars(charArray2, 0, len2, x - this.offset, y, 0);
    }
    

    @override
    void paintThreed(Graphics graphics) {
    }
}

