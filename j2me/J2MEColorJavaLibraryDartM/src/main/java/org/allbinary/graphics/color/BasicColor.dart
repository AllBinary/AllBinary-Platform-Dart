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
// package org.allbinary.graphics.color

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorUtil.dart';

class BasicColor {
    late String name;
    int value = 0;
    double redComponent = 0.0;
    double greenComponent = 0.0;
    double blueComponent = 0.0;
    double alphaComponent = 0.0;
    int red = 0;
    int green = 0;
    int blue = 0;
    int alpha = 0;

    // Java field initializers run after the base constructor
    void initFieldsBasicColor() {
    
    
    
    
    
    
    
    
    
    
    }
    

    BasicColor(int alphaValue, int value, String name) {
        this.initFieldsBasicColor();
        this.name = name;
        int tempValue = 0;
        final BasicColorUtil basicColorUtil = BasicColorUtil.getInstance();
        if (basicColorUtil.isAlpha) {
            if (basicColorUtil.ffOpaque) {
                tempValue = alphaValue | value;
            } else {
                tempValue = 0x00000000 | value;
            }
        } else {
            tempValue = value;
        }
        int alphaInt = ((tempValue >> 24) & 255);
        this.alpha = (alphaInt).toSigned(16);
        this.alphaComponent = ((alphaInt).toDouble()) / 255.0;
        int redInt = ((tempValue >> 16) & 255);
        this.red = (redInt).toSigned(16);
        this.redComponent = ((redInt).toDouble()) / 255.0;
        int greenInt = ((tempValue >> 8) & 255);
        this.green = (greenInt).toSigned(16);
        this.greenComponent = ((greenInt).toDouble()) / 255.0;
        int blueInt = ((tempValue) & 255);
        this.blue = (blueInt).toSigned(16);
        this.blueComponent = ((blueInt).toDouble()) / 255.0;
        this.value = tempValue;
    }
    

    int intValue() {
        return this.value;
    }
    

    int toInt() {
        return this.value;
    }
    

    @override
    String toString() {
        StringMaker stringBuffer = StringMaker();
        stringBuffer.append("BasicColor: ");
        stringBuffer.append("Alpha: ");
        stringBuffer.appendshort(this.alpha);
        stringBuffer.append(" Red: ");
        stringBuffer.appendshort(this.red);
        stringBuffer.append(" Green: ");
        stringBuffer.appendshort(this.green);
        stringBuffer.append(" Blue: ");
        stringBuffer.appendshort(this.blue);
        stringBuffer.append(" Value: ");
        stringBuffer.appendint(this.value);
        return stringBuffer.toString();
    }
    

    String getName() {
        return this.name;
    }
    

    double getRedComponent() {
        return this.redComponent;
    }
    

    double getGreenComponent() {
        return this.greenComponent;
    }
    

    double getBlueComponent() {
        return this.blueComponent;
    }
    

    double getAlphaComponent() {
        return this.alphaComponent;
    }
}

