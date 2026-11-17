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
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonPhoneStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/math/Angle.dart';
import 'package:allbinary/org/allbinary/math/NamedAngle.dart';
import 'package:allbinary/org/allbinary/math/FrameUtil.dart';

class AngleFactory {
    static final AngleFactory instance = AngleFactory();
    late LogUtil logUtil;
    int TOTAL_ANGLE = 0;
    int QUARTER_TOTAL_ANGLE = 0;
    late List<Angle?> angleArray;
    int NEGATIVE_ONE = 0;
    late NamedAngle NOT_ANGLE;
    late NamedAngle DOWN;
    late NamedAngle UP;
    late NamedAngle LEFT;
    late NamedAngle RIGHT;
    late FrameUtil frameUtil;

    // Java field initializers run after the base constructor
    void initFieldsAngleFactory() {
    this.logUtil = LogUtil.getInstance();
    this.TOTAL_ANGLE = 360;
    this.QUARTER_TOTAL_ANGLE = 90;
    this.angleArray = List<Angle?>.filled(this.TOTAL_ANGLE, null);
    this.NEGATIVE_ONE = (-1).toSigned(16);
    this.NOT_ANGLE = NamedAngle(this.NEGATIVE_ONE, CommonStrings.getInstance().EMPTY);
    
    
    
    
    this.frameUtil = FrameUtil.getInstance();
    }
    

    static AngleFactory getInstance() {
        return AngleFactory.instance;
    }
    

    AngleFactory() {
        this.initFieldsAngleFactory();
        final CommonPhoneStrings commonPhoneStrings = CommonPhoneStrings.getInstance();
        final int total = (this.angleArray.length).toSigned(16);
        this.UP = NamedAngle((0).toSigned(16), commonPhoneStrings.UP);
        this.angleArray[0] = this.UP;
        for (int index = 1; index < 90; index++) {
            this.angleArray[index] = Angle((index).toSigned(16));
        }
        this.RIGHT = NamedAngle((90).toSigned(16), commonPhoneStrings.RIGHT);
        this.angleArray[90] = this.RIGHT;
        for (int index = 91; index < 180; index++) {
            this.angleArray[index] = Angle((index).toSigned(16));
        }
        this.DOWN = NamedAngle((180).toSigned(16), commonPhoneStrings.DOWN);
        this.angleArray[180] = this.DOWN;
        for (int index = 181; index < 270; index++) {
            this.angleArray[index] = Angle((index).toSigned(16));
        }
        this.LEFT = NamedAngle((270).toSigned(16), commonPhoneStrings.LEFT);
        this.angleArray[270] = this.LEFT;
        for (int index = 271; index < total; index++) {
            this.angleArray[index] = Angle((index).toSigned(16));
        }
    }
    

    Angle getAt(int index) {
        final int adjustedIndex = this.frameUtil.adjustAngleToFrameAngle(index);
        return this.angleArray[adjustedIndex]!;
    }
    

    Angle getClosestDirection(int angle) {
        if ((angle >= 315 && angle < 360) || (angle >= 0 && angle < 45)) {
            return this.UP;
        } else if (angle >= 45 && angle < 135) {
            return this.RIGHT;
        } else if (angle >= 135 && angle < 225) {
            return this.DOWN;
        } else if (angle >= 225 && angle < 315) {
            return this.LEFT;
        }
        throw JException('RuntimeException', '');
    }
    

    Angle getGeneralDirection() {
        return this.NOT_ANGLE;
    }
    

    static void main(List<String?> args) {
        final StringMaker stringMaker = StringMaker();
        final AngleFactory angleFactory = AngleFactory.getInstance();
        for (int index = 0; index < 360; index++) {
            stringMaker.appendint(index).append(CommonSeps.getInstance().FORWARD_SLASH).appendshort(angleFactory.getClosestDirection(index).getValue()).append(CommonSeps.getInstance().NEW_LINE);
        }
        LogUtil.getInstance().putF(stringMaker.toString(), "main", "main");
    }
}

