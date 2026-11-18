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
// package org.allbinary.graphics.draw

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/draw/DrawStringUtil.dart';

class CanvasDrawLineString implements UpdateMyFontInterface {
    static final CanvasDrawLineString NULL_CANVAS_DRAW_LINE_STRING = CanvasDrawLineString(0, 0);
    late DrawStringUtil drawStringUtil;
    late MyFontProcessor myFontProcessor;
    int x = 0;
    int y = 0;
    int fontHeight = 0;

    // Java field initializers run after the base constructor
    void initFieldsCanvasDrawLineString() {
    this.drawStringUtil = DrawStringUtil.getInstance();
    this.myFontProcessor = UpdateMyFontProcessor(this);
    
    
    this.fontHeight = 0;
    }
    

    CanvasDrawLineString(int x, int y) {
        this.initFieldsCanvasDrawLineString();
        this.x = x;
        this.y = y;
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        this.fontHeight = font.getHeight();
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    void paint(Graphics graphics, String string, int line) {
        this.myFontProcessor.process(graphics);
        this.drawStringUtil.drawCenterString(graphics, string, 0, string.length, this.x, this.y + (line * this.fontHeight));
    }
}

