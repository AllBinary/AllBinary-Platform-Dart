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
// package org.allbinary.input.accelerometer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/SensorFeatureFactory.dart';
import 'package:allbinary/org/allbinary/input/gyro/AllBinaryOrientationSensor.dart';
import 'package:allbinary/org/allbinary/input/accelerometer/NoAccelerometerSensor.dart';

class AccelerometerSensorFactory {
    static AllBinaryOrientationSensor allBinaryAccelerometerSensor = AllBinaryOrientationSensor.NULL_ALLBINARY_ORIENTATION_SENSOR;
    

    static void init() {
        Features features = Features.getInstance();
        SensorFeatureFactory sensorFeatureFactory = SensorFeatureFactory.getInstance();
        if (features.isFeature(sensorFeatureFactory.ORIENTATION_SENSORS)) {
            throw JException('Exception', "No Orientation Sensors");
        } else if (features.isFeature(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)) {
            throw JException('Exception', "No Simulation Sensors");
        } else if (features.isFeature(sensorFeatureFactory.NO_ORIENTATION)) {
            AccelerometerSensorFactory.allBinaryAccelerometerSensor = NoAccelerometerSensor();
        } else {
            throw JException('Exception', "Not Such SensorFeature");
        }
    }
    

    static AllBinaryOrientationSensor getInstance() {
        return AccelerometerSensorFactory.allBinaryAccelerometerSensor;
    }
}

