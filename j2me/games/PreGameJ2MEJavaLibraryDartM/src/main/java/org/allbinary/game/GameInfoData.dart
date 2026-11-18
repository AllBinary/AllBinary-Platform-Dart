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

class GameInfoData {
    static final GameInfoData instance = GameInfoData();
    late String GAME_TYPE;
    late String GAME_MODE;
    late String PLAYER_TYPE;
    late String HIGHEST_LEVEL;
    late String CURRENT_LEVEL;
    late String SOFTWARE_INFORMATION;

    // Java field initializers run after the base constructor
    void initFieldsGameInfoData() {
    this.GAME_TYPE = "GAME_TYPE";
    this.GAME_MODE = "GAME_MODE";
    this.PLAYER_TYPE = "PLAYER_TYPE";
    this.HIGHEST_LEVEL = "HIGHEST_LEVEL";
    this.CURRENT_LEVEL = "CURRENT_LEVEL";
    this.SOFTWARE_INFORMATION = "SOFTWARE_INFORMATION";
    }
    

    static GameInfoData getInstance() {
        return GameInfoData.instance;
    }
    

    GameInfoData() {
        this.initFieldsGameInfoData();
    }
}

