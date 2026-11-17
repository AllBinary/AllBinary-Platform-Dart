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
// package org.allbinary.math

import 'package:allbinary/allbinary_java.dart';

class PositionStrings {
    static final PositionStrings instance = PositionStrings();
    late String X;
    late String Y;
    late String X_LABEL;
    late String Y_LABEL;
    late String Z_LABEL;
    late String DX_LABEL;
    late String DY_LABEL;
    late String DZ_LABEL;

    // Java field initializers run after the base constructor
    void initFieldsPositionStrings() {
    this.X = "x";
    this.Y = "y";
    this.X_LABEL = "x: ";
    this.Y_LABEL = "y: ";
    this.Z_LABEL = "z: ";
    this.DX_LABEL = "dx: ";
    this.DY_LABEL = "dy: ";
    this.DZ_LABEL = "dz: ";
    }

    PositionStrings() {
        this.initFieldsPositionStrings();
    }
    

    static PositionStrings getInstance() {
        return PositionStrings.instance;
    }
}

