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
// package org.allbinary.logic.system.loader

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';

class WebappClassLoaderInfo {
    static Object classLoader = NullUtil.getInstance().NULL_OBJECT;
    

    WebappClassLoaderInfo() {
    }
    

    static void setLoader(ClassLoader classLoader) {
        WebappClassLoaderInfo.classLoader = classLoader;
    }
    

    static ClassLoader getLoader() {
        return (WebappClassLoaderInfo.classLoader as ClassLoader);
    }
}

