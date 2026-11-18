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
// package org.allbinary.game.configuration.persistance

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/KeyValuePersistance.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/GamePersistanceStrings.dart';

class GameConfigurationPersistanceSingleton extends KeyValuePersistance {
    static GameConfigurationPersistanceSingleton GAME_PERSISTANCE = GameConfigurationPersistanceSingleton();
    

    static GameConfigurationPersistanceSingleton getInstance() {
        return GameConfigurationPersistanceSingleton.GAME_PERSISTANCE;
    }
    

    GameConfigurationPersistanceSingleton() : super(GamePersistanceStrings.getInstance().SAVED_GAME_CONFIGURATION_RECORD_ID) {
        
    }
}

