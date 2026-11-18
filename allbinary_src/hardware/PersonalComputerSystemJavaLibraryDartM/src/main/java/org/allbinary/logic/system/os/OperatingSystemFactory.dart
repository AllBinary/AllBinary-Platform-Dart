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
// package org.allbinary.logic.system.os

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/Log.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/config/type/LogConfigTypes.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/system/os/linux/LinuxOperatingSystemFactory.dart';
import 'package:allbinary/org/allbinary/logic/system/os/solaris/SolarisOperatingSystemFactory.dart';
import 'package:allbinary/org/allbinary/logic/system/os/windows/WindowsOperatingSystemFactory.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/logic/system/os/NoOperatingSystem.dart';
import 'package:allbinary/org/allbinary/logic/system/os/GenericOperatingSystem.dart';
import 'package:allbinary/org/allbinary/logic/system/os/OperatingSystems.dart';
import 'package:allbinary/org/allbinary/logic/system/os/SystemProperties.dart';

class OperatingSystemFactory {
    static final OperatingSystemFactory instance = OperatingSystemFactory();
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late GenericOperatingSystem genericOperatingSystem;
    bool hasDetected = false;

    // Java field initializers run after the base constructor
    void initFieldsOperatingSystemFactory() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.genericOperatingSystem = NoOperatingSystem.NO_OPERATING_SYSTEM;
    this.hasDetected = false;
    }
    

    static OperatingSystemFactory getInstance() {
        return OperatingSystemFactory.instance;
    }
    

    OperatingSystemFactory() {
        this.initFieldsOperatingSystemFactory();
    }
    

    GenericOperatingSystem getOperatingSystemInstance() {
        try {
            final OperatingSystems operatingSystems = OperatingSystems.getInstance();
            final SystemProperties systemProperties = SystemProperties.getInstance();
            final String osName = systemProperties.getName();
            final String osArch = systemProperties.getArch();
            final String osVersion = systemProperties.getVersion();
            if (!this.hasDetected) {
                this.logUtil.putF("osName: " + osName, this, this.commonStrings.GET_INSTANCE);
                this.hasDetected = true;
                if (JString.indexOf(osName, operatingSystems.LINUX) >= 0) {
                    if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                        this.logUtil.putF("Found a Linux OS", this, this.commonStrings.GET_INSTANCE);
                    }
                    this.genericOperatingSystem = LinuxOperatingSystemFactory.getInstance().getOperatingSystemInstance();
                } else if (JString.indexOf(osName, operatingSystems.WINDOWS) >= 0) {
                    if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                        this.logUtil.putF("Found a Windows OS", this, this.commonStrings.GET_INSTANCE);
                    }
                    this.genericOperatingSystem = WindowsOperatingSystemFactory.getInstance().getOperatingSystemInstance();
                } else if (JString.indexOf(osName, operatingSystems.SOLARIS) >= 0) {
                    if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                        this.logUtil.putF("Found a Solaris OS", this, this.commonStrings.GET_INSTANCE);
                    }
                    this.genericOperatingSystem = SolarisOperatingSystemFactory.getInstance().getOperatingSystemInstance();
                } else {
                    throw JException('Exception', StringMaker().append("OS Not Supported: ").append(osName).toString());
                }
                Log log = LogFactory.getInstanceF(StringMaker().append("OperatingSystem Info: ").append(StringUtil.getInstance().toString1(this.genericOperatingSystem)).toString(), this, this.commonStrings.GET_INSTANCE);
                JSystem.println(jstr(log.toString()));
                this.logUtil.putL(log);
            }
            return this.genericOperatingSystem;
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.GET_INSTANCE, e);
            }
            return NoOperatingSystem.NO_OPERATING_SYSTEM;
            }
        }
    }
}

