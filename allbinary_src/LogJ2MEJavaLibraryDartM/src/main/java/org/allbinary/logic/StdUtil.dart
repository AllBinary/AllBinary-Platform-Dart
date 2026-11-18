/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/ABStack.dart';
import 'package:allbinary/org/allbinary/util/ABVector.dart';

//ActualPlatform
class StdUtil {
    static final StdUtil instance = StdUtil();
    late ABVector EMPTY_VECTOR;
    late ABHashtable NULL_TABLE;

    // Java field initializers run after the base constructor
    void initFieldsStdUtil() {
    this.EMPTY_VECTOR = this.createVector();
    this.NULL_TABLE = this.createHashtable();
    }

    StdUtil() {
        this.initFieldsStdUtil();
    }
    

    static StdUtil getInstance() {
        return StdUtil.instance;
    }
    

    ABStack createStack() {
        return ABStack();
    }
    

    ABVector createVector() {
        return ABVector();
    }
    

    ABHashtable createHashtable() {
        return ABHashtable.with0();
    }
}

