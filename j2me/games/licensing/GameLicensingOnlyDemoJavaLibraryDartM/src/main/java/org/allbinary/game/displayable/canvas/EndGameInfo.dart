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
// package org.allbinary.game.displayable.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/GameInfo.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/MyCanvas.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';

class EndGameInfo {
    late String NORMAL_GAME_OVER_WIN;
    late String TEASER_DEMO_GAME_END_LAST_LEVEL;
    late String TEASER_DEMO_GAME_END;
    late String gameOverStr;
    late String winStr;

    // Java field initializers run after the base constructor
    void initFieldsEndGameInfo() {
    this.NORMAL_GAME_OVER_WIN = "You Won";
    this.TEASER_DEMO_GAME_END_LAST_LEVEL = "End of Demo.";
    this.TEASER_DEMO_GAME_END = "Demo Game Over.";
    this.gameOverStr = StringUtil.getInstance().EMPTY_STRING;
    this.winStr = this.gameOverStr;
    }

    EndGameInfo() {
        this.initFieldsEndGameInfo();
    }
    

    void update(GameInfo gameInfo, MyCanvas myCanvas) {
        if (gameInfo.isLastLevel()) {
            this.setWinStr(this.TEASER_DEMO_GAME_END_LAST_LEVEL);
            this.setGameOverStr(this.TEASER_DEMO_GAME_END_LAST_LEVEL);
        } else {
            this.setWinStr(this.NORMAL_GAME_OVER_WIN);
            this.setGameOverStr(this.TEASER_DEMO_GAME_END);
        }
    }
    

    String getGameOverStr() {
        return this.gameOverStr;
    }
    

    void setGameOverStr(String gameOverStr) {
        this.gameOverStr = gameOverStr;
    }
    

    String getWinStr() {
        return this.winStr;
    }
    

    void setWinStr(String winStr) {
        this.winStr = winStr;
    }
}

