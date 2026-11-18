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
// package org.allbinary.game.init

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/init/GameInitializationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/init/BaseGameInitialization.dart';
import 'package:allbinary/org/allbinary/game/init/GameInitializationInterface.dart';

class BasicBuildGameInitializerFactory implements GameInitializationInterfaceFactoryInterface {
    static BasicBuildGameInitializerFactory NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY = BasicBuildGameInitializerFactory();
    

    @override
    GameInitializationInterface getInstance() {
        return BaseGameInitialization.NULL_BASE_GAME_INITIALIZATION;
    }
}

