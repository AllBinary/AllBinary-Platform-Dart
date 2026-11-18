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
// package org.allbinary.input.gyro

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface.dart';
import 'package:allbinary/org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener.dart';
import 'package:allbinary/org/allbinary/input/AllBinarySensor.dart';
import 'package:allbinary/org/allbinary/logic/math/Orientation.dart';

class AllBinaryOrientationSensor extends AllBinarySensor {
    static final AllBinaryOrientationSensor NULL_ALLBINARY_ORIENTATION_SENSOR = AllBinaryOrientationSensor();
    late CompleteMotionGestureInputEventListenerInterface listener;

    // Java field initializers run after the base constructor
    void initFieldsAllBinaryOrientationSensor() {
    this.listener = NoCompleteMotionGestureInputEventListener.getInstance();
    }
    

    void setListener(CompleteMotionGestureInputEventListenerInterface completeMotionGestureInputEventListenerInterface) {
        this.listener = completeMotionGestureInputEventListenerInterface;
    }
    

    AllBinaryOrientationSensor() {
        this.initFieldsAllBinaryOrientationSensor();
    }
    

    Orientation getOrientation() {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
}

