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
// package org.allbinary.logic.system.hardware.components

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/components/Component.dart';

class ComponentFactory {
    static final ComponentFactory instance = ComponentFactory();
    late Component VGA;
    late Component IDE;
    late Component SCSI;
    late Component BRIDGE;
    late Component ETHERNET;
    late Component USB;
    late Component MULTIMEDIA;
    late Component PCI;
    late Component RAID;
    late Component SMBUS;
    late Component PIC;
    late Component Class;
    late Component UNKNOWN;

    // Java field initializers run after the base constructor
    void initFieldsComponentFactory() {
    this.VGA = Component("VGA");
    this.IDE = Component("IDE");
    this.SCSI = Component("SCSI");
    this.BRIDGE = Component("bridge");
    this.ETHERNET = Component("Ethernet");
    this.USB = Component("USB");
    this.MULTIMEDIA = Component("Multimedia");
    this.PCI = Component("PCI");
    this.RAID = Component("RAID");
    this.SMBUS = Component("SMBus");
    this.PIC = Component("PIC");
    this.Class = Component("Class");
    this.UNKNOWN = Component(CommonStrings.getInstance().UNKNOWN);
    }

    ComponentFactory() {
        this.initFieldsComponentFactory();
    }
    

    static ComponentFactory getInstance() {
        return ComponentFactory.instance;
    }
}

