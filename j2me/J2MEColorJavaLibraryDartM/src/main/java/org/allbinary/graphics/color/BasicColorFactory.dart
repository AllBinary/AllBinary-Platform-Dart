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
// ignore_for_file: unused_import, unused_local_variable, unnecessary_null_comparison
// package org.allbinary.graphics.color

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorUtil.dart';

class BasicColorFactory {
    static final BasicColorFactory instance = BasicColorFactory();
    late BasicColor NULL_COLOR;
    late BasicColor TAN;
    late BasicColor SKIN_PINK;
    late BasicColor RED;
    late BasicColor LIGHT_RED;
    late BasicColor DARK_GREEN;
    late BasicColor GREEN;
    late BasicColor LIGHT_GREEN;
    late BasicColor PURPLE;
    late BasicColor BLUE;
    late BasicColor LIGHT_BLUE;
    late BasicColor VERY_LIGHT_BLUE;
    late BasicColor PUCE;
    late BasicColor AQUA;
    late BasicColor YELLOW;
    late BasicColor PINK;
    late BasicColor BLACK;
    late BasicColor GREY;
    late BasicColor LIGHT_GREY;
    late BasicColor DARK_GREY;
    late BasicColor ORANGE;
    late BasicColor BROWN;
    late BasicColor WHITE;
    late BasicColor TRANSPARENT_COLOR;
    late BasicColor TRANSPARENT_GREY;
    late BasicColor TRANSPARENT_BLACK;
    late BasicColor TRANSPARENT_RED;
    late BasicColor CLEAR_COLOR;
    late BasicColor BORDER_COLOR;

    // Java field initializers run after the base constructor
    void initFieldsBasicColorFactory() {
    this.NULL_COLOR = this.createInstanceARGB(255, 255, 255, 255, "null color");
    this.TAN = this.createInstance(0xE9D8B5);
    this.SKIN_PINK = this.createInstance(0xFDCECE);
    this.RED = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xFF0000, "red");
    this.LIGHT_RED = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xFFA0A0, "light red");
    this.DARK_GREEN = this.createInstance(0x00FF00);
    this.GREEN = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x00DD00, "green");
    this.LIGHT_GREEN = this.createInstance(0x007700);
    this.PURPLE = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x400040, "purple");
    this.BLUE = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x0000FF, "blue");
    this.LIGHT_BLUE = this.createInstance(0x00aaff);
    this.VERY_LIGHT_BLUE = this.createInstance(0x000033);
    this.PUCE = this.createInstance(0xFF00AA);
    this.AQUA = this.createInstance(0x00FFFF);
    this.YELLOW = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xFFFF00, "yellow");
    this.PINK = this.createInstance(0xFF00FF);
    this.BLACK = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0x000000, "black");
    this.GREY = this.createInstanceAN(BasicColorUtil.getInstance().ALPHA, 0xAAAAAA, "grey");
    this.LIGHT_GREY = this.createInstance(0xC0C0C0);
    this.DARK_GREY = this.createInstance(0x404040);
    this.ORANGE = this.createInstance(0xe07718);
    this.BROWN = this.createInstance(0x956B00);
    this.WHITE = this.createInstance(0xFFFFFF);
    this.TRANSPARENT_COLOR = this.createInstanceAN(0x00000000, 0x000000, StringUtil.getInstance().EMPTY_STRING);
    this.TRANSPARENT_GREY = this.createInstanceAN(0x52000000, 0xECECEC, StringUtil.getInstance().EMPTY_STRING);
    this.TRANSPARENT_BLACK = this.createInstanceAN(0x52000000, 0x000000, StringUtil.getInstance().EMPTY_STRING);
    this.TRANSPARENT_RED = this.createInstanceAN(0x52000000, 0xFF0000, StringUtil.getInstance().EMPTY_STRING);
    this.CLEAR_COLOR = this.BLACK;
    this.BORDER_COLOR = this.WHITE;
    }

    BasicColorFactory() {
        this.initFieldsBasicColorFactory();
    }
    

    static BasicColorFactory getInstance() {
        return BasicColorFactory.instance;
    }
    

    BasicColor createInstance(int value) {
        return BasicColor(BasicColorUtil.getInstance().ALPHA, value, StringUtil.getInstance().EMPTY_STRING);
    }
    

    BasicColor createInstanceA(int alphaValue, int value) {
        return BasicColor(alphaValue, value, StringUtil.getInstance().EMPTY_STRING);
    }
    

    BasicColor createInstanceAN(int alphaValue, int value, String name) {
        return BasicColor(alphaValue, value, name);
    }
    

    BasicColor createInstanceARGB(int alphaValue, int r, int g, int b, String name) {
        final int ALPHA_MASK = 0xFF000000;
        return BasicColor(alphaValue, ((alphaValue << 24) & ALPHA_MASK) + ((r << 16) & 0x00FF0000) + ((g << 8) & 0x0000FF00) + (b & 0x000000FF), StringUtil.getInstance().EMPTY_STRING);
    }
}

