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
// ignore_for_file: unused_import, unused_local_variable, unnecessary_null_comparison
// package org.allbinary.logic

import 'package:allbinary/allbinary_java.dart';

//ActualPlatform
class NullUtil {
    static final NullUtil instance = NullUtil();
    late Object NULL_OBJECT;
    late String NULL_CLASS;
    late List<Object?> NULL_OBJECT_ARRAY;
    late List<int> NULL_CHAR_ARRAY;
    late List<int> NULL_BYTE_ARRAY;
    late List<List<int>?> NULL_SHORT_ARRAY_ARRAY;
    late List<int> NULL_INT_ARRAY;
    late List<List<int>?> NULL_INT_ARRAY_ARRAY;
    late List<List<List<int>?>?> NULL_INT_ARRAY_ARRAY_ARRAY;
    late List<double> NULL_FLOAT_ARRAY;

    // Java field initializers run after the base constructor
    void initFieldsNullUtil() {
    this.NULL_OBJECT = Object();
    this.NULL_CLASS = jClassName(this.NULL_OBJECT);
    this.NULL_OBJECT_ARRAY = List<Object?>.filled(0, null);
    this.NULL_CHAR_ARRAY = List<int>.filled(0, 0);
    this.NULL_BYTE_ARRAY = List<int>.filled(0, 0);
    this.NULL_SHORT_ARRAY_ARRAY = List<List<int>>.generate(0, (_) => List<int>.filled(0, 0));
    this.NULL_INT_ARRAY = List<int>.filled(0, 0);
    this.NULL_INT_ARRAY_ARRAY = List<List<int>>.generate(0, (_) => List<int>.filled(0, 0));
    this.NULL_INT_ARRAY_ARRAY_ARRAY = List<List<List<int>>>.generate(0, (_) => List<List<int>>.generate(0, (_) => List<int>.filled(0, 0)));
    this.NULL_FLOAT_ARRAY = List<double>.filled(0, 0.0);
    }

    NullUtil() {
        this.initFieldsNullUtil();
    }
    

    static NullUtil getInstance() {
        return NullUtil.instance;
    }
}

