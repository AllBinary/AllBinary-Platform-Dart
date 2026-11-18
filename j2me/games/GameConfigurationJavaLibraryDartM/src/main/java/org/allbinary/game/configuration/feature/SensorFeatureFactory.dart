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
// package org.allbinary.game.configuration.feature

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/SensorFeature.dart';

class SensorFeatureFactory {
    static final SensorFeatureFactory instance = SensorFeatureFactory();
    late SensorFeature NO_ORIENTATION;
    late SensorFeature ORIENTATION_SENSORS;
    late SensorFeature SIMULATED_ORIENTATION_SENSORS;
    late SensorFeature YAW;
    late SensorFeature YAW_MINUS_RIGHT_PLUS_LEFT;
    late SensorFeature YAW_MINUS_LEFT_PLUS_RIGHT;
    late SensorFeature PITCH;
    late SensorFeature ROLL;

    // Java field initializers run after the base constructor
    void initFieldsSensorFeatureFactory() {
    this.NO_ORIENTATION = SensorFeature("No Orientation");
    this.ORIENTATION_SENSORS = SensorFeature("Orientation Sensors");
    this.SIMULATED_ORIENTATION_SENSORS = SensorFeature("Simulated Orientation Sensors");
    this.YAW = SensorFeature("Yaw");
    this.YAW_MINUS_RIGHT_PLUS_LEFT = SensorFeature("Yaw -Right +Left");
    this.YAW_MINUS_LEFT_PLUS_RIGHT = SensorFeature("Yaw -Left +Right ");
    this.PITCH = SensorFeature("Pitch");
    this.ROLL = SensorFeature("Roll");
    }
    

    static SensorFeatureFactory getInstance() {
        return SensorFeatureFactory.instance;
    }
    

    SensorFeatureFactory() {
        this.initFieldsSensorFeatureFactory();
    }
}

