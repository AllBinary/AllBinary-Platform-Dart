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
import 'package:allbinary/org/allbinary/game/graphics/hud/BasicHudFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/hud/basic/notification/NoGameGameNotificationHud.dart';

class NoGameNotificationHudSingleton {
    static final NoGameNotificationHudSingleton instance = NoGameNotificationHudSingleton();
    late LogUtil logUtil;
    late GameNotificationHud gameNotificationHud;

    // Java field initializers run after the base constructor
    void initFieldsNoGameNotificationHudSingleton() {
    this.logUtil = LogUtil.getInstance();
    this.gameNotificationHud = GameNotificationHud.NULL_GAME_NOTIFICATION;
    }
    

    static NoGameNotificationHudSingleton getInstance() {
        return NoGameNotificationHudSingleton.instance;
    }
    

    NoGameNotificationHudSingleton() {
        this.initFieldsNoGameNotificationHudSingleton();
        try {
            final BasicHudFactory basicHudFactory = BasicHudFactory.getInstance();
            this.gameNotificationHud = NoGameGameNotificationHud();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
            }
        }
    }
    

    GameNotificationHud getGameNotificationHud() {
        return this.gameNotificationHud;
    }
}

