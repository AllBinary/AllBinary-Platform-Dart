/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic.system.hardware.components.interfaces

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface.dart';

class NoHardwareComponent implements HardwareComponentInterface {
    static final NoHardwareComponent instance = NoHardwareComponent();
    

    static NoHardwareComponent getInstance() {
        return NoHardwareComponent.instance;
    }
    

    @override
    bool compareTo(HardwareComponentInterface componentInterface) {
        if (this == componentInterface) {
            return true;
        }
        return false;
    }
    

    @override
    String toString() {
        return StringUtil.getInstance().NULL_STRING;
    }
}

