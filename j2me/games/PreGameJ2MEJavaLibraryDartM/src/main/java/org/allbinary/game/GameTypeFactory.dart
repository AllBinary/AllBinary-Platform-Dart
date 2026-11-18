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
import 'package:allbinary/org/allbinary/game/GameType.dart';

class GameTypeFactory {
    static final GameTypeFactory instance = GameTypeFactory();
    late List<GameType?> NULL_GAME_TYPE_ARRAY;
    late GameType NONE;
    late GameType SINGLE_PLAYER;
    late GameType MULTI_PLAYER;
    late GameType BOT;

    // Java field initializers run after the base constructor
    void initFieldsGameTypeFactory() {
    this.NULL_GAME_TYPE_ARRAY = List<GameType?>.filled(0, null);
    this.NONE = GameType(StringUtil.getInstance().NULL_STRING);
    this.SINGLE_PLAYER = GameType("Single Player");
    this.MULTI_PLAYER = GameType("Multi Player");
    this.BOT = GameType("Artificial Player");
    }

    GameTypeFactory() {
        this.initFieldsGameTypeFactory();
    }
    

    static GameTypeFactory getInstance() {
        return GameTypeFactory.instance;
    }
}

