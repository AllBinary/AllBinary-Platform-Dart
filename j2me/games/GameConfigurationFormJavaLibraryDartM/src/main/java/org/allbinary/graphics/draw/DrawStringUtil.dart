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
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/Anchor.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';

class DrawStringUtil {
    static final DrawStringUtil instance = DrawStringUtil();
    late String EMPTY_STRING;
    int anchor = 0;

    // Java field initializers run after the base constructor
    void initFieldsDrawStringUtil() {
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
    this.anchor = Anchor.TOP_LEFT;
    }

    DrawStringUtil() {
        this.initFieldsDrawStringUtil();
    }
    

    static DrawStringUtil getInstance() {
        return DrawStringUtil.instance;
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
    

    void drawCenterStrings(Graphics graphics, List<String?> stringArray, int maxWidth, int charHeight, int x, int y) {
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
                    this.drawCenterString(graphics, string, offset, currentLength, x, y + ((index + extraLines++) * charHeight));
                    offset = offset + currentLength;
                    currentLength = linePortion;
                }
                extraLines--;
            }
        }
    }
}

