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
// package org.allbinary.logic.string

import 'package:allbinary/allbinary_java.dart';

class StringUtil {
    static final StringUtil instance = StringUtil();
    late String INIT_STRING;
    late String NULL_STRING;
    late String EMPTY_STRING;
    late List<String?> ONE_EMPTY_STRING_ARRAY;
    late List<List<String?>?> ONE_EMPTY_STRING_ARRAY_OF_ARRAYS;
    late List<String?> stringArray;

    // Java field initializers run after the base constructor
    void initFieldsStringUtil() {
    this.INIT_STRING = "";
    this.NULL_STRING = "null";
    this.EMPTY_STRING = "";
    this.ONE_EMPTY_STRING_ARRAY = <String?>[this.EMPTY_STRING];
    this.ONE_EMPTY_STRING_ARRAY_OF_ARRAYS = List<List<String?>>.generate(0, (_) => List<String?>.filled(0, null));
    this.stringArray = List<String?>.filled(0, null);
    }
    

    static StringUtil getInstance() {
        return StringUtil.instance;
    }
    

    StringUtil() {
        this.initFieldsStringUtil();
    }
    

    String getNonNull(String string) {
        return string;
    }
    

    List<String?> getArrayInstance() {
        return this.stringArray;
    }
    

    int count(String string, int aChar) {
        int count = 0;
        final int size = string.length;
        for (int index = 0; index < size; index++) {
            if (string.codeUnitAt(index) == aChar) {
                count++;
            }
        }
        return count;
    }
    

    String toString1(Object anyType) {
        if (anyType != null) {
            return anyType.toString();
        } else {
            return this.NULL_STRING;
        }
    }
}

