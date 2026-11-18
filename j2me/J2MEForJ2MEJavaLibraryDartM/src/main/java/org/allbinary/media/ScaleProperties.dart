/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.media

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';

class ScaleProperties {
    static final ScaleProperties instance = ScaleProperties();
    double scaleX = 0.0;
    double scaleY = 0.0;
    int scaleWidth = 0;
    int scaleHeight = 0;
    bool shouldScale = false;

    // Java field initializers run after the base constructor
    void initFieldsScaleProperties() {
    this.scaleX = 1.0;
    this.scaleY = 1.0;
    this.scaleWidth = 0;
    this.scaleHeight = 0;
    this.shouldScale = false;
    }

    ScaleProperties() {
        this.initFieldsScaleProperties();
    }
    

    @override
    String toString() {
        return StringMaker().append(CommonLabels.getInstance().COLON_SEP).appendboolean(this.shouldScale).append("scaleX: ").appendfloat(this.scaleX).append("scaleY: ").appendfloat(this.scaleY).append("scaleWidth: ").appendint(this.scaleWidth).append("scaleHeight: ").appendint(this.scaleHeight).toString();
    }
}

