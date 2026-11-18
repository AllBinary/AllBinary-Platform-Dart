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
// package org.allbinary.game.midlet

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/midlet/DemoGameMidletState.dart';

class DemoGameMidletStateFactory {
    static DemoGameMidletStateFactory STATE = DemoGameMidletStateFactory();
    late DemoGameMidletState NONE;
    late DemoGameMidletState START_DEMO;
    late DemoGameMidletState START_GAME;
    late DemoGameMidletState START_INPUT_MAPPING;

    // Java field initializers run after the base constructor
    void initFieldsDemoGameMidletStateFactory() {
    this.NONE = DemoGameMidletState();
    this.START_DEMO = DemoGameMidletState();
    this.START_GAME = DemoGameMidletState();
    this.START_INPUT_MAPPING = DemoGameMidletState();
    }
    

    DemoGameMidletStateFactory() {
        this.initFieldsDemoGameMidletStateFactory();
    }
    

    static DemoGameMidletStateFactory getInstance() {
        return DemoGameMidletStateFactory.STATE;
    }
}

