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
// package org.allbinary.logic.java.bool

import 'package:allbinary/allbinary_java.dart';

class BooleanFactory {
    static final BooleanFactory instance = BooleanFactory();
    late bool TRUE;
    late bool FALSE;
    late String TRUE_STRING;
    late String FALSE_STRING;
    late String YES;
    late String NO;

    // Java field initializers run after the base constructor
    void initFieldsBooleanFactory() {
    this.TRUE = true;
    this.FALSE = false;
    this.TRUE_STRING = this.TRUE.toString();
    this.FALSE_STRING = this.FALSE.toString();
    this.YES = "yes";
    this.NO = "no";
    }

    BooleanFactory() {
        this.initFieldsBooleanFactory();
    }
    

    static BooleanFactory getInstance() {
        return BooleanFactory.instance;
    }
    

    String toStringb(bool bool) {
        if (bool) {
            return this.TRUE_STRING;
        } else {
            return this.FALSE_STRING;
        }
    }
}

