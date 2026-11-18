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
// package org.allbinary.logic.io

import 'package:allbinary/allbinary_java.dart';

class AbIOSystem {
    static final AbIOSystem instance = AbIOSystem();
    late String type;

    // Java field initializers run after the base constructor
    void initFieldsAbIOSystem() {
    this.type = "java.io";
    }

    AbIOSystem() {
        this.initFieldsAbIOSystem();
    }
    

    static AbIOSystem getInstance() {
        return AbIOSystem.instance;
    }
    

    String getType() {
        return this.type;
    }
    

    bool isType(String type) {
        if (this.type.compareTo(type) == 0) {
            return true;
        } else {
            return false;
        }
    }
}

