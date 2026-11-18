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
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/input/AllBinarySensorListener.dart';

class AllBinarySensor implements AllBinarySensorListener {
    static final AllBinarySensor NULL_ALLBINARY_SENSOR = AllBinarySensor();
    static int max = 100;
    late LogUtil logUtil;
    late CommonStrings commonStrings;

    // Java field initializers run after the base constructor
    void initFieldsAllBinarySensor() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    }
    

    AllBinarySensor() {
        this.initFieldsAllBinarySensor();
    }
    

    void init() {
    }
    

    void update() {
    }
    

    static void setMax(int max) {
        AllBinarySensor.max = max;
    }
    

    static int getMax() {
        return AllBinarySensor.max;
    }
    

    int getId() {
        return AllBinarySensor.getMax();
    }
    

    void shutdown() {
        this.logUtil.putF(this.commonStrings.START, this, "shutdown");
    }
    

    @override
    void onSensorChange() {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
}

