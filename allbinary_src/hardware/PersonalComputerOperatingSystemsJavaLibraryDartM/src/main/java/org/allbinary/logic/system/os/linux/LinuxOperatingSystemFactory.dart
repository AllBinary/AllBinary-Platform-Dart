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
// package org.allbinary.logic.system.os.linux

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/config/type/LogConfigTypes.dart';
import 'package:allbinary/org/allbinary/logic/system/os/GenericOperatingSystem.dart';
import 'package:allbinary/org/allbinary/logic/system/os/NoOperatingSystem.dart';
import 'package:allbinary/org/allbinary/logic/system/os/OperatingSystems.dart';
import 'package:allbinary/org/allbinary/logic/system/os/SystemProperties.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/logic/system/os/linux/LinuxOS.dart';

class LinuxOperatingSystemFactory {
    static final LinuxOperatingSystemFactory instance = LinuxOperatingSystemFactory();
    late LogUtil logUtil;

    // Java field initializers run after the base constructor
    void initFieldsLinuxOperatingSystemFactory() {
    this.logUtil = LogUtil.getInstance();
    }
    

    static LinuxOperatingSystemFactory getInstance() {
        return LinuxOperatingSystemFactory.instance;
    }
    

    LinuxOperatingSystemFactory() {
        this.initFieldsLinuxOperatingSystemFactory();
    }
    

    GenericOperatingSystem getOperatingSystemInstance() {
        try {
            final OperatingSystems operatingSystems = OperatingSystems.getInstance();
            final String osName = SystemProperties.getInstance().getName();
            late GenericOperatingSystem operatingSystemInterface;
            if (osName.compareTo(operatingSystems.LINUX) == 0) {
                operatingSystemInterface = LinuxOS();
            } else {
                if (operatingSystems.isUnknownSpecificOSAllowed()) {
                    operatingSystemInterface = LinuxOS();
                } else {
                    throw JException('Exception', "Specific Linux OS Not Supported: " + osName);
                }
            }
            return operatingSystemInterface;
        } catch (e) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                final CommonStrings commonStrings = CommonStrings.getInstance();
                this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e);
            }
            return NoOperatingSystem.NO_OPERATING_SYSTEM;
        }
    }
}

