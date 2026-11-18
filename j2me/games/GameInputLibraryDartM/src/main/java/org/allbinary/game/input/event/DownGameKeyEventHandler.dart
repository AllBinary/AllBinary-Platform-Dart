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
import 'package:allbinary/org/allbinary/game/input/event/DownGameKeyEventHandlerBase.dart';

class DownGameKeyEventHandler extends DownGameKeyEventHandlerBase {
    static final DownGameKeyEventHandler instance = DownGameKeyEventHandler();
    static final List<DownGameKeyEventHandlerBase?> instanceArray = <DownGameKeyEventHandlerBase?>[DownGameKeyEventHandlerBase(), DownGameKeyEventHandlerBase(), DownGameKeyEventHandlerBase(), DownGameKeyEventHandlerBase(), DownGameKeyEventHandlerBase(), DownGameKeyEventHandlerBase()];
    late LocalPlayerInputIdFactory playerInputIdFactory;

    // Java field initializers run after the base constructor
    void initFieldsDownGameKeyEventHandler() {
    this.playerInputIdFactory = LocalPlayerInputIdFactory.getInstance();
    }
    

    static DownGameKeyEventHandler getInstance() {
        return DownGameKeyEventHandler.instance;
    }
    

    DownGameKeyEventHandlerBase getInstanceForDevice(int deviceId) {
        final int playerInputId = this.playerInputIdFactory.getPlayerForDevice(deviceId);
        return DownGameKeyEventHandler.instanceArray[playerInputId]!;
    }
    

    DownGameKeyEventHandlerBase getInstanceForPlayer(int playerInputId) {
        return DownGameKeyEventHandler.instanceArray[playerInputId]!;
    }
    

    DownGameKeyEventHandler() {
        this.initFieldsDownGameKeyEventHandler();
    }
    

    @override
    void removeAllListeners() {
        super.removeAllListeners();
        for (int index = DownGameKeyEventHandler.instanceArray.length - 1; index >= 0; index--) {
            DownGameKeyEventHandler.instanceArray[index]!.removeAllListeners();
        }
    }
    

    @override
    void removeListenerSingleThreaded(EventListenerInterface eventListenerInterface) {
        super.removeListenerSingleThreaded(eventListenerInterface);
        for (int index = DownGameKeyEventHandler.instanceArray.length - 1; index >= 0; index--) {
            DownGameKeyEventHandler.instanceArray[index]!.removeListenerSingleThreaded(eventListenerInterface);
        }
    }
    

    @override
    void removeListener(EventListenerInterface eventListenerInterface) {
        super.removeListener(eventListenerInterface);
        for (int index = DownGameKeyEventHandler.instanceArray.length - 1; index >= 0; index--) {
            DownGameKeyEventHandler.instanceArray[index]!.removeListener(eventListenerInterface);
        }
    }
}

