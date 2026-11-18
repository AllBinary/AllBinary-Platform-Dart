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
// package org.allbinary.game.input

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/layer/hud/event/GameNotificationEvent.dart';
import 'package:allbinary/org/allbinary/game/layer/hud/event/GameNotificationEventHandler.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/logic/java/bool/BooleanFactory.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/media/audio/ErrorSound.dart';
import 'package:allbinary/org/allbinary/media/audio/PrimaryPlayerQueueFactory.dart';
import 'package:allbinary/org/allbinary/media/audio/SelectSound.dart';

class TextNotificationUtil {
    static final TextNotificationUtil instance = TextNotificationUtil();
    late int TWO;
    late bool FALSE;
    late GameNotificationEventHandler gameNotificationEventHandler;

    // Java field initializers run after the base constructor
    void initFieldsTextNotificationUtil() {
    this.TWO = SmallIntegerSingletonFactory.getInstance().getAt(2);
    this.FALSE = BooleanFactory.getInstance().FALSE;
    this.gameNotificationEventHandler = GameNotificationEventHandler.getInstance();
    }

    TextNotificationUtil() {
        this.initFieldsTextNotificationUtil();
    }
    

    static TextNotificationUtil getInstance() {
        return TextNotificationUtil.instance;
    }
    

    void fireError(String message) {
        PrimaryPlayerQueueFactory.getInstance().add(ErrorSound.getInstance());
        this.fire(message);
    }
    

    void fireNew(String message) {
        PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance());
        this.fire(message);
    }
    

    void fireSuccess(String message) {
        PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance());
        this.fire(message);
    }
    

    void fire(String message) {
        GameNotificationEvent gameNotificationEvent = GameNotificationEvent(this, message, this.TWO, BasicColorFactory.getInstance().RED, this.FALSE);
        this.gameNotificationEventHandler.fireEvent(gameNotificationEvent);
    }
}

