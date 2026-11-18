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
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/graphics/Anchor.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/threed/SWTJOGLProcessor.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/animation/text/TextChangeListener.dart';

class TextAnimation extends IndexedAnimation implements UpdateMyFontInterface {
    late MyFontProcessor updateMyFontProcessor;
    late MyFontProcessor myFontProcessor;
    late List<String?> textArrayP;
    int anchor = 0;
    int fontHeight = 0;
    int offsetY = 0;
    late TextChangeListener textChangeListener;

    // Java field initializers run after the base constructor
    void initFieldsTextAnimation() {
    this.updateMyFontProcessor = UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.textArrayP = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY;
    this.anchor = Anchor.TOP_LEFT;
    this.fontHeight = 0;
    this.offsetY = 0;
    this.textChangeListener = TextChangeListener.getInstance();
    }
    

    TextAnimation(String text, AnimationBehavior animationBehavior) : super(animationBehavior) {
        this.initFieldsTextAnimation();
        
        this.setText(text);
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        this.fontHeight = font.getHeight();
        final int adjustedFontHeight = JMath.toInt32(-((this.fontHeight).toDouble() * 2.00));
        this.offsetY = (SWTJOGLProcessor.getInstance().isJOGL() ? adjustedFontHeight : 0);
        this.textChangeListener.onMeasure();
        this.textChangeListener = TextChangeListener.getInstance();
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    @override
    void nextFrame() {
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        this.myFontProcessor.process(graphics);
        this.paintXYNoUpdate(graphics, x, y);
    }
    

    void paintXYNoUpdate(Graphics graphics, int x, int y) {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        final int size = this.textArrayP.length;
        for (int index = 0; index < size; index++) {
            graphics.drawString(this.textArrayP[index]!, x, y + this.offsetY + (index * this.fontHeight), this.anchor);
        }
    }
    

    void setTextWithOnMeasure(String text, TextChangeListener textChangeListener) {
        this.setText(text);
        this.textChangeListener = textChangeListener;
    }
    

    void setText(String text) {
        final BasicArrayList list = BasicArrayListD();
        if (text.length > 0) {
            int index = 0;
            int startIndex = 0;
            int endIndex = 0;
            while (index >= 0) {
                startIndex = index;
                index = JString.indexOf(text, "\n".codeUnitAt(0), startIndex);
                endIndex = index;
                if (index < 0) {
                    endIndex = text.length;
                }
                list.add(text.substring(startIndex, endIndex));
                if (index < 0) {
                    break;
                }
                index++;
            }
        }
        if (list.size() > 0) {
            final List<String?> textArray = List<String?>.filled(list.size(), null);
            final int size = list.size();
            for (int index = 0; index < size; index++) {
                textArray[index] = (list.get(index) as String);
            }
            this.textArrayP = textArray;
        } else {
            this.textArrayP = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY;
        }
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    List<String?> getTextArray() {
        return this.textArrayP;
    }
    

    int getFontHeight() {
        return this.fontHeight;
    }
}

