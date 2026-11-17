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
// package org.allbinary.game.rand

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/util/Random.dart';
import 'package:allbinary/org/allbinary/logic/math/MathUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';

//Do not use in client code for money related things.
class MyRandomFactory {
    static final MyRandomFactory instance = MyRandomFactory();
    late MathUtil mathUtil;
    late Random rand;

    // Java field initializers run after the base constructor
    void initFieldsMyRandomFactory() {
    this.mathUtil = MathUtil.getInstance();
    
    }
    

    static MyRandomFactory getInstance() {
        return MyRandomFactory.instance;
    }
    

    MyRandomFactory() {
        this.initFieldsMyRandomFactory();
        this.rand = Random(JSystem.currentTimeMillis());
    }
    

    void setSeed(int seed) {
        this.rand = Random(seed);
    }
    

    int getNextInt(int range) {
        int div = (Integer.MAX_VALUE ~/ range) + 1;
        return (this.rand.nextInt() ~/ div);
    }
    

    int getAbsoluteNextInt(int range) {
        return this.mathUtil.abs(this.getNextInt(range));
    }
    

    int getAbsoluteNextIntAllowZero(int range) {
        if (range == 0) {
            return 0;
        } else {
            return this.mathUtil.abs(this.getNextInt(range));
        }
    }
    

    void shuffle(List<int> intArray) {
        this.shuffleTotal(intArray, intArray.length * 7);
    }
    

    void shuffleTotal(List<int> intArray, int shuffleTotal) {
        final int size = intArray.length;
        int randomIndex = 0;
        int randomIndex2 = 0;
        int value = 0;
        for (int index = 0; index < shuffleTotal; index++) {
            randomIndex = this.getAbsoluteNextIntAllowZero(size);
            randomIndex2 = this.getAbsoluteNextIntAllowZero(size);
            value = intArray[randomIndex];
            intArray[randomIndex] = intArray[randomIndex2];
            intArray[randomIndex2] = value;
        }
    }
    

    void shuffle2(List<int> intArray, List<int> intArray2) {
        this.shuffle2Total(intArray, intArray2, intArray.length * 7);
    }
    

    void shuffle2Total(List<int> intArray, List<int> intArray2, int shuffleTotal) {
        final int size = intArray.length;
        int randomIndex = 0;
        int randomIndex2 = 0;
        int value = 0;
        int value2 = 0;
        for (int index = 0; index < shuffleTotal; index++) {
            randomIndex = this.getAbsoluteNextIntAllowZero(size);
            randomIndex2 = this.getAbsoluteNextIntAllowZero(size);
            value = intArray[randomIndex];
            value2 = intArray2[randomIndex];
            intArray[randomIndex] = intArray[randomIndex2];
            intArray[randomIndex2] = value;
            intArray2[randomIndex] = intArray2[randomIndex2];
            intArray2[randomIndex2] = value2;
        }
    }
    

    static void main(List<String?> args) {
        final MyRandomFactory randomFactory = MyRandomFactory.getInstance();
        final StringMaker stringBuilder = StringMaker();
        final CommonSeps commonSeps = CommonSeps.getInstance();
        final int size2 = 100;
        for (int index = 0; index < size2; index++) {
            stringBuilder.appendint(randomFactory.getAbsoluteNextInt(3)).append(commonSeps.COMMA);
        }
        JSystem.println(jstr(stringBuilder.toString()));
        stringBuilder.delete(0, stringBuilder.length());
        final List<int> intArray = List<int>.filled(52, 0);
        final List<int> intArray2 = List<int>.filled(52, 0);
        final int size = intArray.length;
        for (int index = 0; index < size; index++) {
            intArray[index] = index;
            intArray2[index] = index;
        }
        randomFactory.shuffle2(intArray, intArray2);
        for (int index = 0; index < size; index++) {
            stringBuilder.appendint(intArray[index]).append(commonSeps.COMMA);
        }
        JSystem.println(jstr(stringBuilder.toString()));
        stringBuilder.delete(0, stringBuilder.length());
        for (int index = 0; index < size; index++) {
            stringBuilder.appendint(intArray2[index]).append(commonSeps.COMMA);
        }
        JSystem.println(jstr(stringBuilder.toString()));
        bool found = false;
        for (int index = 0; index < size; index++) {
            found = false;
            for (int index2 = 0; index2 < size; index2++) {
                if (intArray[index2] == index) {
                    found = true;
                }
            }
            if (!found) {
                throw JException('RuntimeException', '');
            }
        }
    }
}

