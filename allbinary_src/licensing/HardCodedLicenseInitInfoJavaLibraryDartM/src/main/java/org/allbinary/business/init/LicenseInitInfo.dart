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
    late BasicArrayList serverList;

    // Java field initializers run after the base constructor
    void initFieldsLicenseInitInfo() {
    this.id = StringUtil.getInstance().EMPTY_STRING;
    this.serverList = BasicArrayListD();
    }
    

    LicenseInitInfo() {
        this.initFieldsLicenseInitInfo();
    }
    

    String getLicenseId() {
        return this.id;
    }
    

    String getServer(int index) {
        return (this.serverList.get(index) as String);
    }
    

    int getNumberOfServers() {
        return this.serverList.size();
    }
    

    void setLicenseId(String value) {
        this.id = value;
    }
    

    void clearServers() {
        this.serverList.clear();
    }
    

    void setServer(String value, int index) {
        this.serverList.addAt(index, value);
    }
    

    void addServer(String value) {
        this.serverList.add(value);
    }
    

    BasicArrayList getServerList() {
        return this.serverList;
    }
    

    void setServerList(BasicArrayList servers) {
        if (DebugFactory.getInstance() == NoDebug.getInstance()) {
            this.serverList = servers;
        }
    }
}

