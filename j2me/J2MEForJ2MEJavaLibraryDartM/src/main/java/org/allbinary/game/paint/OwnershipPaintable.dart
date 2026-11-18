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
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/Anchor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';

//J2MEForJ2ME
class OwnershipPaintable extends Paintable implements UpdateMyFontInterface {
    late LogUtil logUtil;
    late DisplayInfoSingleton displayInfo;
    late MyFontProcessor myFontProcessor;
    late String COPYRIGHT;
    late BasicColor basicColor;
    int color = 0;
    int anchor = 0;
    int COPYRIGHT_Y = 0;
    int beginWidth = 0;

    // Java field initializers run after the base constructor
    void initFieldsOwnershipPaintable() {
    this.logUtil = LogUtil.getInstance();
    this.displayInfo = DisplayInfoSingleton.getInstance();
    this.myFontProcessor = UpdateMyFontProcessor(this);
    this.COPYRIGHT = "AllBinary Copyright (c) 2011";
    this.basicColor = BasicColorFactory.getInstance().WHITE;
    this.color = this.basicColor.intValue();
    this.anchor = Anchor.TOP_LEFT;
    this.COPYRIGHT_Y = 0;
    this.beginWidth = 0;
    }
    

    static OwnershipPaintable getInstance() {
        return OwnershipPaintable();
    }
    

    OwnershipPaintable() {
        this.initFieldsOwnershipPaintable();
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        this.COPYRIGHT_Y = 2 * font.getHeight();
        this.beginWidth = (font.stringWidth(this.COPYRIGHT) >> 1);
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    @override
    void setBasicColorP(BasicColor basicColor) {
        this.basicColor = basicColor;
        this.color = basicColor.intValue();
    }
    

    BasicColor getBasicColorP() {
        return this.basicColor;
    }
    

    @override
    void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        graphics.setColor(this.color);
        final int halfWidth = this.displayInfo.getLastHalfWidth();
        final int height = this.displayInfo.getLastHeight();
        graphics.drawString(this.COPYRIGHT, halfWidth - this.beginWidth, height - this.COPYRIGHT_Y, this.anchor);
    }
}

