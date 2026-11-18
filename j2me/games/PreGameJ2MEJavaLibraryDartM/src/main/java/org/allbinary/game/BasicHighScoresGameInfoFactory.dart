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
import 'package:allbinary/org/allbinary/game/GameInfo.dart';
import 'package:allbinary/org/allbinary/game/GameTypeFactory.dart';
import 'package:allbinary/org/allbinary/game/GameMode.dart';
import 'package:allbinary/org/allbinary/game/PlayerTypesFactory.dart';

class BasicHighScoresGameInfoFactory {
    static final BasicHighScoresGameInfoFactory SINGLETON = BasicHighScoresGameInfoFactory();
    late GameInfo MULTI_PLAYER_SERVER;
    late GameInfo SINGLE_PLAYER_SERVER;

    // Java field initializers run after the base constructor
    void initFieldsBasicHighScoresGameInfoFactory() {
    this.MULTI_PLAYER_SERVER = GameInfo(GameTypeFactory.getInstance().MULTI_PLAYER, GameMode.SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0);
    this.SINGLE_PLAYER_SERVER = GameInfo(GameTypeFactory.getInstance().SINGLE_PLAYER, GameMode.SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0);
    }

    BasicHighScoresGameInfoFactory() {
        this.initFieldsBasicHighScoresGameInfoFactory();
    }
    

    static BasicHighScoresGameInfoFactory getInstance() {
        return BasicHighScoresGameInfoFactory.SINGLETON;
    }
}

