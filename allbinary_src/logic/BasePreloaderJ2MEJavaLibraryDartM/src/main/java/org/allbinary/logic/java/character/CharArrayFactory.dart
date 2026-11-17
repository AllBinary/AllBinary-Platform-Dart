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
// package org.allbinary.logic.java.character

import 'package:allbinary/allbinary_java.dart';

class CharArrayFactory {
    static final CharArrayFactory instance = CharArrayFactory();
    late List<int> zeroCharArray;

    // Java field initializers run after the base constructor
    void initFieldsCharArrayFactory() {
    this.zeroCharArray = List<int>.filled(0, 0);
    }

    CharArrayFactory() {
        this.initFieldsCharArrayFactory();
    }
    

    static CharArrayFactory getInstance() {
        return CharArrayFactory.instance;
    }
    

    List<int> getZeroCharArray() {
        return this.zeroCharArray;
    }
}

