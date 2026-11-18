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
// package org.allbinary.graphics.color

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';

class BasicColorUtil {
    static final BasicColorUtil instance = BasicColorUtil();
    late List<BasicColor?> ZERO_ARRAY;
    int ALPHA = 0;
    bool isAlpha = false;
    bool ffOpaque = false;

    // Java field initializers run after the base constructor
    void initFieldsBasicColorUtil() {
    this.ZERO_ARRAY = List<BasicColor?>.filled(0, null);
    this.ALPHA = 0xFF000000;
    this.isAlpha = true;
    this.ffOpaque = true;
    }

    BasicColorUtil() {
        this.initFieldsBasicColorUtil();
    }
    

    static BasicColorUtil getInstance() {
        return BasicColorUtil.instance;
    }
    

    int getRGB(int red, int green, int blue) {
        int value = 0;
        if (this.isAlpha) {
            if (this.ffOpaque) {
                value = this.ALPHA;
            }
        }
        value = (red << 16) | value;
        value = (green << 8) | value;
        value = blue | value;
        return value;
    }
    

    int getARGB(int alphaValue, int r, int g, int b) {
        return ((alphaValue << 24) & this.ALPHA) + ((r << 16) & 0x00FF0000) + ((g << 8) & 0x0000FF00) + (b & 0x000000FF);
    }
    

    int get(int alphaValue, int color) {
        return ((alphaValue << 24) & this.ALPHA) + color;
    }
    

    int invert(int color) {
        return (0xFFFFFF - color) | this.ALPHA;
    }
}

