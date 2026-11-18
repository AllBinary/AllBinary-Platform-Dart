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
// package org.allbinary.game.input.mapping

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/input/mapping/event/InputMappingEvent.dart';
import 'package:allbinary/org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface.dart';
import 'package:allbinary/org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEventFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/button/BasicTouchInputFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';

class MotionInputMappingEventListener implements InputMappingEventListenerInterface {
    

    @override
    void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    @override
    void onInputMappingEvent(InputMappingEvent inputMappingEvent) {
        GameKeyCompleteMotionGestureInputEventFactory.getInstance().updateAll();
        BasicTouchInputFactory.getInstance().updateAll(inputMappingEvent.getInputToGameKeyMapping());
    }
}

