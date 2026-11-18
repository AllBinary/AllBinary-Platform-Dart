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
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';

class SmallBasicColorCacheFactory {
    static final SmallBasicColorCacheFactory instance = SmallBasicColorCacheFactory();
    int SIZE = 0;
    late List<int> INDEX_TO_COLOR;
    late List<BasicColor?> BASIC_COLOR_ARRAY;
    int colorIndex = 0;

    // Java field initializers run after the base constructor
    void initFieldsSmallBasicColorCacheFactory() {
    this.SIZE = 255;
    this.INDEX_TO_COLOR = List<int>.filled(this.SIZE, 0);
    this.BASIC_COLOR_ARRAY = List<BasicColor?>.filled(this.SIZE, null);
    this.colorIndex = 0;
    }
    

    static SmallBasicColorCacheFactory getInstance() {
        return SmallBasicColorCacheFactory.instance;
    }
    

    SmallBasicColorCacheFactory() {
        this.initFieldsSmallBasicColorCacheFactory();
    }
    

    void add(BasicColor basicDefaultColor) {
        this.BASIC_COLOR_ARRAY[this.colorIndex] = basicDefaultColor;
        this.INDEX_TO_COLOR[this.colorIndex] = basicDefaultColor.intValue();
        this.colorIndex++;
    }
    

    BasicColor getAndOrCreate(int colorAsInt) {
        late BasicColor basicColor;
        for (int index = 0; index < this.SIZE; index++) {
            if (this.INDEX_TO_COLOR[index] == colorAsInt) {
                return this.BASIC_COLOR_ARRAY[index]!;
            }
        }
        final int ALPHA_MASK = 0xFF000000;
        basicColor = BasicColorFactory.getInstance().createInstanceAN(colorAsInt & ALPHA_MASK, colorAsInt & 0x00FFFFFF, StringUtil.getInstance().EMPTY_STRING);
        this.add(basicColor);
        return basicColor;
    }
}

