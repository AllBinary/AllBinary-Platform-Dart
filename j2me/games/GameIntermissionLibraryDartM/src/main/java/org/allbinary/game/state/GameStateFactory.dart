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
// package org.allbinary.game.state

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/game/state/GameState.dart';

class GameStateFactory {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    int index = 0;
    late GameState NO_GAME_STATE;
    late GameState PLAYING_GAME_STATE;
    late GameState SHOW_END_RESULT_GAME_STATE;
    late GameState SHOW_HIGH_SCORE_GAME_STATE;

    // Java field initializers run after the base constructor
    void initFieldsGameStateFactory() {
    this.index = 0;
    this.NO_GAME_STATE = this.createGameState("NO_GAME_STATE");
    this.PLAYING_GAME_STATE = this.createGameState("PLAYING_GAME_STATE");
    this.SHOW_END_RESULT_GAME_STATE = this.createGameState("SHOW_END_RESULT_GAME_STATE");
    this.SHOW_HIGH_SCORE_GAME_STATE = this.createGameState("SHOW_HIGH_SCORE_GAME_STATE");
    }
    

    static GameStateFactory getInstance() {
        if (GameStateFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            GameStateFactory.instance = GameStateFactory();
        }
        return (GameStateFactory.instance as GameStateFactory);
    }
    

    GameStateFactory() {
        this.initFieldsGameStateFactory();
    }
    

    GameState createGameState(String name) {
        return GameState(name, this.index++);
    }
}

