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
// package org.allbinary.game.input.mapping

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/input/GameKey.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';

class GameInputMapping {
    late String name;
    late GameKey gameKey;

    // Java field initializers run after the base constructor
    void initFieldsGameInputMapping() {
    this.name = StringUtil.getInstance().EMPTY_STRING;
    this.gameKey = GameKey.NULL_GAME_KEY;
    }
    

    GameInputMapping(String name, GameKey gameKey) {
        this.initFieldsGameInputMapping();
        this.setName(name);
        this.setGameKey(gameKey);
    }
    

    void setGameKey(GameKey gameKey) {
        this.gameKey = gameKey;
    }
    

    GameKey getGameKey() {
        return this.gameKey;
    }
    

    void setName(String name) {
        this.name = name;
    }
    

    String getName() {
        return this.name;
    }
}

