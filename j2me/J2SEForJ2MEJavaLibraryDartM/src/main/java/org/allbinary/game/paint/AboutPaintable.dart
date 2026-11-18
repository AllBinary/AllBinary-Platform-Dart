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
import 'package:allbinary/org/allbinary/graphics/displayable/CanvasStrings.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';

//J2SEForJ2ME
class AboutPaintable extends Paintable implements UpdateMyFontInterface {
    late DisplayInfoSingleton displayInfoSingleton;
    late String ABOUT;
    late List<String?> info;
    late List<String?> developers;
    late List<Paintable?> paintableArray;
    late MyFontProcessor myFontProcessor;
    int charHeight = 0;
    int aboutBeginWidth = 0;
    late List<int> infoBeginWidth;
    late List<int> developersBeginWidth;
    int anchor = 0;

    // Java field initializers run after the base constructor
    void initFieldsAboutPaintable() {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.ABOUT = CanvasStrings.getInstance().ABOUT;
    
    
    this.paintableArray = <Paintable?>[this];
    this.myFontProcessor = UpdateMyFontProcessor(this);
    this.charHeight = 0;
    this.aboutBeginWidth = 0;
    
    
    this.anchor = Anchor.TOP_LEFT;
    }
    

    static AboutPaintable getInstance2(List<String?> info, List<String?> developers) {
        return AboutPaintable(info, developers);
    }
    

    AboutPaintable(List<String?> info, List<String?> developers) {
        this.initFieldsAboutPaintable();
        this.info = info;
        this.infoBeginWidth = List<int>.filled(this.info.length, 0);
        this.developers = developers;
        this.developersBeginWidth = List<int>.filled(this.developers.length, 0);
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        this.charHeight = font.getHeight();
        this.aboutBeginWidth = (font.stringWidth(this.ABOUT) >> 1);
        final int infoSize = this.info.length;
        for (int index = 0; index < infoSize; index++) {
            this.infoBeginWidth[index] = (font.stringWidth(this.info[index]!) >> 1);
        }
        final int size = this.developers.length;
        for (int index = 0; index < size; index++) {
            this.developersBeginWidth[index] = (font.stringWidth(this.developers[index]!) >> 1);
        }
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    List<Paintable?> getPaintableArrayInstance() {
        return this.paintableArray;
    }
    

    @override
    void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        final int halfWidth = this.displayInfoSingleton.getLastHalfWidth();
        graphics.drawString(this.ABOUT, halfWidth - this.aboutBeginWidth, 2 * this.charHeight, this.anchor);
        final int infoSize = this.info.length;
        for (int index = 0; index < infoSize; index++) {
            graphics.drawString(this.info[index]!, halfWidth - this.infoBeginWidth[index], (4 + index) * this.charHeight, this.anchor);
        }
        final int size = this.developers.length;
        for (int index = 0; index < size; index++) {
            graphics.drawString(this.developers[index]!, halfWidth - this.developersBeginWidth[index], (5 + infoSize + index) * this.charHeight, this.anchor);
        }
    }
}

