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
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveLongSingleton.dart';
import 'package:allbinary/org/allbinary/logic/math/MathUtil.dart';

class PrimitiveLongUtil {
    late LogUtil logUtil;
    int powerOfTen = 0;
    int maxValue = 0;
    int maxDigits = 0;
    late List<int> charArray;
    int currentTotalDigits = 0;
    late PrimitiveLongSingleton primitiveLongSingleton;

    // Java field initializers run after the base constructor
    void initFieldsPrimitiveLongUtil() {
    this.logUtil = LogUtil.getInstance();
    
    
    
    
    this.currentTotalDigits = 0;
    this.primitiveLongSingleton = PrimitiveLongSingleton.getInstance();
    }
    

    static PrimitiveLongUtil createPowerOfTen(int powerOfTen) {
        final PrimitiveLongUtil primitiveLongUtil = PrimitiveLongUtil(powerOfTen, NullUtil.getInstance().NULL_OBJECT);
        if ((powerOfTen).remainder(10) != 0) {
            final LogUtil logUtil = LogUtil.getInstance();
            final CommonStrings commonStrings = CommonStrings.getInstance();
            logUtil.put(commonStrings.EXCEPTION, primitiveLongUtil, commonStrings.CONSTRUCTOR, JException('Exception', "Max must be power of 10"));
        }
        return primitiveLongUtil;
    }
    

    PrimitiveLongUtil(int powerOfTen, Object unused) {
        this.initFieldsPrimitiveLongUtil();
        this.maxDigits = MathUtil.getInstance().getTotalDigits(powerOfTen);
        this.powerOfTen = powerOfTen;
        this.maxValue = (powerOfTen * 10) - 1;
        this.charArray = List<int>.filled(this.maxDigits, 0);
    }
    

    List<int> getCharArray(int value) {
        if (value < 10) {
            this.setCurrentTotalDigits(1);
            return this.primitiveLongSingleton.NUMBER_CHAR_ARRAYS[value]!;
        }
        if (value > this.maxValue) {
            this.setCurrentTotalDigits(3);
            return this.primitiveLongSingleton.UNK;
        }
        int index = 0;
        int div = this.powerOfTen;
        int lastValue = 0;
        while (div >= 1) {
            int digit = (value - lastValue) ~/ div;
            if (digit >= 0 && digit < 10) {
                if (digit == 0 && index == 0) {
                } else {
                    this.charArray[index++] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[digit];
                }
                lastValue += digit * div;
            }
            div = div ~/ 10;
        }
        this.setCurrentTotalDigits(index);
        return this.charArray;
    }
    

    void setCurrentTotalDigits(int currentTotalDigits) {
        this.currentTotalDigits = currentTotalDigits;
    }
    

    int getCurrentTotalDigits() {
        return this.currentTotalDigits;
    }
    

    int getMaxDigits() {
        return this.maxDigits;
    }
}

