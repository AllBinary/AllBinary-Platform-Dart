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
import 'package:allbinary/org/allbinary/math/AngleIncrementInfo.dart';
import 'package:allbinary/org/allbinary/math/AngleFactory.dart';

class AngleIncrementInfoFactory {
    static final AngleIncrementInfoFactory instance = AngleIncrementInfoFactory();
    late List<AngleIncrementInfo?> angleIncrementInfo;

    // Java field initializers run after the base constructor
    void initFieldsAngleIncrementInfoFactory() {
    this.angleIncrementInfo = List<AngleIncrementInfo?>.filled(AngleFactory.getInstance().TOTAL_ANGLE, null);
    }

    AngleIncrementInfoFactory() {
        this.initFieldsAngleIncrementInfoFactory();
    }
    

    static AngleIncrementInfoFactory getInstance() {
        return AngleIncrementInfoFactory.instance;
    }
    

    AngleIncrementInfo getAt(int angleIncrement) {
        final int halfAngleIncrement = (angleIncrement >> 1);
        late AngleIncrementInfo angleIncrementInfo;
        AngleIncrementInfo angleIncrementInfoCanBeNull = this.angleIncrementInfo[halfAngleIncrement]!;
        if (angleIncrementInfoCanBeNull == null) {
            angleIncrementInfo = AngleIncrementInfo(angleIncrement);
            this.angleIncrementInfo[halfAngleIncrement] = angleIncrementInfo;
            return angleIncrementInfo;
        } else {
            angleIncrementInfo = angleIncrementInfoCanBeNull;
        }
        return angleIncrementInfo;
    }
}

