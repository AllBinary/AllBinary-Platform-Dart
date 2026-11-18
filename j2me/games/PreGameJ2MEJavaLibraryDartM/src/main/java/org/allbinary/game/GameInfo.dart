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
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/game/GameTypeFactory.dart';
import 'package:allbinary/org/allbinary/game/GameMode.dart';
import 'package:allbinary/org/allbinary/game/PlayerTypesFactory.dart';
import 'package:allbinary/org/allbinary/game/GameInfoData.dart';
import 'package:allbinary/org/allbinary/game/GameType.dart';
import 'package:allbinary/org/allbinary/game/PlayerType.dart';

class GameInfo {
    static final GameInfo NONE = GameInfo(GameTypeFactory.getInstance().NONE, GameMode.NONE, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, -1, -1);
    static const String LEVEL_NAME = "LEVEL";
    late LogUtil logUtil;
    late GameInfoData gameInfoData;
    late GameType gameType;
    late GameMode gameMode;
    late PlayerType playerType;
    int highestLevel = 0;
    int currentLevel = 0;
    late String NEW_LEVEL;
    late String SET_CURRENT_LEVEL;
    late String NEXT_GAME_LEVEL;

    // Java field initializers run after the base constructor
    void initFieldsGameInfo() {
    this.logUtil = LogUtil.getInstance();
    this.gameInfoData = GameInfoData.getInstance();
    
    
    
    this.highestLevel = 0;
    
    this.NEW_LEVEL = "New Level: ";
    this.SET_CURRENT_LEVEL = "setCurrentLevel";
    this.NEXT_GAME_LEVEL = "nextGameLevel";
    }
    

    GameInfo(GameType gameType, GameMode gameMode, PlayerType playerType, int highestLevel, int currentLevel) {
        this.initFieldsGameInfo();
        this.gameType = gameType;
        this.gameMode = gameMode;
        this.setHighestLevel(highestLevel);
        this.currentLevel = currentLevel;
        this.playerType = playerType;
    }
    

    GameType getGameType() {
        return this.gameType;
    }
    

    GameMode getGameMode() {
        return this.gameMode;
    }
    

    PlayerType getPlayerType() {
        return this.playerType;
    }
    

    int getHighestLevel() {
        return this.highestLevel;
    }
    

    void setHighestLevel(int highestLevel) {
        this.highestLevel = highestLevel;
    }
    

    int getCurrentLevel() {
        return this.currentLevel;
    }
    

    void setCurrentLevel(int currentLevel) {
        this.currentLevel = currentLevel;
        this.logUtil.putF(StringMaker().append(this.NEW_LEVEL).appendint(this.getCurrentLevel()).toString(), this, this.SET_CURRENT_LEVEL);
    }
    

    void nextGameLevel() {
        if (this.getCurrentLevel() < this.getHighestLevel()) {
            this.currentLevel++;
        }
        this.logUtil.putF(StringMaker().append(CommonLabels.getInstance().NEXT).append(CommonSeps.getInstance().SPACE).append(this.NEW_LEVEL).appendint(this.getCurrentLevel()).toString(), this, this.NEXT_GAME_LEVEL);
    }
    

    void previousGameLevel() {
        if (this.getCurrentLevel() > 1) {
            this.currentLevel--;
        }
    }
    

    bool isLastLevel() {
        if (this.getCurrentLevel() >= this.getHighestLevel()) {
            return true;
        } else {
            return false;
        }
    }
    

    ABHashtable toHashtable() {
        final ABHashtable hashtable = StdUtil.getInstance().createHashtable();
        hashtable.put(this.gameInfoData.GAME_TYPE, this.getGameType().toString());
        hashtable.put(this.gameInfoData.GAME_MODE, this.gameMode.toString());
        hashtable.put(this.gameInfoData.PLAYER_TYPE, this.playerType.toString());
        hashtable.put(this.gameInfoData.HIGHEST_LEVEL, jstr(this.getHighestLevel()));
        hashtable.put(this.gameInfoData.CURRENT_LEVEL, jstr(this.currentLevel));
        return hashtable;
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        final CommonSeps commonSeps = CommonSeps.getInstance();
        stringBuffer.append(this.gameInfoData.GAME_TYPE);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.append(this.getGameType().toString());
        stringBuffer.append(commonSeps.COMMA_SEP);
        stringBuffer.append(this.gameInfoData.GAME_MODE);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.append(this.gameMode.toString());
        stringBuffer.append(commonSeps.COMMA_SEP);
        stringBuffer.append(this.gameInfoData.PLAYER_TYPE);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.append(StringUtil.getInstance().toString1(this.playerType));
        stringBuffer.append(commonSeps.COMMA_SEP);
        stringBuffer.append(this.gameInfoData.HIGHEST_LEVEL);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.appendint(this.getHighestLevel());
        stringBuffer.append(commonSeps.COMMA_SEP);
        stringBuffer.append(this.gameInfoData.CURRENT_LEVEL);
        stringBuffer.append(commonSeps.EQUALS);
        stringBuffer.appendint(this.currentLevel);
        return stringBuffer.toString();
    }
}

