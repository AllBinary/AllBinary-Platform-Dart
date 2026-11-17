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
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';

class PrimitiveLongSingleton {
    static final PrimitiveLongSingleton instance = PrimitiveLongSingleton();
    late List<int> UNK;
    late List<int> NUMBER_ARRAY;
    late List<int> NUMBER_CHAR_ARRAY;
    late List<List<int>?> NUMBER_CHAR_ARRAYS;
    late List<int> ZERO;

    // Java field initializers run after the base constructor
    void initFieldsPrimitiveLongSingleton() {
    this.UNK = <int>["U".codeUnitAt(0), "n".codeUnitAt(0), "k".codeUnitAt(0)];
    this.NUMBER_ARRAY = <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    this.NUMBER_CHAR_ARRAY = <int>["0".codeUnitAt(0), "1".codeUnitAt(0), "2".codeUnitAt(0), "3".codeUnitAt(0), "4".codeUnitAt(0), "5".codeUnitAt(0), "6".codeUnitAt(0), "7".codeUnitAt(0), "8".codeUnitAt(0), "9".codeUnitAt(0)];
    this.NUMBER_CHAR_ARRAYS = <List<int>>[<int>["0".codeUnitAt(0)], <int>["1".codeUnitAt(0)], <int>["2".codeUnitAt(0)], <int>["3".codeUnitAt(0)], <int>["4".codeUnitAt(0)], <int>["5".codeUnitAt(0)], <int>["6".codeUnitAt(0)], <int>["7".codeUnitAt(0)], <int>["8".codeUnitAt(0)], <int>["9".codeUnitAt(0)]];
    this.ZERO = <int>[this.NUMBER_CHAR_ARRAY[0]];
    }

    PrimitiveLongSingleton() {
        this.initFieldsPrimitiveLongSingleton();
    }
    

    static PrimitiveLongSingleton getInstance() {
        return PrimitiveLongSingleton.instance;
    }
    

    int getNumberFromChar(int numberAsChar) {
        final int size = this.NUMBER_CHAR_ARRAY.length;
        for (int index = 0; index < size; index++) {
            if (this.NUMBER_CHAR_ARRAY[index] == numberAsChar) {
                return this.NUMBER_ARRAY[index];
            }
        }
        throw JException('Exception', StringMaker().append("numberAsChar was not in array: ").appendchar(numberAsChar).toString());
    }
}

