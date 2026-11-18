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
import 'package:allbinary/org/allbinary/game/input/CompleteMotionGestureInputEvent.dart';
import 'package:allbinary/org/allbinary/game/input/GameKey.dart';
import 'package:allbinary/org/allbinary/game/input/GameKeyEventSourceInterface.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';
import 'package:allbinary/org/allbinary/game/input/mapping/InputToGameKeyMapping.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/MotionGestureInput.dart';

class GameKeyCompleteMotionGestureInputEvent extends CompleteMotionGestureInputEvent implements GameKeyEventSourceInterface {
    late GameKey gameKey;
    late GameKeyEvent gameKeyEvent;

    // Java field initializers run after the base constructor
    void initFieldsGameKeyCompleteMotionGestureInputEvent() {
    this.gameKey = GameKey.NULL_GAME_KEY;
    this.gameKeyEvent = GameKeyEvent.NONE;
    }
    

    GameKeyCompleteMotionGestureInputEvent(String name, MotionGestureInput motionGestureInput, InputToGameKeyMapping inputToGameKeyMapping) : super(name, motionGestureInput) {
        this.initFieldsGameKeyCompleteMotionGestureInputEvent();
        
    }
    

    @override
    int getSourceId() {
        return 0;
    }
    

    void update() {
    }
    

    void setGameKeyEvent(GameKeyEvent gameKeyEvent) {
        this.gameKeyEvent = gameKeyEvent;
    }
    

    GameKeyEvent getGameKeyEvent() {
        return this.gameKeyEvent;
    }
    

    void setGameKey(GameKey gameKey) {
        this.gameKey = gameKey;
    }
    

    GameKey getGameKey() {
        return this.gameKey;
    }
}

