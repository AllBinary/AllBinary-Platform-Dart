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
import 'package:allbinary/org/allbinary/globals/AppUrlGlobals.dart';
import 'package:allbinary/org/allbinary/globals/UrlGlobalsInterface.dart';

class URLGLOBALS {
    static UrlGlobalsInterface urlGlobalsInterface = AppUrlGlobals.NULL_APP_URL_GLOBALS;
    

    static void init(UrlGlobalsInterface urlGlobalsInterface) {
        URLGLOBALS.urlGlobalsInterface = urlGlobalsInterface;
    }
    

    static bool isTestingMode() {
        return URLGLOBALS.urlGlobalsInterface.isTestingMode();
    }
    

    static String getWebappPath() {
        return URLGLOBALS.urlGlobalsInterface.getWebappPath();
    }
    

    static String getTestHtmlPath() {
        return URLGLOBALS.urlGlobalsInterface.getTestHtmlPath();
    }
    

    static String getMainPath() {
        return URLGLOBALS.urlGlobalsInterface.getMainPath();
    }
}

