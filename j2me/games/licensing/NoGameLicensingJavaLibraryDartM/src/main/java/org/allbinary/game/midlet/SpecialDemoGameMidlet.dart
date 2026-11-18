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
// package org.allbinary.game.midlet

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/ClientInformationFactory.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/LicenseServerInitFileUtil.dart';
import 'package:allbinary/org/allbinary/game/midlet/DemoGameMidlet.dart';
import 'package:allbinary/org/allbinary/game/midlet/LicenseLoadingType.dart';
import 'package:allbinary/org/allbinary/game/midlet/LicensedDemoSetupFactory.dart';
import 'package:allbinary/org/allbinary/game/midlet/LicenseCheckRunnableFactory.dart';

class SpecialDemoGameMidlet extends DemoGameMidlet {
    

    SpecialDemoGameMidlet(ClientInformationFactory clientInformationFactory, LicenseLoadingType licenseLoadingType, LicensedDemoSetupFactory demoSetupFactory, LicenseCheckRunnableFactory licenseCheckRunnableFactory) : super(clientInformationFactory) {
        
    }
    

    void initView() {
    }
    

    @override
    void preInit() {
        LicenseServerInitFileUtil().init();
    }
}

