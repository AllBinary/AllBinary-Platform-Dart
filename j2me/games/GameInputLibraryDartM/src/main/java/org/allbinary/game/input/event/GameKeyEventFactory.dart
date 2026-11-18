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
import 'package:allbinary/org/allbinary/game/input/GameKeyEventSourceInterface.dart';
import 'package:allbinary/org/allbinary/game/input/Input.dart';
import 'package:allbinary/org/allbinary/game/input/InputFactory.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';

class GameKeyEventFactory {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    late LogUtil logUtil;
    int TOUCH_BUTTON_SOURCE_ID = 0;
    int MOTION_GESTURE_SOURCE_ID = 0;
    int MAX_SOURCES = 0;
    late List<List<GameKeyEvent?>?> ARRAY;

    // Java field initializers run after the base constructor
    void initFieldsGameKeyEventFactory() {
    this.logUtil = LogUtil.getInstance();
    this.TOUCH_BUTTON_SOURCE_ID = 2;
    this.MOTION_GESTURE_SOURCE_ID = 3;
    this.MAX_SOURCES = 4;
    this.ARRAY = List<List<GameKeyEvent?>>.generate(this.MAX_SOURCES, (_) => List<GameKeyEvent?>.filled(InputFactory.getInstance().MAX, null));
    }
    

    static GameKeyEventFactory getInstance() {
        if (GameKeyEventFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            GameKeyEventFactory.instance = GameKeyEventFactory();
        }
        return (GameKeyEventFactory.instance as GameKeyEventFactory);
    }
    

    GameKeyEventFactory() {
        this.initFieldsGameKeyEventFactory();
    }
    

    void init() {
        final NullUtil nullUtil = NullUtil.getInstance();
        final int size = InputFactory.getInstance().MAX;
        for (int index = this.MAX_SOURCES; --index >= 0; ) {
            for (int index2 = size; --index2 >= 0; ) {
                this.ARRAY[index]![index2] = GameKeyEvent.createEvent(nullUtil.NULL_OBJECT, index, index2);
            }
        }
    }
    

    GameKeyEvent getInstanceForKey(GameKeyEventSourceInterface anyType, int key) {
        final GameKeyEvent gameKeyEvent = this.ARRAY[anyType.getSourceId()]![key]!;
        return gameKeyEvent;
    }
    

    GameKeyEvent getInstanceForInput(GameKeyEventSourceInterface anyType, Input input) {
        final GameKeyEvent gameKeyEvent = this.ARRAY[anyType.getSourceId()]![input.getId()]!;
        return gameKeyEvent;
    }
}

