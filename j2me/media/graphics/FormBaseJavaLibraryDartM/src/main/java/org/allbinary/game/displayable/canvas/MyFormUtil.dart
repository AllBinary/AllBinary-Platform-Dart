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
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/graphics/RectangleFactory.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLFeatureFactory.dart';
import 'package:allbinary/org/allbinary/graphics/threed/SWTJOGLProcessor.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class MyFormUtil {
    static final MyFormUtil instance = MyFormUtil();
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late Rectangle popupMenuRectangle;

    // Java field initializers run after the base constructor
    void initFieldsMyFormUtil() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.popupMenuRectangle = RectangleFactory.SINGLETON;
    }

    MyFormUtil() {
        this.initFieldsMyFormUtil();
    }
    

    static MyFormUtil getInstance() {
        return MyFormUtil.instance;
    }
    

    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        final DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        final Features features = Features.getInstance();
        final bool isOpenGL = features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL);
        final int TOTAL_CHAR_WIDTH = (SWTJOGLProcessor.getInstance().isJOGL() && isOpenGL ? 2 : 3);
        final int width = MyFontProcessor.defaultStringWidth(font, TOTAL_CHAR_WIDTH);
        final PointFactory pointFactory = PointFactory.getInstance();
        if (displayInfo.getLastHeight() < 320) {
            this.popupMenuRectangle = Rectangle(pointFactory.createXY(0, 25), width, (font.getHeight() * 4) + 2);
        } else {
            this.popupMenuRectangle = Rectangle(pointFactory.createXY(0, displayInfo.getLastHalfHeight() - 70), width, (font.getHeight() * 5));
        }
    }
    

    Rectangle getPopupMenuRectangle() {
        return this.popupMenuRectangle;
    }
}

