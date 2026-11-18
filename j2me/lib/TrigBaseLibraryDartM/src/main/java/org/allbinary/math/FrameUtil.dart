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
import 'package:allbinary/org/allbinary/math/AngleFactory.dart';

class FrameUtil {
    static final FrameUtil instance = FrameUtil();
    

    static FrameUtil getInstance() {
        return FrameUtil.instance;
    }
    

    FrameUtil() {
    }
    

    int getFrameForAngle(int angle, int angleIncrement) {
        return this.adjustAngleToFrameAngle(angle) ~/ angleIncrement;
    }
    

    int getFrameAngle(int frame, int angleIncrement) {
        final int frameAngle = angleIncrement * frame - 90;
        return this.adjustAngleToFrameAngle(frameAngle);
    }
    

    int adjustAngleToFrameAngle(int currentAngle) {
        final AngleFactory angleFactory = AngleFactory.getInstance();
        if (currentAngle > 359) {
            currentAngle = (currentAngle - angleFactory.TOTAL_ANGLE);
            while (currentAngle > 359) {
                currentAngle = (currentAngle - angleFactory.TOTAL_ANGLE);
            }
        }
        if (currentAngle < 0) {
            currentAngle = (currentAngle + angleFactory.TOTAL_ANGLE);
            while (currentAngle < 0) {
                currentAngle = (currentAngle + angleFactory.TOTAL_ANGLE);
            }
        }
        return currentAngle;
    }
}

