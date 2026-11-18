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
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/globals/UrlGlobalsInterface.dart';

//implements
class AppUrlGlobals extends UrlGlobalsInterface {
    static final AppUrlGlobals NULL_APP_URL_GLOBALS = AppUrlGlobals();
    late String path;

    // Java field initializers run after the base constructor
    void initFieldsAppUrlGlobals() {
    this.path = StringUtil.getInstance().EMPTY_STRING;
    }

    AppUrlGlobals() {
        this.initFieldsAppUrlGlobals();
    }
    

    @override
    bool isTestingMode() {
        return false;
    }
    

    @override
    String getWebappPath() {
        return this.path;
    }
    

    void setWebappPath(String path) {
        this.path = path;
        if (!(this.path.endsWith("\\") || this.path.endsWith("/"))) {
            this.path = this.path + "\\";
        }
    }
    

    @override
    String getTestHtmlPath() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    @override
    String getMainPath() {
        return this.path;
    }
}

