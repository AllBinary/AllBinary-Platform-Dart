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
import 'package:allbinary/org/allbinary/game/midlet/LicenseLoadingType.dart';

class LicenseLoadingTypeFactory {
    static final LicenseLoadingTypeFactory instance = LicenseLoadingTypeFactory();
    late LicenseLoadingType INITIAL_LOADING;
    late LicenseLoadingType GAME_START;
    late LicenseLoadingType LOGIN;
    late LicenseLoadingType OTHER;

    // Java field initializers run after the base constructor
    void initFieldsLicenseLoadingTypeFactory() {
    this.INITIAL_LOADING = LicenseLoadingType("Initial Loading");
    this.GAME_START = LicenseLoadingType("Game Start");
    this.LOGIN = LicenseLoadingType("Login");
    this.OTHER = LicenseLoadingType("Other/Usually The First Non Demo Level");
    }

    LicenseLoadingTypeFactory() {
        this.initFieldsLicenseLoadingTypeFactory();
    }
    

    static LicenseLoadingTypeFactory getIntance() {
        return LicenseLoadingTypeFactory.instance;
    }
}

