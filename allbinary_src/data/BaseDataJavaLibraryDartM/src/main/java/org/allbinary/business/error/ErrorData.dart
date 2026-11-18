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
// package org.allbinary.business.error

import 'package:allbinary/allbinary_java.dart';

class ErrorData {
    static final ErrorData instance = ErrorData();
    late String NAME;
    late String TEXT;

    // Java field initializers run after the base constructor
    void initFieldsErrorData() {
    this.NAME = "ERROR_NAME";
    this.TEXT = "ERROR_TEXT";
    }
    

    static ErrorData getInstance() {
        return ErrorData.instance;
    }
    

    ErrorData() {
        this.initFieldsErrorData();
    }
}

