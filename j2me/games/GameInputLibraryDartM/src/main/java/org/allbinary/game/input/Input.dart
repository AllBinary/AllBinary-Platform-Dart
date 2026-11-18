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
// package org.allbinary.game.input

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';

class Input {
    int id = 0;
    late String name;

    // Java field initializers run after the base constructor
    void initFieldsInput() {
    this.id = 0;
    this.name = StringUtil.getInstance().EMPTY_STRING;
    }
    

    Input(int id, String name) {
        this.initFieldsInput();
        this.setId(id);
        this.setName(name);
    }
    

    int getId() {
        return this.id;
    }
    

    void setId(int key) {
        this.id = key;
    }
    

    String getName() {
        return this.name;
    }
    

    void setName(String keyName) {
        this.name = keyName;
    }
    

    @override
    String toString() {
        StringMaker stringBuffer = StringMaker();
        stringBuffer.append("Name: ");
        stringBuffer.append(this.getName());
        stringBuffer.append(" Id: ");
        stringBuffer.appendint(this.getId());
        return stringBuffer.toString();
    }
}

