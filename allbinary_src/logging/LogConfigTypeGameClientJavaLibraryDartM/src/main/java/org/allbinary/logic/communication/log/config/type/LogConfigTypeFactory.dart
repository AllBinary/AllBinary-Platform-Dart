/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.logic.communication.log.config.type

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/config/type/LogConfigType.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/config/type/LogConfigTypes.dart';

class LogConfigTypeFactory {
    static final LogConfigTypeFactory instance = LogConfigTypeFactory();
    late String NO_DESCRIPTION;
    late LogConfigType OS;
    late LogConfigType FACTORYERROR;

    // Java field initializers run after the base constructor
    void initFieldsLogConfigTypeFactory() {
    this.NO_DESCRIPTION = "No Description";
    this.OS = LogConfigType("Operating System", this.NO_DESCRIPTION);
    this.FACTORYERROR = LogConfigType("Factory Error", this.NO_DESCRIPTION);
    }
    

    static LogConfigTypeFactory getInstance() {
        return LogConfigTypeFactory.instance;
    }
    

    LogConfigTypeFactory() {
        this.initFieldsLogConfigTypeFactory();
        LogConfigTypes.LOGGING.add(this.OS);
        LogConfigTypes.LOGGING.add(this.FACTORYERROR);
    }
}

