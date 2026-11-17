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
// package org.allbinary.logic.system.os

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/java/character/CharacterSet.dart';

abstract interface class OperatingSystemInterface {
    

    String getName();
    

    String getVersion();
    

    String getArch();
    

    CharacterSet getCharacterSet();
    

    bool isOverScan();
    

    int getOverScanXPercent();
    

    int getOverScanYPercent();
    

    bool isScalable();
    

    bool isAutoHide();
    

    @override
    String toString();
}

