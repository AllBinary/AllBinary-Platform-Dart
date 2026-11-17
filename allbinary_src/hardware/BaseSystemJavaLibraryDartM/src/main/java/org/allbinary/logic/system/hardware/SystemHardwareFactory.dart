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
// package org.allbinary.logic.system.hardware

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/system/os/GenericOperatingSystem.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/NoHardware.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/HardwareInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/HardwareFactory.dart';

class SystemHardwareFactory {
    static final SystemHardwareFactory instance = SystemHardwareFactory();
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late HardwareInterface hardwareInterface;

    // Java field initializers run after the base constructor
    void initFieldsSystemHardwareFactory() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.hardwareInterface = NoHardware.getInstance();
    }
    

    static SystemHardwareFactory getInstance() {
        return SystemHardwareFactory.instance;
    }
    

    SystemHardwareFactory() {
        this.initFieldsSystemHardwareFactory();
    }
    

    HardwareInterface getInstance1(GenericOperatingSystem operatingSystemInterface) {
        try {
            if (this.hardwareInterface == NoHardware.getInstance()) {
                this.hardwareInterface = HardwareFactory.getInstance().getInstance1(operatingSystemInterface);
            }
            this.logUtil.putF("Found Hardware", this, this.commonStrings.CONSTRUCTOR);
        } catch (e) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.CONSTRUCTOR, e);
        }
        return this.hardwareInterface;
    }
    

    static String static_toString() {
        final SystemHardwareFactory systemHardwareFactory = SystemHardwareFactory.getInstance();
        final StringMaker osBuffer = StringMaker();
        osBuffer.append("Hardware Info: \n");
        if (systemHardwareFactory.hardwareInterface != null) {
            osBuffer.append(systemHardwareFactory.hardwareInterface.toString());
        } else {
            osBuffer.append(StringUtil.getInstance().NULL_STRING);
        }
        return osBuffer.toString();
    }
}

