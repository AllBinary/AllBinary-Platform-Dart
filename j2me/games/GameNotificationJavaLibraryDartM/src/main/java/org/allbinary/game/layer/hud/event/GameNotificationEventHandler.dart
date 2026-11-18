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
// package org.allbinary.game.layer.hud.event

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventListenerInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/event/NullEventListener.dart';
import 'package:allbinary/org/allbinary/logic/util/event/handler/BasicEventHandler.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/game/layer/hud/event/GameNotificationListenerInterface.dart';
import 'package:allbinary/org/allbinary/game/layer/hud/event/GameNotificationEvent.dart';

class GameNotificationEventHandler extends BasicEventHandler {
    static final GameNotificationEventHandler instance = GameNotificationEventHandler();
    bool enabled = false;

    // Java field initializers run after the base constructor
    void initFieldsGameNotificationEventHandler() {
    this.enabled = true;
    }
    

    GameNotificationEventHandler() {
        this.initFieldsGameNotificationEventHandler();
    }
    

    @override
    void removeAllListeners() {
        EventListenerInterface eventListenerInterface = NullEventListener.NULL_EVENT_LISTENER;
        BasicArrayList list = this.eventListenerInterfaceList;
        if (list.size() > 0) {
            eventListenerInterface = (list.objectArray[0]! as EventListenerInterface);
        }
        super.removeAllListeners();
        if (eventListenerInterface != NullEventListener.NULL_EVENT_LISTENER) {
            this.addListenerInterface(eventListenerInterface);
        }
    }
    

    static GameNotificationEventHandler getInstance() {
        return GameNotificationEventHandler.instance;
    }
    

    @override
    void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        if (!this.enabled) {
            return;
        }
        final GameNotificationListenerInterface gameNotificationListenerInterface = (eventListenerInterface as GameNotificationListenerInterface);
        gameNotificationListenerInterface.onGameNotificationEvent((eventObject as GameNotificationEvent));
    }
}

