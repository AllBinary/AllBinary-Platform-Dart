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

class GameMode {
    static GameMode NONE = GameMode(StringUtil.getInstance().NULL_STRING);
    static GameMode SERVER = GameMode("Server");
    static GameMode CLIENT = GameMode("Client");
    late String name;

    // Java field initializers run after the base constructor
    void initFieldsGameMode() {
    this.name = StringUtil.getInstance().EMPTY_STRING;
    }
    

    GameMode(String name) {
        this.initFieldsGameMode();
        this.setName(name);
    }
    

    void setName(String name) {
        this.name = name;
    }
    

    String getName() {
        return this.name;
    }
    

    @override
    String toString() {
        return this.getName();
    }
}

