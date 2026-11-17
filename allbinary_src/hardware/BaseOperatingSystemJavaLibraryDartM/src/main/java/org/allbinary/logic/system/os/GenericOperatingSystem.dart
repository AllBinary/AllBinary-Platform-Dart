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
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringValidationUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/logic/system/os/OperatingSystemInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/os/SystemProperties.dart';

class GenericOperatingSystem implements OperatingSystemInterface {
    late String osName;
    late String osArch;
    late String osVersion;
    late CharacterSet characterSet;
    bool scalable = false;

    // Java field initializers run after the base constructor
    void initFieldsGenericOperatingSystem() {
    
    
    
    this.characterSet = CharacterSet();
    this.scalable = false;
    }
    

    GenericOperatingSystem() {
        this.initFieldsGenericOperatingSystem();
        final SystemProperties systemProperties = SystemProperties.getInstance();
        final StringValidationUtil stringValidationUtil = StringValidationUtil.getInstance();
        final String EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
        if (stringValidationUtil.isEmpty(systemProperties.getName())) {
            this.osName = EMPTY_STRING;
        } else {
            this.osName = systemProperties.getName();
        }
        if (stringValidationUtil.isEmpty(systemProperties.getArch())) {
            this.osArch = EMPTY_STRING;
        } else {
            this.osArch = systemProperties.getArch();
        }
        if (stringValidationUtil.isEmpty(systemProperties.getVersion())) {
            this.osVersion = EMPTY_STRING;
        } else {
            this.osVersion = systemProperties.getVersion();
        }
    }
    

    @override
    String getName() {
        return this.osName;
    }
    

    @override
    String getVersion() {
        return this.osVersion;
    }
    

    @override
    String getArch() {
        return this.osArch;
    }
    

    @override
    CharacterSet getCharacterSet() {
        return this.characterSet;
    }
    

    @override
    bool isOverScan() {
        return false;
    }
    

    @override
    int getOverScanXPercent() {
        return 100;
    }
    

    @override
    int getOverScanYPercent() {
        return 100;
    }
    

    @override
    bool isScalable() {
        return this.scalable;
    }
    

    @override
    bool isAutoHide() {
        return false;
    }
    

    @override
    String toString() {
        final String NEW_LINE = CommonSeps.getInstance().NEW_LINE;
        final StringMaker osBuffer = StringMaker();
        osBuffer.append("Operating System Info: \n");
        osBuffer.append(this.getName());
        osBuffer.append(NEW_LINE);
        osBuffer.append(this.getArch());
        osBuffer.append(NEW_LINE);
        osBuffer.append(this.getVersion());
        osBuffer.append(NEW_LINE);
        osBuffer.append(StringUtil.getInstance().toString1(this.getCharacterSet()));
        osBuffer.append(NEW_LINE);
        return osBuffer.toString();
    }
}

