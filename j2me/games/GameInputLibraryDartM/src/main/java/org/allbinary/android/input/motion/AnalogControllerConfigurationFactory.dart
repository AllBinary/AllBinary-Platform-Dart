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
// package org.allbinary.android.input.motion

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/android/input/motion/event/AnalogControllerConfigurationEvent.dart';
import 'package:allbinary/org/allbinary/android/input/motion/event/AnalogControllerConfigurationEventHandler.dart';
import 'package:allbinary/org/allbinary/logic/math/ScaleFactorFactory.dart';

class AnalogControllerConfigurationFactory {
    static final AnalogControllerConfigurationFactory instance = AnalogControllerConfigurationFactory();
    int SCALE_FACTOR = 0;
    int SCALE_VALUE = 0;
    bool available = false;
    late AnalogControllerConfigurationEvent analogControllerConfigurationEvent;

    // Java field initializers run after the base constructor
    void initFieldsAnalogControllerConfigurationFactory() {
    this.SCALE_FACTOR = ScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR;
    this.SCALE_VALUE = ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE;
    this.available = false;
    this.analogControllerConfigurationEvent = AnalogControllerConfigurationEvent(this);
    }
    

    static AnalogControllerConfigurationFactory getInstance() {
        return AnalogControllerConfigurationFactory.instance;
    }
    

    AnalogControllerConfigurationFactory() {
        this.initFieldsAnalogControllerConfigurationFactory();
    }
    

    bool isAvailable() {
        return this.available;
    }
    

    void setAvailable(bool available) {
        this.available = available;
        AnalogControllerConfigurationEventHandler.getInstance().fireEvent(this.analogControllerConfigurationEvent);
    }
}

