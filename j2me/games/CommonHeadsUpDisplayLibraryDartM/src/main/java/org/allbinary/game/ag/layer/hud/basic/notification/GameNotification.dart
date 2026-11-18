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
import 'package:allbinary/org/allbinary/game/layer/hud/event/GameNotificationEvent.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/java/bool/BooleanFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class GameNotification {
    static final GameNotificationEvent NULL_GAME_NOTIFICATION_EVENT = GameNotificationEvent(NullUtil.getInstance().NULL_OBJECT, StringUtil.getInstance().EMPTY_STRING, 0, BasicColorFactory.getInstance().RED, BooleanFactory.getInstance().FALSE);
    late BasicArrayList stringList;
    late BasicArrayList timeList;
    late BasicArrayList colorList;

    // Java field initializers run after the base constructor
    void initFieldsGameNotification() {
    this.stringList = BasicArrayListD();
    this.timeList = BasicArrayListD();
    this.colorList = BasicArrayListD();
    }

    GameNotification() {
        this.initFieldsGameNotification();
    }
    

    void add(String string, int seconds, BasicColor basicColor) {
        if (!this.stringList.contains(string)) {
            this.stringList.add(string);
            this.timeList.add(seconds);
            this.colorList.add(basicColor);
        }
    }
    

    void clear() {
        this.stringList.clear();
        this.timeList.clear();
        this.colorList.clear();
    }
    

    int getSize() {
        return this.stringList.size();
    }
}

