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
// package org.allbinary.game.configuration.event

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfiguration.dart';
import 'package:allbinary/org/allbinary/game/configuration/event/BaseChangedGameFeatureListener.dart';

class ChangedGameFeatureListener extends BaseChangedGameFeatureListener {
    static final ChangedGameFeatureListener gameFeatureListener = ChangedGameFeatureListener();
    

    static ChangedGameFeatureListener getInstance() {
        return ChangedGameFeatureListener.gameFeatureListener;
    }
    

    bool isChangedGameConfiguration(GameConfiguration gameConfiguration) {
        return this.list.contains(gameConfiguration);
    }
}

