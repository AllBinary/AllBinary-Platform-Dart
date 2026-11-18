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
// package org.allbinary.game.configuration

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfiguration.dart';

class GameConfigurationSingleton {
    static GameConfigurationSingleton SINGLETON = GameConfigurationSingleton();
    late BasicArrayList list;
    late ABHashtable hashtable;

    // Java field initializers run after the base constructor
    void initFieldsGameConfigurationSingleton() {
    
    
    }
    

    static GameConfigurationSingleton getInstance() {
        return GameConfigurationSingleton.SINGLETON;
    }
    

    GameConfigurationSingleton() {
        this.initFieldsGameConfigurationSingleton();
        this.list = BasicArrayListD();
        this.hashtable = StdUtil.getInstance().createHashtable();
    }
    

    GameConfiguration getInstanceByName(String name) {
        return (this.hashtable.get(name) as GameConfiguration);
    }
    

    BasicArrayList getOptionsBasicArrayList() {
        return this.list;
    }
    

    void add(GameConfiguration gameConfiguration) {
        this.list.add(gameConfiguration);
    }
    

    ABHashtable getHashtable() {
        return this.hashtable;
    }
}

