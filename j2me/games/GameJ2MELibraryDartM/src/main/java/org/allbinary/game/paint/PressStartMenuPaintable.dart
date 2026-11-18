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
import 'package:allbinary/org/allbinary/AppletUtil.dart';
import 'package:allbinary/org/allbinary/graphics/Anchor.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchScreenFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';

class PressStartMenuPaintable extends Paintable implements UpdateMyFontInterface {
    late DisplayInfoSingleton displayInfo;
    late String PRESS_START;
    late String KEY_START;
    late String MENU_START;
    late MyFontProcessor myFontProcessor;
    late String startString;
    late TimeDelayHelper timeDelayHelper;
    bool flash = false;
    int anchor = 0;
    int beginWidth = 0;
    int line = 0;

    // Java field initializers run after the base constructor
    void initFieldsPressStartMenuPaintable() {
    this.displayInfo = DisplayInfoSingleton.getInstance();
    this.PRESS_START = "Press Screen To Start";
    this.KEY_START = "Press or Click F2 To Begin";
    this.MENU_START = "Press Start From The Menu To Begin";
    this.myFontProcessor = UpdateMyFontProcessor(this);
    this.startString = StringUtil.getInstance().EMPTY_STRING;
    this.timeDelayHelper = TimeDelayHelper(1100);
    this.flash = false;
    this.anchor = Anchor.TOP_LEFT;
    this.beginWidth = 0;
    this.line = 0;
    }
    

    PressStartMenuPaintable() {
        this.initFieldsPressStartMenuPaintable();
        if (TouchScreenFactory.getInstance().isTouch()) {
            this.startString = this.PRESS_START;
        } else if (AppletUtil.isAppletLoader(this)) {
            this.startString = this.KEY_START;
        } else {
            this.startString = this.MENU_START;
        }
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        this.beginWidth = (graphics.getFont().stringWidth(this.startString) >> 1);
        this.line = (4 * MyFontProcessor.defaultCharWidth(font)) + (font.getHeight() >> 1);
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    @override
    void paint(Graphics graphics) {
        if (this.timeDelayHelper.isTimeTNT()) {
            if (this.isFlash()) {
                this.setFlash(false);
            } else {
                this.setFlash(true);
            }
        }
        if (this.isFlash()) {
            this.myFontProcessor.process(graphics);
            graphics.drawString(this.startString, this.displayInfo.getLastHalfWidth() - this.beginWidth, this.displayInfo.getLastHeight() - this.line, this.anchor);
        }
    }
    

    void setFlash(bool flash) {
        this.flash = flash;
    }
    

    bool isFlash() {
        return this.flash;
    }
}

