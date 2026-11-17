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
// package org.allbinary.logic.math

import 'package:allbinary/allbinary_java.dart';

class SmallLongFactory {
    static final SmallLongFactory instance = SmallLongFactory();
    int NEGATIVE_MAX = 0;
    int POSITIVE_MAX = 0;
    late List<int?> INTEGER_ARRAY;
    late List<String?> STRING_ARRAY;
    int MIN = 0;
    int lastMin = 0;
    int lastNegativeMin = 0;

    // Java field initializers run after the base constructor
    void initFieldsSmallLongFactory() {
    this.NEGATIVE_MAX = 500;
    this.POSITIVE_MAX = 0x2D1;
    this.INTEGER_ARRAY = List<int?>.filled(this.NEGATIVE_MAX + this.POSITIVE_MAX, null);
    this.STRING_ARRAY = List<String?>.filled(this.NEGATIVE_MAX + this.POSITIVE_MAX, null);
    this.MIN = 0;
    this.lastMin = 0;
    this.lastNegativeMin = 0;
    }
    

    static SmallLongFactory getInstance() {
        return SmallLongFactory.instance;
    }
    

    void initWithRange(int value, int negativeValue) {
        for (int index = value - 1; index >= this.lastMin; index--) {
            this.INTEGER_ARRAY[index + this.NEGATIVE_MAX] = index;
        }
        for (int index = negativeValue - 1; index >= this.lastNegativeMin; index--) {
            this.INTEGER_ARRAY[index] = -index;
        }
        if (this.lastMin < value) {
            this.lastMin = value;
            this.MIN = value;
        }
        if (this.lastNegativeMin < negativeValue) {
            this.lastNegativeMin = negativeValue;
        }
    }
    

    void init() {
        if (this.INTEGER_ARRAY[0] == null) {
            if (this.lastMin < this.POSITIVE_MAX || this.lastNegativeMin < this.NEGATIVE_MAX) {
                for (int index = this.POSITIVE_MAX - 1; index >= this.lastMin; index--) {
                    this.INTEGER_ARRAY[index + this.NEGATIVE_MAX] = index;
                }
                for (int index = this.NEGATIVE_MAX - 1; index >= this.lastNegativeMin; index--) {
                    this.INTEGER_ARRAY[index] = -index;
                }
                this.lastMin = this.POSITIVE_MAX;
                this.lastNegativeMin = this.NEGATIVE_MAX;
            }
        }
    }
    

    SmallLongFactory() {
        this.initFieldsSmallLongFactory();
    }
    

    int getInstanceNoThrow(int index) {
        if (index + this.NEGATIVE_MAX > this.INTEGER_ARRAY.length - 1) {
            return this.INTEGER_ARRAY[-1 + this.NEGATIVE_MAX]!;
        }
        return this.INTEGER_ARRAY[((index).toSigned(32)) + this.NEGATIVE_MAX]!;
    }
    

    String getString(int index) {
        final int i = index + this.NEGATIVE_MAX;
        if (this.STRING_ARRAY[i] == null) {
            this.STRING_ARRAY[i] = this.INTEGER_ARRAY[i]!.toString();
        }
        return this.STRING_ARRAY[i]!;
    }
}

