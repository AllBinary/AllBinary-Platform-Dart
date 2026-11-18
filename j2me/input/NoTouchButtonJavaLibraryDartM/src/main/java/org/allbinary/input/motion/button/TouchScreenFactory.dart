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
// package org.allbinary.input.motion.button

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchScreenTypesFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchScreenType.dart';

class TouchScreenFactory {
    static final TouchScreenFactory SINGLETON = TouchScreenFactory();
    bool multiTouch = false;
    bool touch = false;
    late TouchScreenType touchScreenType;

    // Java field initializers run after the base constructor
    void initFieldsTouchScreenFactory() {
    this.multiTouch = false;
    this.touch = false;
    this.touchScreenType = TouchScreenTypesFactory.getInstance().NOTOUCH;
    }
    

    TouchScreenFactory() {
        this.initFieldsTouchScreenFactory();
    }
    

    static TouchScreenFactory getInstance() {
        return TouchScreenFactory.SINGLETON;
    }
    

    bool isMultiTouch() {
        return this.multiTouch;
    }
    

    void setTouch(bool touch) {
    }
    

    bool isTouch() {
        return this.touch;
    }
    

    TouchScreenType getTouchScreenType() {
        return this.touchScreenType;
    }
}

