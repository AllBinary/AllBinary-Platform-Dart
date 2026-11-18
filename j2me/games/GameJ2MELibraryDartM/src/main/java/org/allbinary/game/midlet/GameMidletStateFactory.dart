// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.game.midlet

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/state/GameState.dart';
import 'package:allbinary/org/allbinary/game/state/GameStateFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';

class GameMidletStateFactory {
    static final GameMidletStateFactory INSTANCE = GameMidletStateFactory();
    late LogUtil logUtil;
    late GameState currentGameState;

    // Java field initializers run after the base constructor
    void initFieldsGameMidletStateFactory() {
    this.logUtil = LogUtil.getInstance();
    this.currentGameState = GameStateFactory.getInstance().NO_GAME_STATE;
    }
    

    GameMidletStateFactory() {
        this.initFieldsGameMidletStateFactory();
    }
    

    static GameMidletStateFactory getInstance() {
        return GameMidletStateFactory.INSTANCE;
    }
    

    GameState getCurrentGameState() {
        return this.currentGameState;
    }
    

    void setCurrentGameState(GameState currentGameState) {
        this.logUtil.putF(StringMaker().append(CommonLabels.getInstance().CURRENT).append(" GameState: ").append(StringUtil.getInstance().toString1(currentGameState)).toString(), this, "setCurrentGameState");
        this.currentGameState = currentGameState;
    }
}

