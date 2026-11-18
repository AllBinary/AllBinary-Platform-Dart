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
// package org.allbinary.game.physics.acceleration

import 'package:allbinary/allbinary_java.dart';

class BasicAccelerationProperties {
    int forward = 0;
    int reverse = 0;

    // Java field initializers run after the base constructor
    void initFieldsBasicAccelerationProperties() {
    this.forward = 0;
    this.reverse = 0;
    }
    

    BasicAccelerationProperties(int forward, int reverse) {
        this.initFieldsBasicAccelerationProperties();
        this.setForward(forward);
        this.setReverse(reverse);
    }
    

    void setReverse(int reverse) {
        this.reverse = reverse;
    }
    

    int getReverse() {
        return this.reverse;
    }
    

    void setForward(int forward) {
        this.forward = forward;
    }
    

    int getForward() {
        return this.forward;
    }
}

