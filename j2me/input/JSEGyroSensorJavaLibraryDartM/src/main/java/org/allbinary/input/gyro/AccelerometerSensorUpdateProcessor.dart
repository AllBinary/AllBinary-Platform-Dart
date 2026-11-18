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
import 'package:allbinary/org/allbinary/canvas/Processor.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/SensorFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener.dart';
import 'package:allbinary/org/allbinary/game/input/motion/action/SingleKeyPressGameKeyFromMotionGestureEventListener.dart';
import 'package:allbinary/org/allbinary/input/accelerometer/AccelerometerSensorFactory.dart';

class AccelerometerSensorUpdateProcessor extends Processor {
    

    void process() {
        SensorFeatureFactory sensorFeatureFactory = SensorFeatureFactory.getInstance();
        if (Features.getInstance().isFeature(sensorFeatureFactory.ORIENTATION_SENSORS)) {
            AccelerometerSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(SingleKeyPressGameKeyFromMotionGestureEventListener());
        } else if (Features.getInstance().isFeature(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)) {
            AccelerometerSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(SingleKeyPressGameKeyFromMotionGestureEventListener());
        } else if (Features.getInstance().isFeature(sensorFeatureFactory.NO_ORIENTATION)) {
            AccelerometerSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(NoCompleteMotionGestureInputEventListener.getInstance());
        } else {
            throw JException('Exception', "Sensor Feature Not Set");
        }
    }
}

