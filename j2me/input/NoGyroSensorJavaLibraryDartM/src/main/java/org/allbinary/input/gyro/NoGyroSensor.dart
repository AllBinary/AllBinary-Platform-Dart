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
import 'package:allbinary/org/allbinary/input/AllBinarySensorListener.dart';
import 'package:allbinary/org/allbinary/logic/math/Orientation.dart';
import 'package:allbinary/org/allbinary/input/gyro/AllBinaryOrientationSensor.dart';

class NoGyroSensor extends AllBinaryOrientationSensor implements AllBinarySensorListener {
    

    NoGyroSensor() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
    }
    

    @override
    Orientation getOrientation() {
        return Orientation.NONE;
    }
    

    @override
    void onSensorChange() {
    }
}

