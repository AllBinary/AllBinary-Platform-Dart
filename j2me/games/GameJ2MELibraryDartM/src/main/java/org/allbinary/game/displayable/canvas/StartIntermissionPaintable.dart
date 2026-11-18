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
import 'package:allbinary/org/allbinary/graphics/Anchor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorSetUtil.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/graphics/font/FontDebugFactory.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/paint/InitUpdatePaintable.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.dart';

class StartIntermissionPaintable extends InitUpdatePaintable implements UpdateMyFontInterface {
    late FontDebugFactory fontDebugFactory;
    late BasicColorSetUtil basicSetColorUtil;
    late AllBinaryGameCanvas gameCanvas;
    late List<String?> stringArray;
    int fontSize = 0;
    late Font font;
    late List<int> lastWidth;
    late MyFontProcessor updateMyFontProcessor;
    late MyFontProcessor myFontProcessor;
    late BasicColor basicColor;
    int color = 0;
    late List<int> lineYOffsetArray;
    bool hasChanged = false;
    int anchor = 0;
    int fontHeightP = 0;
    late String BEGIN_LEVEL;
    late String EMPTY_STRING;

    // Java field initializers run after the base constructor
    void initFieldsStartIntermissionPaintable() {
    this.fontDebugFactory = FontDebugFactory.getInstance();
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    
    
    
    
    
    this.updateMyFontProcessor = UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.basicColor = BasicColorFactory.getInstance().BLACK;
    
    this.lineYOffsetArray = NullUtil.getInstance().NULL_INT_ARRAY;
    this.hasChanged = true;
    this.anchor = Anchor.TOP_LEFT;
    this.fontHeightP = 0;
    this.BEGIN_LEVEL = "Begin Level ";
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
    }
    

    StartIntermissionPaintable(AllBinaryGameCanvas gameCanvas, List<String?> stringArray, BasicColor basicColor, Font font) {
        this.initFieldsStartIntermissionPaintable();
        this.gameCanvas = gameCanvas;
        this.stringArray = stringArray;
        this.lastWidth = List<int>.filled(this.stringArray.length, 0);
        this.setBasicColorP(basicColor);
        this.color = basicColor.intValue();
        this.fontSize = font.getSize();
        this.font = font;
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        this.fontHeightP = font.getHeight();
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    @override
    void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        final Font existingFont = graphics.getFont();
        this.fontDebugFactory.setFont(this.font, graphics);
        final DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        this.basicSetColorUtil.setBasicColorP3(graphics, this.basicColor, this.color);
        int beginWidth = 0;
        for (int index = this.lineYOffsetArray.length - 1; index >= 0; index--) {
            if (this.hasChanged) {
                this.lastWidth[index] = (graphics.getFont().stringWidth(this.stringArray[index]!) >> 1);
            }
            beginWidth = this.lastWidth[index];
            graphics.drawString(this.stringArray[index]!, displayInfo.getLastHalfWidth() - beginWidth, displayInfo.getLastHalfHeight() - this.lineYOffsetArray[index], this.anchor);
        }
        this.hasChanged = false;
        this.fontDebugFactory.setFont(existingFont, graphics);
    }
    

    @override
    void update() {
        int level = this.gameCanvas.getLayerManager().getGameInfo().getCurrentLevel();
        this.stringArray[0] = StringMaker().append(this.BEGIN_LEVEL).appendint(level).toString();
        for (int index = this.stringArray.length - 1; index >= 1; index--) {
            this.stringArray[index] = this.EMPTY_STRING;
        }
    }
    

    @override
    void setBasicColorP(BasicColor basicColor) {
        this.basicColor = basicColor;
    }
    

    BasicColor getBasicColorP() {
        return this.basicColor;
    }
}

