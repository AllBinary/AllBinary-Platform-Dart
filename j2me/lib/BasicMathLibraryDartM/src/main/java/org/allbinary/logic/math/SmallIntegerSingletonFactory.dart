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
// package org.allbinary.logic.math

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/AndroidUtil.dart';
import 'package:allbinary/org/allbinary/J2MEUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';

class SmallIntegerSingletonFactory {
    static final SmallIntegerSingletonFactory instance = SmallIntegerSingletonFactory();
    int NEGATIVE_MAX = 0;
    int POSITIVE_MAX = 0;
    late List<int?> INTEGER_ARRAY;
    late List<String?> STRING_ARRAY;
    int MIN = 0;
    int lastMin = 0;
    int lastNegativeMin = 0;

    // Java field initializers run after the base constructor
    void initFieldsSmallIntegerSingletonFactory() {
    this.NEGATIVE_MAX = 500;
    this.POSITIVE_MAX = 0x2D1;
    this.INTEGER_ARRAY = List<int?>.filled(this.NEGATIVE_MAX + this.POSITIVE_MAX, null);
    this.STRING_ARRAY = List<String?>.filled(this.NEGATIVE_MAX + this.POSITIVE_MAX, null);
    this.MIN = 0;
    this.lastMin = 0;
    this.lastNegativeMin = 0;
    }
    

    static SmallIntegerSingletonFactory getInstance() {
        return SmallIntegerSingletonFactory.instance;
    }
    

    int getMin() {
        final int minAllowed = this.getMinAllowed();
        if (this.MIN <= minAllowed) {
            if (J2MEUtil.isJ2ME()) {
            } else if (AndroidUtil.isAndroid()) {
                final LogUtil logUtil = LogUtil.getInstance();
                logUtil.putF(StringMaker().append("Android InputFactory was initialized before GameMidlet: ").appendint(this.MIN).toString(), this, "getMin");
                this.initWithRange(0x291, 6);
            } else {
                final LogUtil logUtil = LogUtil.getInstance();
                logUtil.putF(StringMaker().append("InputFactory was initialized before GameMidlet or KeyFactoryInitializer - Currently this is occurs on JS build by TouchMotionGestureFactory constructor: ").appendint(this.MIN).toString(), this, "getMin");
                this.initWithRange(0x2D0, 6);
            }
        }
        if (this.MIN <= minAllowed) {
            final LogUtil logUtil = LogUtil.getInstance();
            logUtil.put("This means you loaded the InputFactory before determining the platform input size requirements.", this, "getMin", JException('Exception', ''));
        }
        return this.MIN;
    }
    

    int getMinAllowed() {
        if (J2MEUtil.isJ2ME()) {
            return 0;
        } else {
            if (AndroidUtil.isAndroid()) {
                return 0x101;
            } else {
                return 23;
            }
        }
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
        if (this.lastMin < this.POSITIVE_MAX || this.lastNegativeMin < this.NEGATIVE_MAX) {
            for (int index = this.POSITIVE_MAX - 1; index >= this.lastMin; index--) {
                this.INTEGER_ARRAY[index + this.NEGATIVE_MAX] = index;
            }
            for (int index = this.NEGATIVE_MAX - 1; index >= this.lastNegativeMin; index--) {
                this.INTEGER_ARRAY[index] = -index;
            }
            this.lastMin = this.POSITIVE_MAX;
            this.MIN = this.lastMin;
            this.lastNegativeMin = this.NEGATIVE_MAX;
        }
    }
    

    SmallIntegerSingletonFactory() {
        this.initFieldsSmallIntegerSingletonFactory();
        this.initWithRange(23, 0);
    }
    

    int getAt(int index) {
        return this.INTEGER_ARRAY[index + this.NEGATIVE_MAX]!;
    }
    

    int getAtNoThrow(int index) {
        if (index + this.NEGATIVE_MAX > this.INTEGER_ARRAY.length - 1) {
            return this.INTEGER_ARRAY[-1 + this.NEGATIVE_MAX]!;
        }
        return this.INTEGER_ARRAY[index + this.NEGATIVE_MAX]!;
    }
    

    int createInstance(int index) {
        int integer = this.getAt(index);
        if (integer == null) {
            integer = index;
        }
        return integer;
    }
    

    String getString(int index) {
        final int i = index + this.NEGATIVE_MAX;
        if (this.STRING_ARRAY[i] == null) {
            this.STRING_ARRAY[i] = this.INTEGER_ARRAY[i]!.toString();
        }
        return this.STRING_ARRAY[i]!;
    }
}

