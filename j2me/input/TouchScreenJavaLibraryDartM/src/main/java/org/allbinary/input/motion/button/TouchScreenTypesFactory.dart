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
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.input.motion.button

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchScreenType.dart';

class TouchScreenTypesFactory {
    static final TouchScreenTypesFactory instance = TouchScreenTypesFactory();
    late TouchScreenType FINGER;
    late TouchScreenType NOTOUCH;
    late TouchScreenType STYLUS;
    late TouchScreenType UNDEFINED;

    // Java field initializers run after the base constructor
    void initFieldsTouchScreenTypesFactory() {
    this.FINGER = TouchScreenType("Finger");
    this.NOTOUCH = TouchScreenType("No Touch");
    this.STYLUS = TouchScreenType("Stylus");
    this.UNDEFINED = TouchScreenType("Undefined");
    }

    TouchScreenTypesFactory() {
        this.initFieldsTouchScreenTypesFactory();
    }
    

    static TouchScreenTypesFactory getInstance() {
        return TouchScreenTypesFactory.instance;
    }
}

