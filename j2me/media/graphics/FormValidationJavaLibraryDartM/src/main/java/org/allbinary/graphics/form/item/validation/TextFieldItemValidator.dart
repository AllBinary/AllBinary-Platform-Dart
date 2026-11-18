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
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class TextFieldItemValidator extends ValidatorBase {
    late ABTextFieldItem textFieldItem;
    int min = 0;
    int max = 0;
    bool allowOnEmpty = false;

    // Java field initializers run after the base constructor
    void initFieldsTextFieldItemValidator() {
    
    
    
    
    }
    

    TextFieldItemValidator(ABTextFieldItem textFieldItem, int min, int max, bool allowOnEmpty) {
        this.initFieldsTextFieldItemValidator();
        this.textFieldItem = textFieldItem;
        this.min = min;
        this.max = max;
        this.allowOnEmpty = allowOnEmpty;
    }
    

    @override
    bool isValid() {
        BooleanFactory booleanFactory = BooleanFactory.getInstance();
        bool result = booleanFactory.TRUE;
        final String string = this.textFieldItem.getString();
        int textLength = string.length;
        if ((textLength == 0 && this.allowOnEmpty) || textLength > this.min && textLength < this.max) {
        } else {
            if (textLength < this.min) {
                result = booleanFactory.FALSE;
            } else if (textLength > this.max) {
                result = booleanFactory.FALSE;
            }
        }
        return result;
    }
    

    @override
    BasicArrayList toList() {
        final BasicArrayList list = BasicArrayListD();
        final String string = this.textFieldItem.getString();
        int textLength = string.length;
        if (textLength > this.min && textLength < this.max) {
        } else {
            final String label = this.textFieldItem.getLabel();
            final String name = label.substring(0, label.length - 2);
            if (textLength < this.min) {
                list.add(StringMaker().append(name).append(" is to short").toString());
            } else if (textLength > this.max) {
                list.add(StringMaker().append(name).append(" is to long").toString());
            }
        }
        return list;
    }
}

