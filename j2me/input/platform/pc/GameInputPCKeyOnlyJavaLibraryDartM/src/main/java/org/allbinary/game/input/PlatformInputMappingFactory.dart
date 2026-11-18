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
// package org.allbinary.game.input

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/input/mapping/PersistentInputMapping.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/input/LaptopGameInputMapping.dart';

class PlatformInputMappingFactory {
    static final PlatformInputMappingFactory instance = PlatformInputMappingFactory();
    late LogUtil logUtil;
    late PersistentInputMapping inputToGameKeyMapping;

    // Java field initializers run after the base constructor
    void initFieldsPlatformInputMappingFactory() {
    this.logUtil = LogUtil.getInstance();
    this.inputToGameKeyMapping = PersistentInputMapping.getNullInstance();
    }

    PlatformInputMappingFactory() {
        this.initFieldsPlatformInputMappingFactory();
    }
    

    static PlatformInputMappingFactory getInstance() {
        return PlatformInputMappingFactory.instance;
    }
    

    PersistentInputMapping getPersistentInputMappingInstance() {
        try {
            if (this.inputToGameKeyMapping == PersistentInputMapping.getNullInstance()) {
                this.inputToGameKeyMapping = LaptopGameInputMapping();
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e);
            }
        }
        return this.inputToGameKeyMapping;
    }
}

