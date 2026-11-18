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
// package org.allbinary.input

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/input/accelerometer/AccelerometerSensorFactory.dart';
import 'package:allbinary/org/allbinary/input/gyro/GyroSensorFactory.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class AllBinarySensorManager {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late String ORIENTATION_SENSOR_INPUT;
    late String ORIENTATION_TYPE;
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsAllBinarySensorManager() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input";
    this.ORIENTATION_TYPE = "Orientation Type";
    this.list = BasicArrayListD();
    }
    

    static AllBinarySensorManager getInstance() {
        if (AllBinarySensorManager.instance == NullUtil.getInstance().NULL_OBJECT) {
            AllBinarySensorManager.instance = AllBinarySensorManager();
        }
        return (AllBinarySensorManager.instance as AllBinarySensorManager);
    }
    

    AllBinarySensorManager() {
        this.initFieldsAllBinarySensorManager();
        try {
            GyroSensorFactory.init();
            AccelerometerSensorFactory.init();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.CONSTRUCTOR, e);
            }
        }
    }
    

    void init() {
    }
    

    BasicArrayList getSensorNamesList() {
        return this.list;
    }
    

    void shutdown() {
    }
}

