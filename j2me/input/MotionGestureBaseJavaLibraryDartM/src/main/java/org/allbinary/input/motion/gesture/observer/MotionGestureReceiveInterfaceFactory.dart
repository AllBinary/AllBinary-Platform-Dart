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
import 'package:allbinary/org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/ResolveCompleteMotionGestureListener.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/NullCompleteMotionGestureReceiver.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface.dart';

class MotionGestureReceiveInterfaceFactory {
    

    static CompleteMotionGestureListenerInterface getInstance() {
        MotionGestureConfiguration configuration = MotionGestureConfigurationFactory.getInstance();
        if (!configuration.isExecutingActionsAllowed()) {
            return NullCompleteMotionGestureReceiver();
        } else {
            return ResolveCompleteMotionGestureListener();
        }
    }
}

