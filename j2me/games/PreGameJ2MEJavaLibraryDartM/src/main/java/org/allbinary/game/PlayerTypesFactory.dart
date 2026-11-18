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
import 'package:allbinary/org/allbinary/game/PlayerType.dart';

class PlayerTypesFactory {
    static final PlayerTypesFactory SINGLETON = PlayerTypesFactory();
    late PlayerType PLAYER_TYPE_ONE;
    late PlayerType PLAYER_TYPE_TWO;
    late PlayerType PLAYER_TYPE_THREE;

    // Java field initializers run after the base constructor
    void initFieldsPlayerTypesFactory() {
    this.PLAYER_TYPE_ONE = PlayerType("Player Type One", 0);
    this.PLAYER_TYPE_TWO = PlayerType("Player Type Two", 1);
    this.PLAYER_TYPE_THREE = PlayerType("Player Type Three", 2);
    }

    PlayerTypesFactory() {
        this.initFieldsPlayerTypesFactory();
    }
    

    static PlayerTypesFactory getInstance() {
        return PlayerTypesFactory.SINGLETON;
    }
}

