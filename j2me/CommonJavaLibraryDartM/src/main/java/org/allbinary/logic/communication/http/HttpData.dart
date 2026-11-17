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
// ignore_for_file: unused_import, unused_local_variable, unnecessary_null_comparison
// package org.allbinary.logic.communication.http

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';

class HttpData {
    static final HttpData instance = HttpData();
    late String EQUALS;
    late String PARAM_SEP;
    late String URL_PARAM_SEP;
    late String URL_LABEL;

    // Java field initializers run after the base constructor
    void initFieldsHttpData() {
    
    
    
    this.URL_LABEL = "Url: ";
    }
    

    static HttpData getInstance() {
        return HttpData.instance;
    }
    

    HttpData() {
        this.initFieldsHttpData();
        final CommonSeps commonSeps = CommonSeps.getInstance();
        this.EQUALS = commonSeps.EQUALS;
        this.PARAM_SEP = commonSeps.AMPERSAND;
        this.URL_PARAM_SEP = commonSeps.QUESTION;
    }
}

