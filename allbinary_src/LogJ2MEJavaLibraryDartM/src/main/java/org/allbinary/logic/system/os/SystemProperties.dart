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

//ActualPlatform
class SystemProperties {
    static final SystemProperties instance = SystemProperties();
    late String OS_NAME;
    late String OS_ARCH;
    late String OS_VERSION;
    late String USER_HOME;

    // Java field initializers run after the base constructor
    void initFieldsSystemProperties() {
    this.OS_NAME = "os.name";
    this.OS_ARCH = "os.arch";
    this.OS_VERSION = "os.version";
    this.USER_HOME = "user.home";
    }
    

    static SystemProperties getInstance() {
        return SystemProperties.instance;
    }
    

    SystemProperties() {
        this.initFieldsSystemProperties();
    }
    

    String getName() {
        return JSystem.getProperty(this.OS_NAME);
    }
    

    String getArch() {
        return JSystem.getProperty(this.OS_ARCH);
    }
    

    String getVersion() {
        return JSystem.getProperty(this.OS_VERSION);
    }
    

    String getUserHomePath() {
        return JSystem.getProperty(this.USER_HOME);
    }
}

