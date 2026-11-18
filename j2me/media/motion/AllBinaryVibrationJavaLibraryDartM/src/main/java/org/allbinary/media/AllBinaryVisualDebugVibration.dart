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
// package org.allbinary.media

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/Anchor.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontProcessor.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/media/AllBinaryVibrationME.dart';

class AllBinaryVisualDebugVibration extends AllBinaryVibrationME implements UpdateMyFontInterface {
    late DisplayInfoSingleton displayInfoSingleton;
    late TimeDelayHelper timeDelayHelper;
    late String VIBRATING;
    late MyFontProcessor myFontProcessor;
    int anchor = 0;
    int width = 0;

    // Java field initializers run after the base constructor
    void initFieldsAllBinaryVisualDebugVibration() {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.timeDelayHelper = TimeDelayHelper(Integer.MAX_VALUE);
    this.VIBRATING = "Vibrating";
    this.myFontProcessor = UpdateMyFontProcessor(this);
    this.anchor = Anchor.TOP_LEFT;
    this.width = 0;
    }

    AllBinaryVisualDebugVibration() {
        this.initFieldsAllBinaryVisualDebugVibration();
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        this.width = font.stringWidth(this.VIBRATING);
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    @override
    void vibrate(int duration, int type, int volume) {
        this.timeDelayHelper.delay = duration;
    }
    

    void paint(Graphics graphics) {
        if (this.timeDelayHelper.isTimeTNT()) {
            this.timeDelayHelper.delay = Integer.MAX_VALUE;
            this.myFontProcessor.process(graphics);
            graphics.drawString(this.VIBRATING, this.displayInfoSingleton.getLastHalfWidth() - (this.width >> 1), 0, this.anchor);
        }
    }
}

