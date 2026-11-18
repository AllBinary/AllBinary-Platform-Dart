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
// package org.allbinary.math

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/math/AngleIncrementInfo.dart';
import 'package:allbinary/org/allbinary/math/AngleIncrementInfoFactory.dart';
import 'package:allbinary/org/allbinary/math/FrameUtil.dart';

class AngleInfo {
    static const String ANGLE = "Angle: ";
    late AngleIncrementInfo angleIncrementInfo;
    int angle = 0;
    late FrameUtil frameUtil;

    // Java field initializers run after the base constructor
    void initFieldsAngleInfo() {
    
    this.angle = 0;
    this.frameUtil = FrameUtil.getInstance();
    }
    

    static AngleInfo getInstance1(int angleIncrement) {
        return AngleInfo(AngleIncrementInfoFactory.getInstance().getAt(angleIncrement));
    }
    

    AngleInfo(AngleIncrementInfo angleIncrementInfo) {
        this.initFieldsAngleInfo();
        this.angleIncrementInfo = angleIncrementInfo;
    }
    

    void adjustAngle(int frame) {
        final int newAngle = this.angleIncrementInfo.getAngleIncrement() * frame - 90;
        this.setAngle((this.frameUtil.adjustAngleToFrameAngle(newAngle)).toSigned(16));
    }
    

    int getAngle() {
        return this.angle;
    }
    

    void setAngle(int angle) {
        this.angle = angle;
    }
    

    AngleIncrementInfo getAngleIncrementInfo() {
        return this.angleIncrementInfo;
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append(AngleInfo.ANGLE);
        stringBuffer.appendshort(this.angle);
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(StringUtil.getInstance().toString1(this.getAngleIncrementInfo()));
        return stringBuffer.toString();
    }
}

