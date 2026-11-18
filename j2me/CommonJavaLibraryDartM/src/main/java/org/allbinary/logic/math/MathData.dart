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
// package org.allbinary.logic.math

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/string/CommonPhoneStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';

class MathData {
    static final MathData instance = MathData();
    late String EQUALS;
    late String PLUS;
    late String GREATER_THAN;
    late String MINUS;
    late String DIVIDE;
    late String MULTIPLY;

    // Java field initializers run after the base constructor
    void initFieldsMathData() {
    
    this.PLUS = "+";
    this.GREATER_THAN = ">";
    
    
    
    }
    

    static MathData getInstance() {
        return MathData.instance;
    }
    

    MathData() {
        this.initFieldsMathData();
        final CommonSeps commonSeps = CommonSeps.getInstance();
        this.EQUALS = commonSeps.EQUALS;
        this.MINUS = commonSeps.DASH;
        this.DIVIDE = commonSeps.FORWARD_SLASH;
        this.MULTIPLY = CommonPhoneStrings.getInstance().STAR;
    }
}

