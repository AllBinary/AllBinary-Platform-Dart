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
// package org.allbinary.graphics.draw

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/AndroidUtil.dart';
import 'package:allbinary/org/allbinary/J2MEUtil.dart';
import 'package:allbinary/org/allbinary/graphics/Anchor.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLFeatureUtil.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';

class DrawVerticalStringUtil {
    static final DrawVerticalStringUtil instance = DrawVerticalStringUtil();
    late String EMPTY_STRING;
    int anchor = 0;
    int charHeight = 0;
    int offsetY = 0;
    late List<int> offsetXArray;

    // Java field initializers run after the base constructor
    void initFieldsDrawVerticalStringUtil() {
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
    this.anchor = Anchor.TOP_LEFT;
    this.charHeight = 0;
    this.offsetY = 0;
    this.offsetXArray = NullUtil.getInstance().NULL_INT_ARRAY;
    }

    DrawVerticalStringUtil() {
        this.initFieldsDrawVerticalStringUtil();
    }
    

    static DrawVerticalStringUtil getInstance() {
        return DrawVerticalStringUtil.instance;
    }
    

    void updateMeasurement(Graphics graphics, String string) {
        final OpenGLFeatureUtil openGLFeatureUtil = OpenGLFeatureUtil.getInstance();
        final Font font = graphics.getFont();
        this.charHeight = font.getHeight();
        this.offsetY = 0;
        if (J2MEUtil.isHTML()) {
            this.charHeight += 1;
        } else if (openGLFeatureUtil.isAnyThreed()) {
            this.charHeight += 2;
            if (AndroidUtil.isAndroid()) {
            } else {
                this.offsetY = 2 + (this.charHeight * 2 ~/ 3);
            }
        }
        final int size = string.length;
        int aChar = 0;
        List<int> offsetXArray = List<int>.filled(size, 0);
        for (int index = size - 1; index >= 0; index--) {
            aChar = string.codeUnitAt(index);
            if (openGLFeatureUtil.isAnyThreed()) {
                offsetXArray[index] = font.charWidth(aChar) ~/ 2;
            }
        }
        this.offsetXArray = offsetXArray;
    }
    

    void paintVerticle(Graphics graphics, String string, int x, int y, int anchor) {
        final int size = string.length;
        int aChar = 0;
        for (int index = size - 1; index >= 0; index--) {
            aChar = string.codeUnitAt(index);
            graphics.drawChar(aChar, x + this.offsetXArray[index], y + (this.charHeight * index) + this.offsetY, anchor);
        }
    }
    

    void drawCenterString(Graphics graphics, String string, int offset, int length, int x, int y) {
        final int width = (graphics.getFont().substringWidth(string, offset, length) >> 1);
        try {
            graphics.drawSubstring(string, offset, length, x - width, y, this.anchor);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            PreLogUtil.put(StringMaker().append("Exception: stringLength: ").appendint(string.length).append(" offset: ").appendint(offset).append(" currentLength: ").appendint(length).toString(), this, "drawCenterString");
            }
        }
    }
    

    void drawCenterStrings(Graphics graphics, List<String?> stringArray, int maxWidth, int x, int y) {
        int extraLines = 0;
        for (int index = 0; index < stringArray.length; index++) {
            String string = stringArray[index]!;
            if (string != this.EMPTY_STRING) {
                int width = graphics.getFont().stringWidth(string);
                int minTotalLines = 1;
                if (width > maxWidth) {
                    minTotalLines = (width ~/ maxWidth) + 1;
                }
                int linePortion = string.length ~/ minTotalLines;
                int offset = 0;
                int currentLength = linePortion;
                int size = string.length;
                while (offset < size) {
                    if (offset + currentLength > size) {
                        currentLength = size - offset;
                    }
                    if (offset + currentLength != size) {
                        while (currentLength > 0 && stringArray[index]!.codeUnitAt(offset + currentLength) != " ".codeUnitAt(0)) {
                            currentLength--;
                        }
                        if (currentLength <= 4) {
                            currentLength = linePortion;
                        }
                    }
                    this.drawCenterString(graphics, string, offset, currentLength, x, y + ((index + extraLines++) * this.charHeight));
                    offset = offset + currentLength;
                    currentLength = linePortion;
                }
                extraLines--;
            }
        }
    }
}

