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
// package org.allbinary.resources

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';

class KeyValueFactory {
    static final KeyValueFactory instance = KeyValueFactory();
    late ABHashtable MAP;

    // Java field initializers run after the base constructor
    void initFieldsKeyValueFactory() {
    this.MAP = StdUtil.getInstance().createHashtable();
    }

    KeyValueFactory() {
        this.initFieldsKeyValueFactory();
    }
    

    static KeyValueFactory getInstance() {
        return KeyValueFactory.instance;
    }
    

    String get(String key) {
        if (!this.MAP.containsKey((key as Object))) {
            return key;
        }
        return (this.MAP.get((key as Object)) as String);
    }
}

