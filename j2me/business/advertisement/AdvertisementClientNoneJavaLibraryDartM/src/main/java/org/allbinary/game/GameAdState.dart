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
import 'package:allbinary/org/allbinary/business/advertisement/GameAdStateBase.dart';
import 'package:allbinary/org/allbinary/business/advertisement/AdConfiguration.dart';
import 'package:allbinary/org/allbinary/input/event/VirtualKeyboardEvent.dart';
import 'package:allbinary/org/allbinary/input/event/VirtualKeyboardEventHandler.dart';
import 'package:allbinary/org/allbinary/input/event/VirtualKeyboardEventListenerInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';

class GameAdState extends GameAdStateBase implements VirtualKeyboardEventListenerInterface {
    

    GameAdState(AdConfiguration adConfiguration) : super(adConfiguration) {
        
        VirtualKeyboardEventHandler.getInstance().addListenerInterface(this);
    }
    

    @override
    void onVirtualKeyboardEvent(VirtualKeyboardEvent virtualKeyboardEvent) {
    }
    

    @override
    void onEvent(AllBinaryEventObject eventObject) {
        super.onEvent(eventObject);
    }
}

