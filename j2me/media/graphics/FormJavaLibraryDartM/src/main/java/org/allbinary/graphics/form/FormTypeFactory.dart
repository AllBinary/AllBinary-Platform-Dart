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
// package org.allbinary.graphics.form

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/graphics/form/FormType.dart';

class FormTypeFactory {
    static final FormTypeFactory instance = FormTypeFactory();
    late String UNK;
    late FormType NULL_FORM_TYPE;
    late FormType TEMP_HORIZONTAL_FORM;
    late FormType HORIZONTAL_FORM;
    late FormType VERTICAL_CENTER_FORM;

    // Java field initializers run after the base constructor
    void initFieldsFormTypeFactory() {
    this.UNK = "Unknown FormType";
    this.NULL_FORM_TYPE = FormType(StringUtil.getInstance().NULL_STRING);
    this.TEMP_HORIZONTAL_FORM = FormType("TempHorizontal");
    this.HORIZONTAL_FORM = FormType("Horizontal");
    this.VERTICAL_CENTER_FORM = FormType("Vertical");
    }

    FormTypeFactory() {
        this.initFieldsFormTypeFactory();
    }
    

    static FormTypeFactory getInstance() {
        return FormTypeFactory.instance;
    }
    

    FormType getFormType() {
        DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        late FormType formType;
        if (displayInfo.isPortrait()) {
            formType = this.VERTICAL_CENTER_FORM;
        } else {
            formType = this.HORIZONTAL_FORM;
        }
        return formType;
    }
}

