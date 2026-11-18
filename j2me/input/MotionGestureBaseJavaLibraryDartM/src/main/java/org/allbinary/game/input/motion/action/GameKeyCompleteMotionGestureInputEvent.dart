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
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEventFactory.dart';
import 'package:allbinary/org/allbinary/game/input/mapping/InputToGameKeyMapping.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/MotionGestureInput.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEventFactory.dart';

class GameKeyCompleteMotionGestureInputEvent extends CompleteMotionGestureInputEvent implements GameKeyEventSourceInterface {
    late GameKeyEventFactory gameKeyEventFactory;
    int SOURCE_ID = 0;
    late GameKey gameKey;
    late GameKeyEvent gameKeyEvent;
    late InputToGameKeyMapping inputToGameKeyMapping;

    // Java field initializers run after the base constructor
    void initFieldsGameKeyCompleteMotionGestureInputEvent() {
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance();
    this.SOURCE_ID = this.gameKeyEventFactory.MOTION_GESTURE_SOURCE_ID;
    this.gameKey = GameKey.NULL_GAME_KEY;
    this.gameKeyEvent = GameKeyEvent.NONE;
    
    }
    

    GameKeyCompleteMotionGestureInputEvent(String name, MotionGestureInput motionGestureInput, InputToGameKeyMapping inputToGameKeyMapping) : super(name, motionGestureInput) {
        this.initFieldsGameKeyCompleteMotionGestureInputEvent();
        
        this.inputToGameKeyMapping = inputToGameKeyMapping;
        GameKeyCompleteMotionGestureInputEventFactory.getInstance().add(this);
        this.update();
    }
    

    @override
    int getSourceId() {
        return this.SOURCE_ID;
    }
    

    void update() {
        try {
            this.setGameKey(this.inputToGameKeyMapping.getInstance1(this.getMotionGestureInput().getId()));
            this.setGameKeyEvent(this.gameKeyEventFactory.getInstanceForInput(this, this.getGameKey()));
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.UPDATE, e);
            }
        }
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

