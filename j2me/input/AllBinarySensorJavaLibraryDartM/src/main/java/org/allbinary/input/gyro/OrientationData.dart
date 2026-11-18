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

class OrientationData {
    static final OrientationData SINGLETON = OrientationData();
    late String ORIENTATION_SENSOR_INPUT;
    late String ORIENTATION_TYPE;

    // Java field initializers run after the base constructor
    void initFieldsOrientationData() {
    this.ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input";
    this.ORIENTATION_TYPE = "Orientation Type";
    }
    

    OrientationData() {
        this.initFieldsOrientationData();
    }
    

    static OrientationData getInstance() {
        return OrientationData.SINGLETON;
    }
}

