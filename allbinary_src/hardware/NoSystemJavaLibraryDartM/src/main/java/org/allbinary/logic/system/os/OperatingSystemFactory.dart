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
// package org.allbinary.logic.system.os

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/logic/system/os/NoOperatingSystem.dart';
import 'package:allbinary/org/allbinary/logic/system/os/GenericOperatingSystem.dart';

class OperatingSystemFactory {
    static final OperatingSystemFactory instance = OperatingSystemFactory();
    late LogUtil logUtil;
    late GenericOperatingSystem genericOperatingSystem;

    // Java field initializers run after the base constructor
    void initFieldsOperatingSystemFactory() {
    this.logUtil = LogUtil.getInstance();
    this.genericOperatingSystem = NoOperatingSystem.NO_OPERATING_SYSTEM;
    }
    

    static OperatingSystemFactory getInstance() {
        return OperatingSystemFactory.instance;
    }
    

    OperatingSystemFactory() {
        this.initFieldsOperatingSystemFactory();
    }
    

    GenericOperatingSystem getOperatingSystemInstance() {
        final CommonStrings commonStrings = CommonStrings.getInstance();
        try {
            final String osString = StringMaker().append("OperatingSystem Info: ").append(this.genericOperatingSystem.toString()).toString();
            JSystem.println(jstr(osString));
            this.logUtil.putF(osString, this, commonStrings.GET_INSTANCE);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e);
            }
        }
        return this.genericOperatingSystem;
    }
}

