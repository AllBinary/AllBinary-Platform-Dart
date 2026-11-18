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
// package org.allbinary.logic.system

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/KotlinUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';

class SoftwareInformation {
    late String name;
    late String shortName;
    late String version;

    // Java field initializers run after the base constructor
    void initFieldsSoftwareInformation() {
    
    
    
    }
    

    SoftwareInformation(String name, String version, String shortName) {
        this.initFieldsSoftwareInformation();
        this.name = name;
        this.version = version;
        this.shortName = StringMaker().append(shortName).append(KotlinUtil.getShortName()).toString();
    }
    

    String getName() {
        return this.name;
    }
    

    String getVersion() {
        return this.version;
    }
    

    String toShortString() {
        return this.shortName;
    }
    

    @override
    String toString() {
        final String NAME = "Name: ";
        final String VERSION = "Version: ";
        StringMaker stringBuffer = StringMaker();
        stringBuffer.append(NAME);
        stringBuffer.append(this.getName());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(VERSION);
        stringBuffer.append(this.getVersion());
        return stringBuffer.toString();
    }
}

