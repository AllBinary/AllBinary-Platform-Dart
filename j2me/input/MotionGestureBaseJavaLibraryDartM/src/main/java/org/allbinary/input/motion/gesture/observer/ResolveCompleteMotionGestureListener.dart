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
// package org.allbinary.input.motion.gesture.observer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/input/CompleteMotionGestureInputEventHandler.dart';
import 'package:allbinary/org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.dart';
import 'package:allbinary/org/allbinary/game/input/motion/action/GameKeyFromMotionGestureEventListener.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/MotionGestureToMotionGestureActionAssociation.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface.dart';

class ResolveCompleteMotionGestureListener implements CompleteMotionGestureListenerInterface {
    late LogUtil logUtil;

    // Java field initializers run after the base constructor
    void initFieldsResolveCompleteMotionGestureListener() {
    this.logUtil = LogUtil.getInstance();
    }
    

    ResolveCompleteMotionGestureListener() {
        this.initFieldsResolveCompleteMotionGestureListener();
        final CommonStrings commonStrings = CommonStrings.getInstance();
        this.logUtil.putF("MotionGesture to CompleteMotionGesture Reciever", this, commonStrings.CONSTRUCTOR);
        CompleteMotionGestureInputEventHandler.getInstance().addListener(GameKeyFromMotionGestureEventListener());
    }
    

    @override
    void onMotionGestureCompleted(BasicArrayList list) {
        MotionGestureConfiguration configuration = MotionGestureConfigurationFactory.getInstance();
        BasicArrayList commandActionsList = configuration.getAssociateCommandActionsList();
        int size = commandActionsList.size();
        for (int index = size - 1; index >= 0; index--) {
            MotionGestureToMotionGestureActionAssociation association = (commandActionsList.objectArray[index]! as MotionGestureToMotionGestureActionAssociation);
            if (association.isMotionGestureArrayEquals(list) == true) {
                GameKeyCompleteMotionGestureInputEvent completeMotionGestureInputEvent = (association.getCommandAction() as GameKeyCompleteMotionGestureInputEvent);
                CompleteMotionGestureInputEventHandler.getInstance().fireEvent(completeMotionGestureInputEvent);
                break;
            }
        }
    }
}

