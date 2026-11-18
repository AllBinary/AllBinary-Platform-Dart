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
// package org.allbinary.logic.control.validate

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/logic/java/bool/BooleanFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListUtil.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/logic/control/validate/ValidatorBaseInterface.dart';

class ValidatorBase implements ValidatorBaseInterface {
    static final ValidatorBase instance = ValidatorBase();
    

    static ValidatorBase getInstance() {
        return ValidatorBase.instance;
    }
    

    ValidatorBase() {
    }
    

    @override
    bool isValid() {
        return BooleanFactory.getInstance().TRUE;
    }
    

    @override
    String validationInfo() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    @override
    ABHashtable toHashtable() {
        return StdUtil.getInstance().NULL_TABLE;
    }
    

    @override
    BasicArrayList toList() {
        return BasicArrayListUtil.getInstance().getImmutableInstance();
    }
}

