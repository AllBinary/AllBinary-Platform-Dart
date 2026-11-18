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
// package org.allbinary.game.input.motion.action

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.dart';

class GameKeyCompleteMotionGestureInputEventFactory {
    static final GameKeyCompleteMotionGestureInputEventFactory SINGLETON = GameKeyCompleteMotionGestureInputEventFactory();
    late LogUtil logUtil;
    late BasicArrayList eventList;

    // Java field initializers run after the base constructor
    void initFieldsGameKeyCompleteMotionGestureInputEventFactory() {
    this.logUtil = LogUtil.getInstance();
    this.eventList = BasicArrayListD();
    }

    GameKeyCompleteMotionGestureInputEventFactory() {
        this.initFieldsGameKeyCompleteMotionGestureInputEventFactory();
    }
    

    static GameKeyCompleteMotionGestureInputEventFactory getInstance() {
        return GameKeyCompleteMotionGestureInputEventFactory.SINGLETON;
    }
    

    void add(GameKeyCompleteMotionGestureInputEvent gameKeyCompleteMotionGestureInputEvent) {
        this.eventList.add(gameKeyCompleteMotionGestureInputEvent);
    }
    

    void updateAll() {
        this.logUtil.putF(StringMaker().append(CommonLabels.getInstance().START_LABEL).appendint(this.eventList.size()).toString(), this, "updateAll");
        for (int index = this.eventList.size() - 1; index >= 0; index--) {
            GameKeyCompleteMotionGestureInputEvent gameKeyCompleteMotionGestureInputEvent = (this.eventList.objectArray[index]! as GameKeyCompleteMotionGestureInputEvent);
            gameKeyCompleteMotionGestureInputEvent.update();
        }
    }
}

