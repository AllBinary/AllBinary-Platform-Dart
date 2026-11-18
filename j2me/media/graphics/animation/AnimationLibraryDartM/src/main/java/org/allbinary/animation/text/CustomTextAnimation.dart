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
// package org.allbinary.animation.text

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';
import 'package:allbinary/org/allbinary/graphics/font/FontDebugFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/animation/text/TextAnimation.dart';
import 'package:allbinary/org/allbinary/animation/text/TextInterface.dart';
import 'package:allbinary/org/allbinary/animation/text/TextChangeListener.dart';

class CustomTextAnimation extends TextAnimation implements TextInterface {
    late FontDebugFactory fontDebugFactory;
    int fontSize = 0;
    late Font font;
    late String lastText;
    bool hasChanged = false;
    int textWidth = 0;

    // Java field initializers run after the base constructor
    void initFieldsCustomTextAnimation() {
    this.fontDebugFactory = FontDebugFactory.getInstance();
    
    
    this.lastText = StringUtil.getInstance().INIT_STRING;
    this.hasChanged = true;
    this.textWidth = 0;
    }
    

    CustomTextAnimation(String text, int fontSize, AnimationBehavior animationBehavior) : super(text, animationBehavior) {
        this.initFieldsCustomTextAnimation();
        
        this.fontSize = fontSize;
        this.font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, fontSize);
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        this.myFontProcessor.process(graphics);
        final Font existingFont = graphics.getFont();
        this.fontDebugFactory.setFont(this.font, graphics);
        super.paintXYNoUpdate(graphics, x, y);
        this.fontDebugFactory.setFont(existingFont, graphics);
    }
    

    @override
    void setScale(double scaleX, double scaleY) {
        if (scaleX != scaleY) {
            throw JException('RuntimeException', '');
        }
        this.hasChanged = true;
        this.font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, JMath.toInt32(((this.fontSize).toDouble() * scaleX)));
    }
    

    @override
    void setTextWithOnMeasure(String text, TextChangeListener textChangeListener) {
        super.setTextWithOnMeasure(text, textChangeListener);
    }
    

    @override
    void setText(String text) {
        if (this.lastText != text) {
            this.hasChanged = true;
            this.lastText = text;
            super.setText(text);
        }
    }
    

    @override
    String getText() {
        return this.lastText;
    }
    

    @override
    int getWidth() {
        if (this.hasChanged) {
            this.textWidth = this.font.stringWidth(this.textArrayP[0]!);
            this.hasChanged = false;
        }
        return this.textWidth;
    }
    

    @override
    int getFontHeight() {
        return this.font.getHeight();
    }
}

