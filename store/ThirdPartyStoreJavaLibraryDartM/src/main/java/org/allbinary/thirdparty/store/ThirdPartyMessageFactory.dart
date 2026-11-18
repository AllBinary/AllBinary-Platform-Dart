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
// package org.allbinary.thirdparty.store

import 'package:allbinary/allbinary_java.dart';

class ThirdPartyMessageFactory {
    static final ThirdPartyMessageFactory instance = ThirdPartyMessageFactory();
    late String AUTHORIZED;
    late String NOT_AUTHORIZED;
    late String LINKAGE_ERROR;

    // Java field initializers run after the base constructor
    void initFieldsThirdPartyMessageFactory() {
    this.AUTHORIZED = "Authorized";
    this.NOT_AUTHORIZED = "Not Authorized";
    this.LINKAGE_ERROR = "Linkage Error";
    }

    ThirdPartyMessageFactory() {
        this.initFieldsThirdPartyMessageFactory();
    }
    

    static ThirdPartyMessageFactory getInstance() {
        return ThirdPartyMessageFactory.instance;
    }
}

