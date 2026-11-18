/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/game/input/event/RawKeyEventListener.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/CustomTextBox.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/animation/text/TextInterface.dart';
import 'package:allbinary/org/allbinary/animation/text/TextChangeListener.dart';

class CustomTextBoxIndexedAnimation extends IndexedAnimation implements RawKeyEventListener, UpdateMyFontInterface, TextInterface {
    late CustomTextBox customTextBox;
    late String lastText;
    bool hasChanged = false;
    late TextChangeListener textChangeListener;

    // Java field initializers run after the base constructor
    void initFieldsCustomTextBoxIndexedAnimation() {
    
    this.lastText = StringUtil.getInstance().INIT_STRING;
    this.hasChanged = true;
    this.textChangeListener = TextChangeListener.getInstance();
    }
    

    CustomTextBoxIndexedAnimation(CustomTextBox customTextBox) : super(AnimationBehavior.getInstance()) {
        this.initFieldsCustomTextBoxIndexedAnimation();
        
        this.customTextBox = customTextBox;
    }
    

    @override
    void setBasicColorP(BasicColor basicColor) {
        this.customTextBox.getTextFieldItem().setForegroundBasicColorP(basicColor);
    }
    

    @override
    void setBackgroundBasicColorP(BasicColor basicColor) {
        this.customTextBox.getTextFieldItem().setBackgroundBasicColorP(basicColor);
    }
    

    @override
    void setTextWithOnMeasure(String text, TextChangeListener textChangeListener) {
        this.setText(text);
        this.textChangeListener = textChangeListener;
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        this.textChangeListener.onMeasure();
        this.textChangeListener = TextChangeListener.getInstance();
    }
    

    @override
    void setText(String text) {
        if (this.lastText != text) {
            this.hasChanged = true;
            this.lastText = text;
            this.customTextBox.getTextFieldItem().setString(text);
        }
    }
    

    @override
    String getText() {
        return this.customTextBox.getTextFieldItem().getString();
    }
    

    @override
    void onEventRaw(int keyCode, int deviceId, bool repeated) {
        this.customTextBox.onEventRaw(keyCode, deviceId, repeated);
    }
    

    @override
    int getFontHeight() {
        return this.customTextBox.getTextFieldItem().getFontHeight();
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        this.customTextBox.paintXY(graphics, x, y);
    }
    

    @override
    void paintThreedXYZ(Graphics graphics, int x, int y, int z) {
    }
    

    @override
    int getWidth() {
        return super.getWidth();
    }
}

