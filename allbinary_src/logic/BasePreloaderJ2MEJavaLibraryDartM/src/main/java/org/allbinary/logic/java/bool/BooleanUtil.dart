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
// package org.allbinary.logic.java.bool

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringValidationUtil.dart';
import 'package:allbinary/org/allbinary/logic/java/bool/BooleanFactory.dart';

class BooleanUtil {
    static final BooleanUtil instance = BooleanUtil();
    late TsUtil tsUtil;

    // Java field initializers run after the base constructor
    void initFieldsBooleanUtil() {
    this.tsUtil = TsUtil.getInstance();
    }
    

    static BooleanUtil getInstance() {
        return BooleanUtil.instance;
    }
    

    BooleanUtil() {
        this.initFieldsBooleanUtil();
    }
    

    bool getFromString(String booleanString) {
        final StringValidationUtil stringValidationUtil = StringValidationUtil.getInstance();
        final BooleanFactory booleanFactory = BooleanFactory.getInstance();
        if (stringValidationUtil.isEmpty(booleanString)) {
            return false;
        }
        final String booleanStringLowerCase = booleanString.toLowerCase();
        if (this.tsUtil.compareTo(booleanStringLowerCase, booleanFactory.TRUE_STRING) == 0) {
            return true;
        } else if (this.tsUtil.compareTo(booleanStringLowerCase, booleanFactory.FALSE_STRING) == 0) {
            return false;
        } else {
            throw JException('Exception', "Invalid booleanString - Must be true or false");
        }
    }
    

    bool isStringBoolean(String booleanString) {
        final BooleanFactory booleanFactory = BooleanFactory.getInstance();
        final String booleanStringLowerCase = booleanString.toLowerCase();
        if (booleanStringLowerCase.compareTo(booleanFactory.TRUE_STRING) == 0 || booleanStringLowerCase.compareTo(booleanFactory.FALSE_STRING) == 0) {
            return true;
        }
        return false;
    }
    

    String toStringFromBooleanArray(List<bool> booleanArray) {
        final StringMaker stringMaker = StringMaker();
        final int size = booleanArray.length;
        for (int index = 0; index < size; index++) {
            stringMaker.appendboolean(booleanArray[index]);
        }
        return stringMaker.toString();
    }
}

