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
// package org.allbinary.game.tracking

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventListenerInterface.dart';
import 'package:allbinary/org/allbinary/logic/util/event/handler/BasicEventHandler.dart';
import 'package:allbinary/org/allbinary/game/tracking/TrackingEventListenerInterface.dart';
import 'package:allbinary/org/allbinary/game/tracking/TrackingEvent.dart';

class TrackingEventHandler extends BasicEventHandler {
    static final TrackingEventHandler instance = TrackingEventHandler();
    

    static TrackingEventHandler getInstance() {
        return TrackingEventHandler.instance;
    }
    

    TrackingEventHandler() {
    }
    

    @override
    void process(AllBinaryEventObject eventObject, EventListenerInterface eventListenerInterface) {
        final TrackingEventListenerInterface trackingEventListenerInterface = (eventListenerInterface as TrackingEventListenerInterface);
        trackingEventListenerInterface.onMovement((eventObject as TrackingEvent));
    }
}

