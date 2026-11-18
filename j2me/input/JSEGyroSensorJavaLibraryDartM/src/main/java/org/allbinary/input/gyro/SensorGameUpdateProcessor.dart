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
import 'package:allbinary/org/allbinary/game/input/motion/action/NoCompleteMotionGestureInputEventListener.dart';
import 'package:allbinary/org/allbinary/input/AllBinarySensor.dart';
import 'package:allbinary/org/allbinary/input/NoAllBinarySensor.dart';
import 'package:allbinary/org/allbinary/input/accelerometer/AccelerometerSensorFactory.dart';
import 'package:allbinary/org/allbinary/input/gyro/GyroSensorFactory.dart';

class SensorGameUpdateProcessor {
    late AllBinarySensor inputSensor;

    // Java field initializers run after the base constructor
    void initFieldsSensorGameUpdateProcessor() {
    
    }

    SensorGameUpdateProcessor() {
        this.initFieldsSensorGameUpdateProcessor();
    }
    

    void setInputSensor(AllBinarySensor inputSensor) {
        this.inputSensor = inputSensor;
    }
    

    AllBinarySensor getInputSensor() {
        return this.inputSensor;
    }
    

    void process(Object anyType) {
    }
    

    void sendNotifications(Object anyType) {
    }
    

    bool isAnySensor() {
        if (this.inputSensor == NoAllBinarySensor.getInstance()) {
            return false;
        } else {
            return true;
        }
    }
    

    void setNoSensors() {
        GyroSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(NoCompleteMotionGestureInputEventListener.getInstance());
        AccelerometerSensorFactory.getInstance().setCompleteMotionGestureInputEventListener(NoCompleteMotionGestureInputEventListener.getInstance());
        this.setInputSensor(NoAllBinarySensor.getInstance());
    }
}

