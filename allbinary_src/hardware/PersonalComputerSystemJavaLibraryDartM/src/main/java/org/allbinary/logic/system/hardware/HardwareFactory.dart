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
import 'package:allbinary/org/allbinary/logic/system/os/GenericOperatingSystem.dart';
import 'package:allbinary/org/allbinary/logic/system/os/OperatingSystems.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/linux/LinuxHardware.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/windows/WindowsHardware.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/HardwareInterface.dart';

class HardwareFactory {
    static final HardwareFactory instance = HardwareFactory();
    

    static HardwareFactory getInstance() {
        return HardwareFactory.instance;
    }
    

    HardwareFactory() {
    }
    

    static HardwareInterface getInstance1(GenericOperatingSystem os) {
        try {
            final OperatingSystems operatingSystems = OperatingSystems.getInstance();
            if (os.getName().compareTo(operatingSystems.LINUX) == 0) {
                return (LinuxHardware() as HardwareInterface);
            } else if (os.getName().indexOf(operatingSystems.WINDOWS) >= 0) {
                return (WindowsHardware() as HardwareInterface);
            }
            throw JException('Exception', "No Hardware Imp for: " + os.getName());
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            throw e;
            }
        }
    }
}

