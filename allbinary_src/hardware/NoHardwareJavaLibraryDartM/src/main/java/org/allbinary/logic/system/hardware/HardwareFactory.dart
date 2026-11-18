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
// package org.allbinary.logic.system.hardware

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/system/os/OperatingSystemInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/NoHardware.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/HardwareInterface.dart';

class HardwareFactory {
    static final HardwareFactory instance = HardwareFactory();
    late HardwareInterface SINGLETON;

    // Java field initializers run after the base constructor
    void initFieldsHardwareFactory() {
    this.SINGLETON = NoHardware.getInstance();
    }
    

    static HardwareFactory getInstance() {
        return HardwareFactory.instance;
    }
    

    HardwareFactory() {
        this.initFieldsHardwareFactory();
    }
    

    HardwareInterface getInstance1(OperatingSystemInterface os) {
        try {
            return this.SINGLETON;
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            throw e;
            }
        }
    }
}

