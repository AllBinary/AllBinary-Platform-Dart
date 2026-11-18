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
// package org.allbinary.graphics.paint

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/Anchor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';

class SimpleTextPaintable extends Paintable implements UpdateMyFontInterface {
    late DisplayInfoSingleton displayInfoSingleton;
    late MyFontProcessor updateMyFontProcessor;
    late MyFontProcessor myFontProcessor;
    late String text;
    late BasicColor basicColor;
    int topScoresWidth = 0;
    int fontHeight = 0;
    int anchor = 0;

    // Java field initializers run after the base constructor
    void initFieldsSimpleTextPaintable() {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.updateMyFontProcessor = UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    
    
    this.topScoresWidth = 0;
    this.fontHeight = 0;
    this.anchor = Anchor.TOP_LEFT;
    }
    

    SimpleTextPaintable(String text, BasicColor basicColor) {
        this.initFieldsSimpleTextPaintable();
        this.text = text;
        this.basicColor = basicColor;
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        this.topScoresWidth = (font.stringWidth(this.text) >> 1);
        this.fontHeight = font.getHeight();
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    @override
    void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        final int width = this.displayInfoSingleton.getLast()[this.displayInfoSingleton.WIDTH];
        graphics.setColor(this.getBasicColorP().intValue());
        graphics.drawString(this.text, (width >> 1) - this.topScoresWidth, this.fontHeight, this.anchor);
    }
    

    @override
    void setBasicColorP(BasicColor basicColor) {
        this.basicColor = basicColor;
    }
    

    BasicColor getBasicColorP() {
        return this.basicColor;
    }
    

    void setText(String text) {
        this.text = text;
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    String getText() {
        return this.text;
    }
}

