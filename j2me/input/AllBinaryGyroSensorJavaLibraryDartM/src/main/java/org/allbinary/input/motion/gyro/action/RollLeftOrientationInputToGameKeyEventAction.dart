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
// package org.allbinary.input.motion.gyro.action

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/input/PlatformInputMappingFactory.dart';
import 'package:allbinary/org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.dart';
import 'package:allbinary/org/allbinary/input/gyro/OrientationMotionGestureFactory.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';

class RollLeftOrientationInputToGameKeyEventAction extends GameKeyCompleteMotionGestureInputEvent {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    

    static GameKeyCompleteMotionGestureInputEvent getInstance() {
        if (RollLeftOrientationInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT) {
            RollLeftOrientationInputToGameKeyEventAction.instance = RollLeftOrientationInputToGameKeyEventAction();
        }
        return (RollLeftOrientationInputToGameKeyEventAction.instance as GameKeyCompleteMotionGestureInputEvent);
    }
    

    RollLeftOrientationInputToGameKeyEventAction() : super("Roll Left Action", OrientationMotionGestureFactory.getInstance().ROLL_LEFT, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping()) {
        
    }
}

