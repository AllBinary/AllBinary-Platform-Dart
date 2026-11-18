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
import 'package:allbinary/org/allbinary/game/input/CompleteMotionGestureInputEventListener.dart';
import 'package:allbinary/org/allbinary/game/input/event/DownGameKeyEventHandler.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';
import 'package:allbinary/org/allbinary/game/input/event/UpGameKeyEventHandler.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.dart';

class GameKeyFromMotionGestureEventListener extends CompleteMotionGestureInputEventListener {
    late LogUtil logUtil;
    late GameKeyEvent previousGameKeyEvent;

    // Java field initializers run after the base constructor
    void initFieldsGameKeyFromMotionGestureEventListener() {
    this.logUtil = LogUtil.getInstance();
    this.previousGameKeyEvent = GameKeyEvent.NONE;
    }

    GameKeyFromMotionGestureEventListener() {
        this.initFieldsGameKeyFromMotionGestureEventListener();
    }
    

    @override
    void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    @override
    void onCompleteMotionGestureInputEvent(CompleteMotionGestureInputEvent completeMotionGestureInputEvent) {
        try {
            GameKeyCompleteMotionGestureInputEvent gameKeyCompleteMotionGestureInputEvent = (completeMotionGestureInputEvent as GameKeyCompleteMotionGestureInputEvent);
            GameKeyEvent gameKeyEvent = gameKeyCompleteMotionGestureInputEvent.getGameKeyEvent();
            if (!identical(gameKeyEvent, this.previousGameKeyEvent)) {
                if (this.previousGameKeyEvent != GameKeyEvent.NONE) {
                    UpGameKeyEventHandler.getInstance().fireEvent(this.previousGameKeyEvent);
                }
                this.previousGameKeyEvent = gameKeyEvent;
                if (gameKeyEvent != null && gameKeyEvent != GameKeyEvent.NONE) {
                    DownGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent);
                }
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "onCompleteMotionGestureInputEvent", e);
            }
        }
    }
}

