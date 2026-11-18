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
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/SensorFeatureFactory.dart';
import 'package:allbinary/org/allbinary/logic/math/Orientation.dart';
import 'package:allbinary/org/allbinary/input/gyro/AllBinaryOrientationSensor.dart';
import 'package:allbinary/org/allbinary/input/gyro/NoGyroSensor.dart';

class OrientationToGameKeyEvent {
    late AllBinaryOrientationSensor allBinaryGyroSensor;
    int MIN = 0;

    // Java field initializers run after the base constructor
    void initFieldsOrientationToGameKeyEvent() {
    
    this.MIN = 15;
    }
    

    OrientationToGameKeyEvent() {
        this.initFieldsOrientationToGameKeyEvent();
        if (Features.getInstance().isFeature(SensorFeatureFactory.getInstance().NO_ORIENTATION)) {
            this.allBinaryGyroSensor = NoGyroSensor();
        } else {
            throw JException('Exception', "Not Such Feature");
        }
    }
    

    void setAllBinaryGyroSensor(AllBinaryOrientationSensor allBinaryGyroSensor) {
        this.allBinaryGyroSensor = allBinaryGyroSensor;
    }
    

    AllBinaryOrientationSensor getAllBinaryGyroSensor() {
        return this.allBinaryGyroSensor;
    }
    

    void process() {
    }
    

    void updateGameKeyEvents(Orientation orientation, int yaw, int pitch, int roll) {
    }
}

