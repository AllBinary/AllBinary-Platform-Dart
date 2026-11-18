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
// package org.allbinary.logic.system.security.licensing

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/HardwareInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/hardware/SystemHardwareFactory.dart';
import 'package:allbinary/org/allbinary/logic/system/os/GenericOperatingSystem.dart';
import 'package:allbinary/org/allbinary/logic/system/os/NoOperatingSystem.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListUtil.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationData.dart';

// This is the information sent to the license server
class ClientInformation implements AbeClientInformationInterface {
    late GenericOperatingSystem operatingSystemInterface;
    late TsUtil tsUtil;
    late String name;
    late String shortName;
    late String version;
    late String specialName;
    bool hardSale = false;
    late String licenseId;
    late BasicArrayList licenseServers;

    // Java field initializers run after the base constructor
    void initFieldsClientInformation() {
    this.operatingSystemInterface = NoOperatingSystem.NO_OPERATING_SYSTEM;
    this.tsUtil = TsUtil.getInstance();
    
    
    
    
    this.hardSale = true;
    this.licenseId = StringUtil.getInstance().EMPTY_STRING;
    this.licenseServers = BasicArrayListUtil.getInstance().getImmutableInstance();
    }
    

    ClientInformation(String name, String version, String specialName, String shortName) {
        this.initFieldsClientInformation();
        this.name = name;
        this.version = version;
        this.specialName = specialName;
        this.shortName = StringMaker().append(shortName).append(CommonSeps.getInstance().UNDERSCORE).append(version).toString();
        this.init();
    }
    

    @override
    void init() {
    }
    

    @override
    GenericOperatingSystem getOperatingSystemInterface() {
        return this.operatingSystemInterface;
    }
    

    @override
    String getName() {
        return this.name;
    }
    

    @override
    String getSpecialName() {
        return this.specialName;
    }
    

    @override
    String getVersion() {
        return this.version;
    }
    

    @override
    String getLicenseId() {
        return this.licenseId;
    }
    

    @override
    BasicArrayList getLicenseServers() {
        return this.licenseServers;
    }
    

    @override
    String getLicenseServer(int index) {
        return (this.licenseServers.objectArray[index]! as String);
    }
    

    @override
    int getNumberOfLicenseServers() {
        return this.licenseServers.size();
    }
    

    @override
    ABHashtable toHashtable() {
        final AbeClientInformationData abeClientInformationData = AbeClientInformationData.getInstance();
        final GenericOperatingSystem genericOperatingSystem = this.getOperatingSystemInterface();
        final ABHashtable clientInfoHashtable = StdUtil.getInstance().createHashtable();
        clientInfoHashtable.put(abeClientInformationData.NAME, this.name);
        clientInfoHashtable.put(abeClientInformationData.VERSION, this.version);
        clientInfoHashtable.put(abeClientInformationData.SPECIALNAME, this.specialName);
        clientInfoHashtable.put(abeClientInformationData.LICENSEID, this.getLicenseId());
        clientInfoHashtable.put(abeClientInformationData.OSNAME, genericOperatingSystem.getName());
        clientInfoHashtable.put(abeClientInformationData.OSARCH, genericOperatingSystem.getArch());
        clientInfoHashtable.put(abeClientInformationData.OSVERSION, genericOperatingSystem.getVersion());
        clientInfoHashtable.put(abeClientInformationData.OS, genericOperatingSystem.toString());
        final HardwareInterface hardwareInterface = SystemHardwareFactory.getInstance().getInstance1(genericOperatingSystem);
        String hardwareString = hardwareInterface.toString();
        clientInfoHashtable.put(abeClientInformationData.HARDWARE, hardwareString);
        return clientInfoHashtable;
    }
    

    @override
    bool isSameId(String alicenseId) {
        if (this.tsUtil.compareTo(this.getLicenseId(), alicenseId) == 0) {
            return true;
        } else {
            return false;
        }
    }
    

    @override
    bool isLargerOrDifferentServerList(BasicArrayList list) {
        final int size = list.size() - 1;
        final int currentSize = this.licenseServers.size() - 1;
        if (size > currentSize) {
            return true;
        }
        for (int index = size; index >= 0; index--) {
            final String newServerName = (list.objectArray[index]! as String);
            for (int index2 = currentSize; index2 >= 0; index2--) {
                final String nextOldServerName = (this.licenseServers.objectArray[index]! as String);
                if (this.tsUtil.compareTo(newServerName, nextOldServerName) != 0) {
                    return true;
                }
            }
        }
        return false;
    }
    

    void setHardSale(bool hardSale) {
        this.hardSale = hardSale;
    }
    

    @override
    bool isHardSale() {
        return this.hardSale;
    }
    

    void setOperatingSystemInterface(GenericOperatingSystem operatingSystemInterface) {
        this.operatingSystemInterface = operatingSystemInterface;
    }
    

    void setLicenseId(String licenseId) {
        this.licenseId = licenseId;
    }
    

    void setLicenseServers(BasicArrayList licenseServers) {
        this.licenseServers = licenseServers;
    }
    

    @override
    String toShortString() {
        return this.shortName;
    }
}

