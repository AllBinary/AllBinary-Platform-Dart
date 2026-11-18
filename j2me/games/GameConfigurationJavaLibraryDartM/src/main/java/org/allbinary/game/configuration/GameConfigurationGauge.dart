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
import 'package:allbinary/javax/microedition/lcdui/Gauge.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfiguration.dart';

class GameConfigurationGauge extends Gauge {
    

    GameConfigurationGauge(GameConfiguration gameConfiguration) : super(gameConfiguration.getName(), gameConfiguration.isModifiable(), (gameConfiguration.getMaxValue()).toInt() - (gameConfiguration.getMinValue()).toInt(), (gameConfiguration.getValue()).toInt() - (gameConfiguration.getMinValue()).toInt()) {
        
    }
}

