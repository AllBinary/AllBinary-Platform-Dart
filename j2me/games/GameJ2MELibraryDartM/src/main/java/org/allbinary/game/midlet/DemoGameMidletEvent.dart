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
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/game/midlet/DemoGameMidletState.dart';

class DemoGameMidletEvent extends AllBinaryEventObject {
    late DemoGameMidletState demoGameMidletState;

    // Java field initializers run after the base constructor
    void initFieldsDemoGameMidletEvent() {
    
    }
    

    DemoGameMidletEvent(Object anyType, DemoGameMidletState demoGameMidletState) : super(anyType) {
        this.initFieldsDemoGameMidletEvent();
        
        this.demoGameMidletState = demoGameMidletState;
    }
    

    void init(Object anyType) {
        this.setSource(anyType);
    }
    

    void setDemoGameMidletState(DemoGameMidletState demoGameMidletState) {
        this.demoGameMidletState = demoGameMidletState;
    }
    

    DemoGameMidletState getDemoGameMidletState() {
        return this.demoGameMidletState;
    }
}

