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
// package org.allbinary.input.motion.touch.action

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/input/GameKey.dart';
import 'package:allbinary/org/allbinary/game/input/GameKeyFactory.dart';
import 'package:allbinary/org/allbinary/game/input/PlatformInputMappingFactory.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEventFactory.dart';
import 'package:allbinary/org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/TouchMotionGestureFactory.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class ReleaseTouchInputToGameKeyEventAction extends GameKeyCompleteMotionGestureInputEvent {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    late GameKey NONE;

    // Java field initializers run after the base constructor
    void initFieldsReleaseTouchInputToGameKeyEventAction() {
    this.NONE = GameKeyFactory.getInstance().NONE;
    }
    

    static GameKeyCompleteMotionGestureInputEvent getInstance() {
        if (ReleaseTouchInputToGameKeyEventAction.instance == NullUtil.getInstance().NULL_OBJECT) {
            ReleaseTouchInputToGameKeyEventAction.instance = ReleaseTouchInputToGameKeyEventAction();
        }
        return (ReleaseTouchInputToGameKeyEventAction.instance as GameKeyCompleteMotionGestureInputEvent);
    }
    

    ReleaseTouchInputToGameKeyEventAction() : super("Release Action", TouchMotionGestureFactory.getInstance().RELEASED, PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping()) {
        this.initFieldsReleaseTouchInputToGameKeyEventAction();
        
        try {
            this.setGameKey(this.NONE);
            this.setGameKeyEvent(GameKeyEventFactory.getInstance().getInstanceForInput(this, this.NONE));
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
            }
        }
    }
    

    @override
    void update() {
    }
}

