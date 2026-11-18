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
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/game/input/GameKey.dart';
import 'package:allbinary/org/allbinary/game/input/InputFactory.dart';
import 'package:allbinary/org/allbinary/game/input/GameKeyFactory.dart';

class GameKeyMappingFactory {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    late List<GameKey?> intKeyToGameKey;

    // Java field initializers run after the base constructor
    void initFieldsGameKeyMappingFactory() {
    this.intKeyToGameKey = List<GameKey?>.filled(InputFactory.getInstance().MAX, null);
    }
    

    static GameKeyMappingFactory getInstance() {
        if (GameKeyMappingFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            GameKeyMappingFactory.instance = GameKeyMappingFactory();
        }
        return (GameKeyMappingFactory.instance as GameKeyMappingFactory);
    }
    

    GameKeyMappingFactory() {
        this.initFieldsGameKeyMappingFactory();
        final GameKeyFactory gameKeyFactory = GameKeyFactory.getInstance();
        this.setGameKey(gameKeyFactory.NONE);
        this.setGameKey(gameKeyFactory.UP);
        this.setGameKey(gameKeyFactory.DOWN);
        this.setGameKey(gameKeyFactory.LEFT);
        this.setGameKey(gameKeyFactory.RIGHT);
        this.setGameKey(gameKeyFactory.KEY_POUND);
        this.setGameKey(gameKeyFactory.KEY_STAR);
        this.setGameKey(gameKeyFactory.KEY_NUM0);
        this.setGameKey(gameKeyFactory.KEY_NUM1);
        this.setGameKey(gameKeyFactory.KEY_NUM2);
        this.setGameKey(gameKeyFactory.KEY_NUM3);
        this.setGameKey(gameKeyFactory.KEY_NUM4);
        this.setGameKey(gameKeyFactory.KEY_NUM5);
        this.setGameKey(gameKeyFactory.KEY_NUM6);
        this.setGameKey(gameKeyFactory.KEY_NUM7);
        this.setGameKey(gameKeyFactory.KEY_NUM8);
        this.setGameKey(gameKeyFactory.KEY_NUM9);
        this.setGameKey(gameKeyFactory.GAME_A);
        this.setGameKey(gameKeyFactory.GAME_B);
        this.setGameKey(gameKeyFactory.GAME_C);
        this.setGameKey(gameKeyFactory.GAME_D);
        this.setGameKey(gameKeyFactory.FIRE);
        this.setGameKey(gameKeyFactory.LEVEL_DOWN);
        this.setGameKey(gameKeyFactory.LEVEL_UP);
    }
    

    GameKey getGameKey(int key) {
        return this.intKeyToGameKey[key]!;
    }
    

    void setGameKey(GameKey gameKey) {
        this.intKeyToGameKey[gameKey.getId()] = gameKey;
    }
}

