/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic.math

import 'package:allbinary/allbinary_java.dart';

class J2SEMath {
    static final J2SEMath instance = J2SEMath();
    

    static J2SEMath getInstance() {
        return J2SEMath.instance;
    }
    

    int round(double value) {
        return JMath.round(value);
    }
    

    double abs(double value) {
        return ((value < 0.0) ? -value : value);
    }
    

    double absdouble(double value) {
        return ((value < 0.0) ? -value : value);
    }
}

