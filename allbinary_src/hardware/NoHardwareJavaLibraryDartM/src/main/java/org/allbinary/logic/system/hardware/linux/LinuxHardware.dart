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
// package org.allbinary.logic.system.hardware.linux

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/HardwareInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/components/interfaces/BridgeInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/components/interfaces/CpuInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/components/interfaces/EthernetInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/components/interfaces/FireWireInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/components/interfaces/HardDriveControllerInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/components/interfaces/HardDriveInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/components/interfaces/MachineAccessControlAddressInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/components/interfaces/MediaInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/components/interfaces/MonitorInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/components/interfaces/UsbInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/components/interfaces/VideoInterface.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';

class LinuxHardware implements HardwareInterface {
    

    LinuxHardware() {
    }
    

    MediaInterface getMultimedia(int index) {
        throw JException('RuntimeException', '');
    }
    

    BridgeInterface getBridge(int index) {
        throw JException('RuntimeException', '');
    }
    

    CpuInterface getCpu(int index) {
        throw JException('RuntimeException', '');
    }
    

    EthernetInterface getEthernet(int index) {
        throw JException('RuntimeException', '');
    }
    

    FireWireInterface getFireWire(int index) {
        throw JException('RuntimeException', '');
    }
    

    HardDriveControllerInterface getHardDriveController(int index) {
        throw JException('RuntimeException', '');
    }
    

    HardDriveInterface getHardDrive(int index) {
        throw JException('RuntimeException', '');
    }
    

    MachineAccessControlAddressInterface getMachineAccessControlAddress(int index) {
        throw JException('RuntimeException', '');
    }
    

    MonitorInterface getMonitor(int index) {
        throw JException('RuntimeException', '');
    }
    

    UsbInterface getUsb(int index) {
        throw JException('RuntimeException', '');
    }
    

    VideoInterface getVideo(int index) {
        throw JException('RuntimeException', '');
    }
    

    @override
    HardwareComponentInterface getComponent(int index) {
        throw JException('RuntimeException', '');
    }
    

    @override
    String toString() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    @override
    bool compareTo(HardwareInterface hardwareInterface) {
        return true;
    }
    

    @override
    ABHashtable difference(HardwareInterface hardwareInterface) {
        return StdUtil.getInstance().NULL_TABLE;
    }
    

    bool isNextHardware(String nextLine) {
        return false;
    }
}

