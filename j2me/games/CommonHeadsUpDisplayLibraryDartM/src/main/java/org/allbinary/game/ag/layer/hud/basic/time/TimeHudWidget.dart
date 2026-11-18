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
// package org.allbinary.game.ag.layer.hud.basic.time

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/game/graphics/hud/BasicHud.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveLongSingleton.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/hud/basic/time/HudTimer.dart';

class TimeHudWidget extends BasicHud {
    late String TIME_STRING;
    late List<int> TIME_CHAR_ARRAY;
    int offset = 0;
    late List<int> string;
    int totalDigits = 0;
    late HudTimer timer;

    // Java field initializers run after the base constructor
    void initFieldsTimeHudWidget() {
    this.TIME_STRING = "Time ";
    this.TIME_CHAR_ARRAY = <int>["T".codeUnitAt(0), "i".codeUnitAt(0), "m".codeUnitAt(0), "e".codeUnitAt(0), " ".codeUnitAt(0)];
    this.offset = 0;
    this.string = PrimitiveLongSingleton.getInstance().ZERO;
    this.totalDigits = 1;
    
    }
    

    static TimeHudWidget getInstance4(int location, int direction, BasicColor basicColor, HudTimer timer) {
        return TimeHudWidget(location, direction, 2, basicColor, timer);
    }
    

    TimeHudWidget(int location, int direction, int bufferZone, BasicColor basicColor, HudTimer timer) : super(location, direction, bufferZone, basicColor) {
        this.initFieldsTimeHudWidget();
        
        this.timer = timer;
        this.set();
        this.updateMaxHeight = 14;
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        this.updateMaxWidth = font.getSize() * 5;
        this.offset = font.stringWidth(this.TIME_STRING) + MyFontProcessor.defaultStringWidth(font, 3);
        super.updateMeasurement(graphics);
    }
    

    void update() {
        this.timer.update();
        this.set();
    }
    

    void set() {
        this.string = this.timer.getTimeChars();
        this.totalDigits = this.timer.getCurrentTotalDigits();
    }
    

    HudTimer getTimer() {
        return this.timer;
    }
    

    void paint(Graphics graphics) {
        super.paintDX(graphics, this.TIME_CHAR_ARRAY, 0, this.TIME_CHAR_ARRAY.length, this.string, 0, this.totalDigits, this.offset);
    }
}

