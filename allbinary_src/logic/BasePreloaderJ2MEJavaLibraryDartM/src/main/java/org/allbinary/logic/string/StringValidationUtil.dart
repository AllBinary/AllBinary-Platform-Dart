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
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';

class StringValidationUtil {
    static final StringValidationUtil instance = StringValidationUtil();
    late StringUtil stringUtil;
    late TsUtil tsUtil;

    // Java field initializers run after the base constructor
    void initFieldsStringValidationUtil() {
    this.stringUtil = StringUtil.getInstance();
    this.tsUtil = TsUtil.getInstance();
    }
    

    static StringValidationUtil getInstance() {
        return StringValidationUtil.instance;
    }
    

    StringValidationUtil() {
        this.initFieldsStringValidationUtil();
    }
    

    bool containsSpaces(String value) {
        if (JString.indexOf(value, " ".codeUnitAt(0)) >= 0) {
            return true;
        }
        return false;
    }
    

    bool isNumber(String value) {
        int numberOfDecimalPoints = 0;
        for (int index = 0; index < value.length; index++) {
            int digit = value.codeUnitAt(index);
            if (!this.isNumberFromChar(digit) && digit != ".".codeUnitAt(0)) {
                return false;
            }
            if (digit == ".".codeUnitAt(0)) {
                numberOfDecimalPoints++;
                if (numberOfDecimalPoints > 1) {
                    return false;
                }
            }
        }
        return true;
    }
    

    bool isNumberFromChar(int digit) {
        if (digit != "0".codeUnitAt(0) && digit != "1".codeUnitAt(0) && digit != "2".codeUnitAt(0) && digit != "3".codeUnitAt(0) && digit != "4".codeUnitAt(0) && digit != "5".codeUnitAt(0) && digit != "6".codeUnitAt(0) && digit != "7".codeUnitAt(0) && digit != "8".codeUnitAt(0) && digit != "9".codeUnitAt(0)) {
            return false;
        }
        return true;
    }
    

    bool isValidRequired(String value, int min, int max) {
        if (value.length < min || value.length > max) {
            return false;
        }
        return true;
    }
    

    bool isValidRequiredNumber(String value, int min, int max) {
        if (this.isEmpty(value) || value.length < min || value.length > max) {
            return false;
        }
        if (!this.isNumber(value)) {
            return false;
        }
        return true;
    }
    

    bool isValidNotRequired(String value, int min, int max) {
        if (value.length > 0) {
            if (value.length < min || value.length > max) {
                return false;
            }
        }
        return true;
    }
    

    bool isValidNotRequiredNumber(String value, int min, int max) {
        if (value.length > 0) {
            if (this.tsUtil.compareTo(value, this.stringUtil.NULL_STRING) == 0 || value.length < min || value.length > max) {
                return false;
            }
            if (!this.isNumber(value)) {
                return false;
            }
        }
        return true;
    }
    

    bool isEmpty(String string) {
        if (this.tsUtil.compareTo(string, this.stringUtil.NULL_STRING) != 0 && this.tsUtil.compareTo(string, this.stringUtil.EMPTY_STRING) != 0) {
            return false;
        } else {
            return true;
        }
    }
}

