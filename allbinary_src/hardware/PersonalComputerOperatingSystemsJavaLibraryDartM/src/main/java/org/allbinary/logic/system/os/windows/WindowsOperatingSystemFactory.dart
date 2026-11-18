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
// package org.allbinary.logic.system.os.windows

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/config/type/LogConfigTypes.dart';
import 'package:allbinary/org/allbinary/logic/system/os/GenericOperatingSystem.dart';
import 'package:allbinary/org/allbinary/logic/system/os/NoOperatingSystem.dart';
import 'package:allbinary/org/allbinary/logic/system/os/OperatingSystems.dart';
import 'package:allbinary/org/allbinary/logic/system/os/SystemProperties.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/logic/system/os/windows/WindowsOS.dart';

class WindowsOperatingSystemFactory {
    static final WindowsOperatingSystemFactory instance = WindowsOperatingSystemFactory();
    late LogUtil logUtil;

    // Java field initializers run after the base constructor
    void initFieldsWindowsOperatingSystemFactory() {
    this.logUtil = LogUtil.getInstance();
    }
    

    static WindowsOperatingSystemFactory getInstance() {
        return WindowsOperatingSystemFactory.instance;
    }
    

    WindowsOperatingSystemFactory() {
        this.initFieldsWindowsOperatingSystemFactory();
    }
    

    GenericOperatingSystem getOperatingSystemInstance() {
        try {
            final OperatingSystems operatingSystems = OperatingSystems.getInstance();
            final String osName = SystemProperties.getInstance().getName();
            late GenericOperatingSystem operatingSystemInterface;
            if (osName.compareTo(operatingSystems.WINDOWS_NT) == 0) {
                operatingSystemInterface = WindowsOS();
            } else if (osName.compareTo(operatingSystems.WINDOWS_10) == 0) {
                operatingSystemInterface = WindowsOS();
            } else if (osName.compareTo(operatingSystems.WINDOWS_11) == 0) {
                operatingSystemInterface = WindowsOS();
            } else if (osName.compareTo(operatingSystems.WINDOWS2000) == 0) {
                operatingSystemInterface = WindowsOS();
            } else if (osName.compareTo(operatingSystems.WINDOWS_XP) == 0) {
                operatingSystemInterface = WindowsOS();
            } else if (osName.compareTo(operatingSystems.WINDOWS_VISTA) == 0) {
                operatingSystemInterface = WindowsOS();
            } else {
                if (operatingSystems.isUnknownSpecificOSAllowed()) {
                    operatingSystemInterface = WindowsOS();
                } else {
                    throw JException('Exception', "Specific Windows OS Not Supported: " + osName);
                }
            }
            return operatingSystemInterface;
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().FACTORYERROR)) {
                final CommonStrings commonStrings = CommonStrings.getInstance();
                this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e);
            }
            return NoOperatingSystem.NO_OPERATING_SYSTEM;
            }
        }
    }
}

