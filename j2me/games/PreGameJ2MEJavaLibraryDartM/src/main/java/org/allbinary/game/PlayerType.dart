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
// package org.allbinary.game

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';

class PlayerType {
    int id = 0;
    late String name;

    // Java field initializers run after the base constructor
    void initFieldsPlayerType() {
    
    this.name = StringUtil.getInstance().EMPTY_STRING;
    }
    

    PlayerType(String name, int value) {
        this.initFieldsPlayerType();
        this.name = name;
        this.id = value;
    }
    

    int getId() {
        return this.id;
    }
    

    String getName() {
        return this.name;
    }
    

    @override
    String toString() {
        return this.getName();
    }
}

