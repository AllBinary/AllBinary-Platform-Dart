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

class OperatingSystems {
    static final OperatingSystems instance = OperatingSystems();
    late String LINUX;
    late String WINDOWS;
    late String SOLARIS;
    late String WINDOWS2000;
    late String WINDOWS_NT;
    late String WINDOWS_10;
    late String WINDOWS_11;
    late String WINDOWS_VISTA;
    late String WINDOWS_XP;
    late String ANDROID;
    late String HARMONY;
    bool unknownSpecificOSAllowed = false;

    // Java field initializers run after the base constructor
    void initFieldsOperatingSystems() {
    this.LINUX = "Linux";
    this.WINDOWS = "Windows";
    this.SOLARIS = "Solaris";
    this.WINDOWS2000 = "Windows 2000";
    this.WINDOWS_NT = "Windows NT";
    this.WINDOWS_10 = "Windows 10";
    this.WINDOWS_11 = "Windows 11";
    this.WINDOWS_VISTA = "Windows Vista";
    this.WINDOWS_XP = "Windows XP";
    this.ANDROID = this.LINUX;
    this.HARMONY = "HarmonyOS";
    this.unknownSpecificOSAllowed = true;
    }
    

    OperatingSystems() {
        this.initFieldsOperatingSystems();
    }
    

    bool isUnknownSpecificOSAllowed() {
        return this.unknownSpecificOSAllowed;
    }
    

    void setUnknownSpecificOSAllowed(bool aUnknownSpecificOSAllowed) {
        this.unknownSpecificOSAllowed = aUnknownSpecificOSAllowed;
    }
    

    static OperatingSystems getInstance() {
        return OperatingSystems.instance;
    }
}

