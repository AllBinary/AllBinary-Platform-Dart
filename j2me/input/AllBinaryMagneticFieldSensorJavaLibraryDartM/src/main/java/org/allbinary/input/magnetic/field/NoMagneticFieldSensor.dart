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
// ignore_for_file: unused_import, unused_local_variable, unnecessary_null_comparison
// package org.allbinary.input.magnetic.field

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/input/AllBinarySensorListener.dart';
import 'package:allbinary/org/allbinary/logic/math/Orientation.dart';
import 'package:allbinary/org/allbinary/input/magnetic/field/AllBinaryMagneticFieldSensor.dart';

class NoMagneticFieldSensor extends AllBinaryMagneticFieldSensor implements AllBinarySensorListener {
    

    Orientation getOrientation() {
        return Orientation.NONE;
    }
    

    @override
    void onSensorChange() {
    }
}

