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
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/math/BasicDecimal.dart';

class Orientation {
    static Orientation NONE = Orientation(0, 0, 0);
    static Orientation SINGLETON = Orientation(0, 0, 0);
    late BasicDecimal yaw;
    late BasicDecimal pitch;
    late BasicDecimal roll;

    // Java field initializers run after the base constructor
    void initFieldsOrientation() {
    this.yaw = BasicDecimal(0);
    this.pitch = BasicDecimal(0);
    this.roll = BasicDecimal(0);
    }
    

    static Orientation getInstance3(int yaw, int pitch, int roll) {
        Orientation.SINGLETON.yaw.setint(yaw);
        Orientation.SINGLETON.pitch.setint(pitch);
        Orientation.SINGLETON.roll.setint(roll);
        return Orientation.SINGLETON;
    }
    

    Orientation(int yaw, int pitch, int roll) {
        this.initFieldsOrientation();
        this.yaw.setint(yaw);
        this.pitch.setint(pitch);
        this.roll.setint(roll);
    }
    

    @override
    String toString() {
        StringMaker stringBuffer = StringMaker();
        stringBuffer.append("Y: ");
        stringBuffer.append(this.yaw.toString());
        stringBuffer.append(" P: ");
        stringBuffer.append(this.pitch.toString());
        stringBuffer.append(" R: ");
        stringBuffer.append(this.roll.toString());
        return stringBuffer.toString();
    }
}

