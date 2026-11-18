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
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventListenerInterface.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/input/event/PressGameKeyEventHandler.dart';
import 'package:allbinary/org/allbinary/game/input/event/UpGameKeyEventHandler.dart';
import 'package:allbinary/org/allbinary/game/input/event/DownGameKeyEventHandler.dart';

class GameKeyEventHandler {
    static final GameKeyEventHandler instance = GameKeyEventHandler();
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late PressGameKeyEventHandler pressGameKeyEventHandler;
    late UpGameKeyEventHandler upGameKeyEventHandler;
    late DownGameKeyEventHandler downGameKeyEventHandler;

    // Java field initializers run after the base constructor
    void initFieldsGameKeyEventHandler() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.pressGameKeyEventHandler = PressGameKeyEventHandler.getInstance();
    this.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance();
    this.downGameKeyEventHandler = DownGameKeyEventHandler.getInstance();
    }

    GameKeyEventHandler() {
        this.initFieldsGameKeyEventHandler();
    }
    

    static GameKeyEventHandler getInstance() {
        return GameKeyEventHandler.instance;
    }
    

    void removeAllListeners() {
        this.pressGameKeyEventHandler.removeAllListeners();
        this.upGameKeyEventHandler.removeAllListeners();
        this.downGameKeyEventHandler.removeAllListeners();
    }
    

    void addListenerForPlayer(EventListenerInterface eventListenerInterface, int playerInputId) {
        this.logUtil.putF(eventListenerInterface.toString(), this, this.commonStrings.ADD_LISTENER);
        this.pressGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface);
        this.upGameKeyEventHandler.getInstanceForPlayer(playerInputId).addListenerSingleThreaded(eventListenerInterface);
        this.downGameKeyEventHandler.getInstanceForPlayer(playerInputId).addListenerSingleThreaded(eventListenerInterface);
    }
    

    void addListener(EventListenerInterface eventListenerInterface) {
        this.logUtil.putF(eventListenerInterface.toString(), this, this.commonStrings.ADD_LISTENER);
        this.pressGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface);
        this.upGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface);
        this.downGameKeyEventHandler.addListenerSingleThreaded(eventListenerInterface);
    }
    

    void removeListener(EventListenerInterface eventListenerInterface) {
        this.logUtil.putF(eventListenerInterface.toString(), this, this.commonStrings.REMOVE_LISTENER);
        this.pressGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface);
        this.upGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface);
        this.downGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface);
    }
}

