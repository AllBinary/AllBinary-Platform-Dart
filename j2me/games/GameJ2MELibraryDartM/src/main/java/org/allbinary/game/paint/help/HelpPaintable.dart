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
// package org.allbinary.game.paint.help

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
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';

class HelpPaintable extends Paintable implements UpdateMyFontInterface {
    late DisplayInfoSingleton displayInfo;
    late MyFontProcessor updateMyFontProcessor;
    late MyFontProcessor myFontProcessor;
    int anchor = 0;
    late String title;
    late List<String?> inputInfo;
    late BasicColor basicColor;
    int titleBeginWidth = 0;
    late List<int> beginWidthArray;
    int charHeight = 0;

    // Java field initializers run after the base constructor
    void initFieldsHelpPaintable() {
    this.displayInfo = DisplayInfoSingleton.getInstance();
    this.updateMyFontProcessor = UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.anchor = Anchor.TOP_LEFT;
    
    this.inputInfo = StringUtil.getInstance().getArrayInstance();
    
    this.titleBeginWidth = 0;
    this.beginWidthArray = NullUtil.getInstance().NULL_INT_ARRAY;
    this.charHeight = 0;
    }
    

    HelpPaintable(String title, BasicColor backgroundBasicColor, BasicColor basicColor) {
        this.initFieldsHelpPaintable();
        this.title = title;
        this.basicColor = basicColor;
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        this.titleBeginWidth = (font.stringWidth(this.title) >> 1);
        this.charHeight = font.getHeight();
        final int size = this.inputInfo.length;
        for (int index = 0; index < size; index++) {
            this.beginWidthArray[index] = (font.stringWidth(this.inputInfo[index]!) >> 1);
        }
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    void setInputInfoP(List<String?> inputInfo) {
        this.inputInfo = inputInfo;
        this.beginWidthArray = List<int>.filled(this.inputInfo.length, 0);
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    @override
    void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        final int halfWidth = this.displayInfo.getLastHalfWidth();
        graphics.setColor(this.basicColor.intValue());
        graphics.drawString(this.title, halfWidth - this.titleBeginWidth, this.charHeight, this.anchor);
        final int size = this.inputInfo.length;
        for (int index = 0; index < size; index++) {
            graphics.drawString(this.inputInfo[index]!, halfWidth - this.beginWidthArray[index], (index + 3) * this.charHeight, this.anchor);
        }
    }
}

