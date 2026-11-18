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
import 'package:allbinary/org/allbinary/business/init/LicenseInitInfo.dart';
import 'package:allbinary/org/allbinary/business/init/LicenseInitInfoUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringValidationUtil.dart';
import 'package:allbinary/org/allbinary/logic/system/os/OperatingSystemFactory.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/ClientInformation.dart';

// This is the information sent to the license server
class AbeClientInformation extends ClientInformation {
    late LogUtil logUtil;

    // Java field initializers run after the base constructor
    void initFieldsAbeClientInformation() {
    this.logUtil = LogUtil.getInstance();
    }
    

    AbeClientInformation(String name, String version, String specialName, String shortName) : super(name, version, specialName, shortName) {
        this.initFieldsAbeClientInformation();
        
    }
    

    @override
    void init() {
        try {
            this.setOperatingSystemInterface(OperatingSystemFactory.getInstance().getOperatingSystemInstance());
            final LicenseInitInfo licenseInitInfo = LicenseInitInfoUtil.getInstance().read();
            this.setLicenseId(licenseInitInfo.getLicenseId());
            this.setLicenseServers(licenseInitInfo.getServerList());
            final StringValidationUtil stringValidationUtil = StringValidationUtil.getInstance();
            if (stringValidationUtil.isEmpty(this.getLicenseId())) {
                final String NONE = "No License Id";
                this.setLicenseId(NONE);
            }
            final CommonStrings commonStrings = CommonStrings.getInstance();
            PreLogUtil.put(StringMaker().append("Special Name: ").append(this.getSpecialName()).toString(), this, commonStrings.CONSTRUCTOR);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final LogUtil logUtil = LogUtil.getInstance();
            final CommonStrings commonStrings = CommonStrings.getInstance();
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
            }
        }
    }
}

