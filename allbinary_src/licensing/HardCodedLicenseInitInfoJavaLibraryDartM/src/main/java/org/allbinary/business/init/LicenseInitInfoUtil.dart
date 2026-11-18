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
import 'package:allbinary/org/allbinary/business/init/LicenseInitInfo.dart';

class LicenseInitInfoUtil {
    static final LicenseInitInfoUtil instance = LicenseInitInfoUtil();
    late String INITFILENAME;
    late String ABOUT;
    late String PRIVACY_POLICY;
    late String OFFICIAL_ALLBINARY_SERVICES_SERVER;

    // Java field initializers run after the base constructor
    void initFieldsLicenseInitInfoUtil() {
    this.INITFILENAME = "licenseinitdata.dat";
    this.ABOUT = "about";
    this.PRIVACY_POLICY = "privacy_policy";
    this.OFFICIAL_ALLBINARY_SERVICES_SERVER = "https://services.allbinary.com/LicServ/serverssl.php";
    }
    

    static LicenseInitInfoUtil getInstance() {
        return LicenseInitInfoUtil.instance;
    }
    

    void setFilePath(String filePath) {
    }
    

    LicenseInitInfoUtil() {
        this.initFieldsLicenseInitInfoUtil();
    }
    

    void write(LicenseInitInfo initData) {
    }
    

    LicenseInitInfo read() {
        return this.readAgain(0);
    }
    

    LicenseInitInfo readAgain(int initializeCounter) {
        LicenseInitInfo licenseInitInfo = LicenseInitInfo();
        licenseInitInfo.clearServers();
        licenseInitInfo.addServer(this.OFFICIAL_ALLBINARY_SERVICES_SERVER);
        return licenseInitInfo;
    }
}

