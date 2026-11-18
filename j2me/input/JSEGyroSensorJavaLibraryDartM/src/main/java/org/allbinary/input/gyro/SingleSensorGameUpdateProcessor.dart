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
import 'package:allbinary/org/allbinary/input/gyro/SensorGameUpdateProcessor.dart';
import 'package:allbinary/org/allbinary/input/gyro/AccelerometerSensorUpdateProcessor.dart';
import 'package:allbinary/org/allbinary/input/gyro/GyroSensorUpdateProcessor.dart';

class SingleSensorGameUpdateProcessor extends SensorGameUpdateProcessor {
    late Processor accelerometerSensorUpdateProcessor;
    late Processor gyroSensorUpdateProcessor;

    // Java field initializers run after the base constructor
    void initFieldsSingleSensorGameUpdateProcessor() {
    this.accelerometerSensorUpdateProcessor = AccelerometerSensorUpdateProcessor();
    this.gyroSensorUpdateProcessor = GyroSensorUpdateProcessor();
    }

    SingleSensorGameUpdateProcessor() {
        this.initFieldsSingleSensorGameUpdateProcessor();
    }
    

    void process(Object anyType) {
        this.setNoSensors();
    }
    

    void sendNotifications(Object anyType) {
    }
}

