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
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/components/interfaces/NoHardwareComponent.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/HardwareInterface.dart';

class NoHardware implements HardwareInterface {
    static final HardwareInterface instance = NoHardware();
    

    static HardwareInterface getInstance() {
        return NoHardware.instance;
    }
    

    @override
    HardwareComponentInterface getComponent(int index) {
        return NoHardwareComponent.getInstance();
    }
    

    @override
    String toString() {
        return "No Hardware";
    }
    

    @override
    bool compareTo(HardwareInterface hardwareInterface) {
        return true;
    }
    

    @override
    ABHashtable difference(HardwareInterface hardwareInterface) {
        return StdUtil.getInstance().NULL_TABLE;
    }
}

