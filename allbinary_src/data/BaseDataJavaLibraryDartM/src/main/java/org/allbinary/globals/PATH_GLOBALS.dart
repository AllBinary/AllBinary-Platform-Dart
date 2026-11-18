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
import 'package:allbinary/org/allbinary/logic/io/path/AbPathData.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class PATH_GLOBALS {
    static final PATH_GLOBALS instance = PATH_GLOBALS();
    late String DATA_PATH;
    late String INIT_PATH;
    late String VIEWS_PATH;
    late String LOG_PATH;
    late String BACKUP_PATH;

    // Java field initializers run after the base constructor
    void initFieldsPATH_GLOBALS() {
    
    
    
    
    
    }
    

    static PATH_GLOBALS getInstance() {
        return PATH_GLOBALS.instance;
    }
    

    PATH_GLOBALS() {
        this.initFieldsPATH_GLOBALS();
        final StringMaker stringBuffer = StringMaker();
        final AbPathData abPathData = AbPathData.getInstance();
        stringBuffer.append("data");
        stringBuffer.append(abPathData.SEPARATOR);
        this.DATA_PATH = stringBuffer.toString();
        stringBuffer.delete(0, stringBuffer.length());
        stringBuffer.append(this.DATA_PATH);
        stringBuffer.append(CommonStrings.getInstance().INIT);
        stringBuffer.append(abPathData.SEPARATOR);
        this.INIT_PATH = stringBuffer.toString();
        stringBuffer.delete(0, stringBuffer.length());
        stringBuffer.append(this.DATA_PATH);
        stringBuffer.append("log");
        stringBuffer.append(abPathData.SEPARATOR);
        this.LOG_PATH = stringBuffer.toString();
        stringBuffer.delete(0, stringBuffer.length());
        stringBuffer.append(this.DATA_PATH);
        stringBuffer.append("backup");
        stringBuffer.append(abPathData.SEPARATOR);
        this.BACKUP_PATH = stringBuffer.toString();
        stringBuffer.delete(0, stringBuffer.length());
        stringBuffer.append(this.INIT_PATH);
        stringBuffer.append("views");
        stringBuffer.append(abPathData.SEPARATOR);
        this.VIEWS_PATH = stringBuffer.toString();
    }
}

