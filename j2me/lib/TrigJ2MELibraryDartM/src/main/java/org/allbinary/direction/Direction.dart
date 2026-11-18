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
// package org.allbinary.direction

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';

class Direction {
    static List<Direction?> directionArray = List<Direction?>.filled(13, null);
    late String name;
    late String otherName;
    int value = 0;
    int frameFactor = 0;

    // Java field initializers run after the base constructor
    void initFieldsDirection() {
    
    
    
    
    }
    

    Direction(String name, String otherName, int value, int frameFactor) {
        this.initFieldsDirection();
        this.name = name;
        this.otherName = otherName;
        this.value = value;
        this.frameFactor = frameFactor;
        Direction.directionArray[value] = this;
    }
    

    static Direction getInstance1(int direction) {
        return Direction.directionArray[direction]!;
    }
    

    int getValue() {
        return this.value;
    }
    

    int getFrameFactor() {
        return this.frameFactor;
    }
    

    String getOtherName() {
        return this.otherName;
    }
    

    String getName() {
        return this.name;
    }
    

    @override
    String toString() {
        StringMaker stringBuffer = StringMaker();
        stringBuffer.append("Direction: ");
        stringBuffer.append(this.getName());
        stringBuffer.append(" Or: ");
        stringBuffer.append(this.getOtherName());
        stringBuffer.append(" Value: ");
        stringBuffer.appendint(this.value);
        return stringBuffer.toString();
    }
}

