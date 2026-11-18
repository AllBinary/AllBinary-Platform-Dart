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
import 'package:allbinary/org/allbinary/AndroidUtil.dart';
import 'package:allbinary/org/allbinary/J2MEUtil.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/NullAnimationFactory.dart';
import 'package:allbinary/org/allbinary/animation/vector/RectangleFilledAnimation.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/layer/SWTUtil.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorSetUtil.dart';
import 'package:allbinary/org/allbinary/graphics/draw/DrawVerticalStringUtil.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLFeatureFactory.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLFeatureUtil.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';
import 'package:allbinary/org/allbinary/graphics/threed/SWTJOGLProcessor.dart';

class BasicPopupMenuPaintable extends Paintable implements UpdateMyFontInterface {
    static const String NAME = "MENU";
    late BasicColorSetUtil basicSetColorUtil;
    late DrawVerticalStringUtil drawStringUtil;
    late String label;
    late BasicColor foregroundBasicColor;
    late MyFontProcessor myFontProcessor;
    late Rectangle rectangle;
    int BORDER = 0;
    int heightOffset = 0;
    int offset = 0;
    late Animation animationInterface;

    // Java field initializers run after the base constructor
    void initFieldsBasicPopupMenuPaintable() {
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    this.drawStringUtil = DrawVerticalStringUtil.getInstance();
    
    
    this.myFontProcessor = UpdateMyFontProcessor(this);
    
    this.BORDER = 0;
    this.heightOffset = 0;
    this.offset = 0;
    
    }
    

    BasicPopupMenuPaintable(Rectangle rectangle, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
        this.initFieldsBasicPopupMenuPaintable();
        this.foregroundBasicColor = foregroundBasicColor;
        this.label = BasicPopupMenuPaintable.NAME;
        this.rectangle = rectangle;
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
            this.animationInterface = NullAnimationFactory.getFactoryInstance().getInstance1(0);
        } else {
            this.animationInterface = RectangleFilledAnimation(this.rectangle.getWidth(), this.rectangle.getHeight(), BasicColorFactory.getInstance().TRANSPARENT_GREY);
        }
        this.init(rectangle);
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        final Features features = Features.getInstance();
        final bool isOpenGL = features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL);
        this.drawStringUtil.updateMeasurement(graphics, this.label);
        int BORDER = 0;
        if (J2MEUtil.isHTML() || isOpenGL) {
            BORDER = MyFontProcessor.defaultCharWidth(font) ~/ 2;
        } else if (AndroidUtil.isAndroid() || J2MEUtil.isJ2SE() || SWTUtil.isSWT) {
            BORDER = MyFontProcessor.defaultCharWidth(font);
        } else {
            BORDER = MyFontProcessor.defaultCharWidth(font) * 2;
        }
        this.BORDER = BORDER;
        this.heightOffset = this.rectangle.getHeight() - (font.getHeight() * BasicPopupMenuPaintable.NAME.length);
        if (OpenGLFeatureUtil.getInstance().isAnyThreed()) {
            this.heightOffset -= font.getHeight() + 2;
            if (AndroidUtil.isAndroid()) {
                this.heightOffset = font.getHeight();
            } else {
                this.heightOffset -= font.getHeight() + 2;
            }
        }
        this.offset = (this.heightOffset >> 1) + ((SWTJOGLProcessor.getInstance().isJOGL() ? 4 : 0));
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    void init(Rectangle rectangle) {
        this.rectangle = rectangle;
        final int width = this.rectangle.getWidth();
        final int height = this.rectangle.getHeight();
        if (J2MEUtil.isJ2ME() || J2MEUtil.isHTML()) {
        } else {
            final RectangleFilledAnimation rectangleFilledAnimation = (this.animationInterface as RectangleFilledAnimation);
            rectangleFilledAnimation.setWidth(width);
            rectangleFilledAnimation.setHeight(height);
        }
    }
    

    @override
    void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        final GPoint point = this.rectangle.getPoint();
        final int x = point.getX();
        final int y = point.getY();
        final int width = this.rectangle.getWidth();
        final int height = this.rectangle.getHeight();
        this.animationInterface.paintXY(graphics, x, y);
        this.basicSetColorUtil.setBasicColorP(graphics, this.foregroundBasicColor);
        this.drawStringUtil.paintVerticle(graphics, this.label, x + this.BORDER, y + this.offset, 0);
        graphics.drawRect(x, y, width, height);
    }
}

