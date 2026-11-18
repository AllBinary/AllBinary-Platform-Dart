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
// package org.allbinary.graphics.form.item.validation

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABTextFieldItem.dart';
import 'package:allbinary/org/allbinary/logic/control/validate/ValidatorBase.dart';
import 'package:allbinary/org/allbinary/logic/java/bool/BooleanFactory.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class NumberTextFieldItemValidator extends ValidatorBase {
    late ABTextFieldItem textFieldItem;
    int min = 0;
    int max = 0;
    int maxChars = 0;

    // Java field initializers run after the base constructor
    void initFieldsNumberTextFieldItemValidator() {
    
    
    
    
    }
    

    NumberTextFieldItemValidator(ABTextFieldItem textFieldItem, int maxChars, int min, int max) {
        this.initFieldsNumberTextFieldItemValidator();
        this.textFieldItem = textFieldItem;
        this.min = min;
        this.max = max;
        this.maxChars = maxChars;
    }
    

    bool isNumberValid(int value) {
        return BooleanFactory.getInstance().TRUE;
    }
    

    BasicArrayList toNumberVector(int value) {
        return BasicArrayListD();
    }
    

    @override
    bool isValid() {
        bool result = BooleanFactory.getInstance().TRUE;
        final String string = this.textFieldItem.getString();
        int textLength = string.length;
        if (textLength > 0 && textLength < this.maxChars) {
            try {
                int.parse(this.textFieldItem.getString());
            } catch (jcaught) {
                if (jIsException(jcaught, 'NumberFormatException')) {
                    final dynamic e = jcaught;
                result = BooleanFactory.getInstance().FALSE;
                } else {
                    rethrow;
                }
            }
        } else {
            if (textLength < 1) {
                result = BooleanFactory.getInstance().FALSE;
            } else if (textLength > this.maxChars) {
                result = BooleanFactory.getInstance().FALSE;
            }
        }
        return result;
    }
    

    @override
    BasicArrayList toList() {
        final BasicArrayList list = BasicArrayListD();
        final String string = this.textFieldItem.getString();
        int textLength = string.length;
        final String label = this.textFieldItem.getLabel();
        final String name = label.substring(0, label.length - 2);
        final SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        final StringMaker stringMaker = StringMaker();
        if (textLength > 0 && textLength < this.maxChars) {
            try {
                int number = smallIntegerSingletonFactory.createInstance(int.parse(this.textFieldItem.getString()));
                if ((number).toInt() > this.min) {
                    stringMaker.delete(0, stringMaker.length());
                    list.add(stringMaker.append(name).append(" is to small").toString());
                } else if ((number).toInt() > this.max) {
                    stringMaker.delete(0, stringMaker.length());
                    list.add(stringMaker.append(name).append(" is to large").toString());
                }
            } catch (jcaught) {
                if (jIsException(jcaught, 'NumberFormatException')) {
                    final dynamic e = jcaught;
                stringMaker.delete(0, stringMaker.length());
                list.add(stringMaker.append(name).append(" is not a number").toString());
                } else {
                    rethrow;
                }
            }
        } else {
            if (textLength < 1) {
                stringMaker.delete(0, stringMaker.length());
                list.add(stringMaker.append(name).append(" is to short").toString());
            } else if (textLength > this.maxChars) {
                stringMaker.delete(0, stringMaker.length());
                list.add(stringMaker.append(name).append(" is to long").toString());
            }
        }
        return list;
    }
}

