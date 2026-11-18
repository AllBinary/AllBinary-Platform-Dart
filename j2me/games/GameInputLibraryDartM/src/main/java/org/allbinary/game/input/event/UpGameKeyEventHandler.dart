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
// package org.allbinary.game.input.event

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/input/LocalPlayerInputIdFactory.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventListenerInterface.dart';
import 'package:allbinary/org/allbinary/game/input/event/UpGameKeyEventHandlerBase.dart';

class UpGameKeyEventHandler extends UpGameKeyEventHandlerBase {
    static final UpGameKeyEventHandler instance = UpGameKeyEventHandler();
    static final List<UpGameKeyEventHandlerBase?> instanceArray = <UpGameKeyEventHandlerBase?>[UpGameKeyEventHandlerBase(), UpGameKeyEventHandlerBase(), UpGameKeyEventHandlerBase(), UpGameKeyEventHandlerBase(), UpGameKeyEventHandlerBase(), UpGameKeyEventHandlerBase()];
    late LocalPlayerInputIdFactory playerInputIdFactory;

    // Java field initializers run after the base constructor
    void initFieldsUpGameKeyEventHandler() {
    this.playerInputIdFactory = LocalPlayerInputIdFactory.getInstance();
    }
    

    static UpGameKeyEventHandler getInstance() {
        return UpGameKeyEventHandler.instance;
    }
    

    UpGameKeyEventHandlerBase getInstanceForDevice(int deviceId) {
        final int playerInputId = this.playerInputIdFactory.getPlayerForDevice(deviceId);
        return UpGameKeyEventHandler.instanceArray[playerInputId]!;
    }
    

    UpGameKeyEventHandlerBase getInstanceForPlayer(int playerInputId) {
        return UpGameKeyEventHandler.instanceArray[playerInputId]!;
    }
    

    UpGameKeyEventHandler() {
        this.initFieldsUpGameKeyEventHandler();
    }
    

    @override
    void removeAllListeners() {
        super.removeAllListeners();
        for (int index = UpGameKeyEventHandler.instanceArray.length - 1; index >= 0; index--) {
            UpGameKeyEventHandler.instanceArray[index]!.removeAllListeners();
        }
    }
    

    @override
    void removeListenerSingleThreaded(EventListenerInterface eventListenerInterface) {
        super.removeListenerSingleThreaded(eventListenerInterface);
        for (int index = UpGameKeyEventHandler.instanceArray.length - 1; index >= 0; index--) {
            UpGameKeyEventHandler.instanceArray[index]!.removeListenerSingleThreaded(eventListenerInterface);
        }
    }
    

    @override
    void removeListener(EventListenerInterface eventListenerInterface) {
        super.removeListener(eventListenerInterface);
        for (int index = UpGameKeyEventHandler.instanceArray.length - 1; index >= 0; index--) {
            UpGameKeyEventHandler.instanceArray[index]!.removeListener(eventListenerInterface);
        }
    }
}

