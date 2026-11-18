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
// package org.allbinary.game.physics.velocity

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/direction/Direction.dart';
import 'package:allbinary/org/allbinary/logic/math/BasicDecimal.dart';
import 'package:allbinary/org/allbinary/math/Angle.dart';

abstract interface class BasicVelocityInterface {
    

    BasicDecimal getVelocityXBasicDecimalP();
    

    BasicDecimal getVelocityYBasicDecimalP();
    

    void zero();
    

    void setVelocityWithBigDecimalAndDirection(BasicDecimal magnitudeBasicDecimal, Direction direction, Direction otherDirection);
    

    void addVelocityWithBigDecimalAndDirection(BasicDecimal magnitudeBasicDecimal, Direction direction, Direction otherDirection);
    

    void setVelocityWithDirection(int magnitude, Direction direction, Direction otherDirection);
    

    void addVelocityWithDirection(int magnitude, Direction direction, Direction otherDirection);
    

    void setVelocityWithBigDecimal(BasicDecimal magnitudeBasicDecimal, Angle angle, Angle otherAngle);
    

    void addVelocityWithBigDecimal(BasicDecimal magnitudeBasicDecimal, Angle angle, Angle otherAngle);
    

    void setVelocity(int magnitude, Angle angle, Angle otherAngle);
    

    void addVelocity(int magnitude, Angle angle, Angle otherAngle);
    

    void addVelocityi(int magnitude, int angle, int otherAngle);
}

