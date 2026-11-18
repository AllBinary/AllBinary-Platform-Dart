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
// package org.allbinary.logic.io.path

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';

class AbPathData {
    static final AbPathData instance = AbPathData();
    late String EXTENSION_SEP;
    int SEPARATORCHAR = 0;
    late String SEPARATOR;

    // Java field initializers run after the base constructor
    void initFieldsAbPathData() {
    this.EXTENSION_SEP = CommonSeps.getInstance().PERIOD;
    this.SEPARATORCHAR = "/".codeUnitAt(0);
    this.SEPARATOR = CommonSeps.getInstance().FORWARD_SLASH;
    }
    

    static AbPathData getInstance() {
        return AbPathData.instance;
    }
    

    AbPathData() {
        this.initFieldsAbPathData();
    }
}

