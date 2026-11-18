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
// package org.allbinary.logic.system.security.licensing.registration

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';

class RegistrationConfiguration {
    static final RegistrationConfiguration SINGLETON = RegistrationConfiguration();
    late String registrationCode;
    late String NAME;

    // Java field initializers run after the base constructor
    void initFieldsRegistrationConfiguration() {
    this.registrationCode = "No Registration Code";
    this.NAME = "registrationid";
    }
    

    RegistrationConfiguration() {
        this.initFieldsRegistrationConfiguration();
    }
    

    static RegistrationConfiguration getInstance() {
        return RegistrationConfiguration.SINGLETON;
    }
    

    void read() {
    }
    

    void write() {
    }
    

    @override
    String toString() {
        return StringMaker().append("Registration Code: ").append(this.getRegistrationCode()).toString();
    }
    

    void setRegistrationCode(String registrationCode) {
        this.registrationCode = registrationCode;
    }
    

    String getRegistrationCode() {
        return this.registrationCode;
    }
}

