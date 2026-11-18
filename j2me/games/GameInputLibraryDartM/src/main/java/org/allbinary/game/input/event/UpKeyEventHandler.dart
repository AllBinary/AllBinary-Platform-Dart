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
import 'package:allbinary/org/allbinary/game/input/event/UpKeyEventHandlerBase.dart';

class UpKeyEventHandler extends UpKeyEventHandlerBase {
    static final UpKeyEventHandler instance = UpKeyEventHandler();
    static final List<UpKeyEventHandlerBase?> instanceArray = <UpKeyEventHandlerBase?>[UpKeyEventHandlerBase(), UpKeyEventHandlerBase(), UpKeyEventHandlerBase(), UpKeyEventHandlerBase(), UpKeyEventHandlerBase(), UpKeyEventHandlerBase()];
    late LocalPlayerInputIdFactory playerInputIdFactory;

    // Java field initializers run after the base constructor
    void initFieldsUpKeyEventHandler() {
    this.playerInputIdFactory = LocalPlayerInputIdFactory.getInstance();
    }
    

    static UpKeyEventHandler getInstance() {
        return UpKeyEventHandler.instance;
    }
    

    UpKeyEventHandlerBase getInstanceForDevice(int deviceId) {
        final int playerInputId = this.playerInputIdFactory.getPlayerForDevice(deviceId);
        return UpKeyEventHandler.instanceArray[playerInputId]!;
    }
    

    UpKeyEventHandlerBase getInstanceForPlayer(int playerInputId) {
        return UpKeyEventHandler.instanceArray[playerInputId]!;
    }
    

    UpKeyEventHandler() {
        this.initFieldsUpKeyEventHandler();
    }
    

    @override
    void removeAllListeners() {
        super.removeAllListeners();
        for (int index = UpKeyEventHandler.instanceArray.length - 1; index >= 0; index--) {
            UpKeyEventHandler.instanceArray[index]!.removeAllListeners();
        }
    }
    

    @override
    void removeListenerSingleThreaded(EventListenerInterface eventListenerInterface) {
        super.removeListenerSingleThreaded(eventListenerInterface);
        for (int index = UpKeyEventHandler.instanceArray.length - 1; index >= 0; index--) {
            UpKeyEventHandler.instanceArray[index]!.removeListenerSingleThreaded(eventListenerInterface);
        }
    }
    

    @override
    void removeListener(EventListenerInterface eventListenerInterface) {
        super.removeListener(eventListenerInterface);
        for (int index = UpKeyEventHandler.instanceArray.length - 1; index >= 0; index--) {
            UpKeyEventHandler.instanceArray[index]!.removeListener(eventListenerInterface);
        }
    }
}

