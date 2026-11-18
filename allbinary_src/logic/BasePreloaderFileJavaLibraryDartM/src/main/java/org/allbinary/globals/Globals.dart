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
// package org.allbinary.globals

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringValidationUtil.dart';
import 'package:allbinary/org/allbinary/logic/system/loader/WebappClassLoaderInfo.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/globals/AppUrlGlobals.dart';
import 'package:allbinary/org/allbinary/globals/URLGLOBALS.dart';

class Globals {
    static final Globals instance = Globals();
    late LogUtil logUtil;

    // Java field initializers run after the base constructor
    void initFieldsGlobals() {
    this.logUtil = LogUtil.getInstance();
    }
    

    static Globals getInstance() {
        return Globals.instance;
    }
    

    Globals() {
        this.initFieldsGlobals();
    }
    

    void init(ClassLoader classLoader, String pathString) {
        final CommonStrings commonStrings = CommonStrings.getInstance();
        final AppUrlGlobals appUrlGlobals = AppUrlGlobals();
        appUrlGlobals.setWebappPath(pathString);
        URLGLOBALS.init(appUrlGlobals);
        WebappClassLoaderInfo.setLoader(classLoader);
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append("Setting Up AllBinary System Configuration Args: ");
        stringBuffer.append(pathString);
        stringBuffer.append(" ClassLoader: ");
        stringBuffer.append(jClassName(classLoader));
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT);
        final StringValidationUtil stringValidationUtil = StringValidationUtil.getInstance();
        if (stringValidationUtil.isEmpty(pathString)) {
            stringBuffer.delete(0, stringBuffer.length());
            stringBuffer.append("No Path Provided. Using Process Path: ");
            stringBuffer.append(pathString);
            stringBuffer.append(CommonSeps.getInstance().SPACE);
            stringBuffer.append(CommonSeps.getInstance().EQUALS);
            stringBuffer.append(CommonSeps.getInstance().SPACE);
            stringBuffer.append(URLGLOBALS.getWebappPath());
            this.logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT);
        }
        stringBuffer.delete(0, stringBuffer.length());
        stringBuffer.append("Webapp Path Set To: ");
        stringBuffer.append(URLGLOBALS.getWebappPath());
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT);
    }
}

