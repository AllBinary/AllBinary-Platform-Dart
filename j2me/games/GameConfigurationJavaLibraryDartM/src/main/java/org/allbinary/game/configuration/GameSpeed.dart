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
// package org.allbinary.game.configuration

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationCentral.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfiguration.dart';

class GameSpeed {
    static final GameSpeed instance = GameSpeed();
    

    int getSpeed() {
        GameConfiguration speedGameConfiguration = GameConfigurationCentral.getInstance().SPEED;
        return ((speedGameConfiguration.getMaxValue()).toInt() - (speedGameConfiguration.getValue()).toInt() + 1);
    }
    

    int getDelay() {
        GameConfiguration speedGameConfiguration = GameConfigurationCentral.getInstance().SPEED;
        return 19 * ((speedGameConfiguration.getMaxValue()).toInt() - (speedGameConfiguration.getValue()).toInt());
    }
    

    static GameSpeed getInstance() {
        return GameSpeed.instance;
    }
}

