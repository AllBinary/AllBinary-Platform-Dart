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
// package org.allbinary.business.init

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/debug/DebugFactory.dart';
import 'package:allbinary/org/allbinary/debug/NoDebug.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class LicenseInitInfo {
    late String id;
    late BasicArrayList serverVector;

    // Java field initializers run after the base constructor
    void initFieldsLicenseInitInfo() {
    this.id = StringUtil.getInstance().EMPTY_STRING;
    this.serverVector = BasicArrayListD();
    }
    

    LicenseInitInfo() {
        this.initFieldsLicenseInitInfo();
    }
    

    String getLicenseId() {
        return this.id;
    }
    

    String getServer(int index) {
        return (this.serverVector.objectArray[index]! as String);
    }
    

    int getNumberOfServers() {
        return this.serverVector.size();
    }
    

    void setLicenseId(String value) {
        this.id = value;
    }
    

    void clearServers() {
        this.serverVector = BasicArrayListD();
    }
    

    void setServer(String value, int index) {
        this.serverVector.addAt(index, value);
    }
    

    void addServer(String value) {
        this.serverVector.add(value);
    }
    

    BasicArrayList getServerList() {
        return this.serverVector;
    }
    

    void setServerList(BasicArrayList servers) {
        if (DebugFactory.getInstance() == NoDebug.getInstance()) {
            this.serverVector = servers;
        }
    }
}

