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
// package org.allbinary.game.ag.layer.hud.basic.notification

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/game/graphics/hud/BasicHud.dart';
import 'package:allbinary/org/allbinary/game/graphics/hud/BasicHudFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/hud/event/GameNotificationEvent.dart';
import 'package:allbinary/org/allbinary/game/layer/hud/event/GameNotificationListenerInterface.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/hud/basic/notification/GameNotification.dart';

class GameNotificationHud extends BasicHud implements GameNotificationListenerInterface {
    static final GameNotificationHud NULL_GAME_NOTIFICATION = GameNotificationHud(BasicHudFactory.getInstance().TOPCENTER, BasicHudFactory.getInstance().HORIZONTAL, 0, BasicColorFactory.getInstance().RED);
    late String METHOD_NAME;
    late GameNotificationEvent lastGameNotificationEvent;

    // Java field initializers run after the base constructor
    void initFieldsGameNotificationHud() {
    this.METHOD_NAME = "onGameNotificationEvent";
    this.lastGameNotificationEvent = GameNotification.NULL_GAME_NOTIFICATION_EVENT;
    }
    

    GameNotificationHud(int location, int direction, int bufferZone, BasicColor basicColor) : super(location, direction, bufferZone, basicColor) {
        this.initFieldsGameNotificationHud();
        
    }
    

    @override
    void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    @override
    void onGameNotificationEvent(GameNotificationEvent gameNotificationEvent) {
        if (!identical(this.lastGameNotificationEvent, gameNotificationEvent)) {
            this.lastGameNotificationEvent = gameNotificationEvent;
            this.logUtil.putF(gameNotificationEvent.getString(), this, this.METHOD_NAME);
        }
        this.add(gameNotificationEvent.getString(), gameNotificationEvent.getSeconds(), gameNotificationEvent.getBasicColorP(), gameNotificationEvent.getPermanent());
    }
    

    void add(String string, int seconds, BasicColor basicColor, bool permanent) {
    }
    

    void processTick() {
    }
    

    void paint(Graphics graphics) {
    }
    

    void clear() {
    }
}

