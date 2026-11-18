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
import 'package:allbinary/org/allbinary/direction/DirectionUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/BasicDecimal.dart';
import 'package:allbinary/org/allbinary/logic/math/vector/AxisMathVectorUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/math/Angle.dart';
import 'package:allbinary/org/allbinary/math/PositionStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/game/physics/velocity/BasicVelocityInterface.dart';

class BasicVelocityProperties implements BasicVelocityInterface {
    late LogUtil logUtil;
    late BasicDecimal velocityXBasicDecimal;
    late BasicDecimal velocityYBasicDecimal;
    late BasicDecimal velocityZBasicDecimal;
    late AxisMathVectorUtil axisMathVectorUtil;
    late DirectionUtil directionUtil;

    // Java field initializers run after the base constructor
    void initFieldsBasicVelocityProperties() {
    this.logUtil = LogUtil.getInstance();
    
    
    
    this.axisMathVectorUtil = AxisMathVectorUtil.getInstance();
    this.directionUtil = DirectionUtil.getInstance();
    }
    

    BasicVelocityProperties() {
        this.initFieldsBasicVelocityProperties();
        this.velocityXBasicDecimal = BasicDecimal(0);
        this.velocityYBasicDecimal = BasicDecimal(0);
        this.velocityZBasicDecimal = BasicDecimal(0);
    }
    

    @override
    void zero() {
        this.velocityXBasicDecimal.setint(0);
        this.velocityYBasicDecimal.setint(0);
        this.velocityZBasicDecimal.setint(0);
    }
    

    @override
    BasicDecimal getVelocityXBasicDecimalP() {
        return this.velocityXBasicDecimal;
    }
    

    @override
    BasicDecimal getVelocityYBasicDecimalP() {
        return this.velocityYBasicDecimal;
    }
    

    BasicDecimal getVelocityZBasicDecimalP() {
        return this.velocityZBasicDecimal;
    }
    

    @override
    void setVelocityWithBigDecimalAndDirection(BasicDecimal magnitudeBasicDecimal, Direction direction, Direction otherDirection) {
        final Angle angle = this.directionUtil.getAngle(direction);
        final Angle otherAngle = this.directionUtil.getAngle(otherDirection);
        this.setVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle);
    }
    

    @override
    void setVelocityWithDirection(int magnitude, Direction direction, Direction otherDirection) {
        final Angle angle = this.directionUtil.getAngle(direction);
        final Angle otherAngle = this.directionUtil.getAngle(otherDirection);
        this.setVelocity(magnitude, angle, otherAngle);
    }
    

    @override
    void addVelocityWithBigDecimalAndDirection(BasicDecimal magnitudeBasicDecimal, Direction direction, Direction otherDirection) {
        final Angle angle = this.directionUtil.getAngle(direction);
        final Angle otherAngle = this.directionUtil.getAngle(otherDirection);
        this.addVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle);
    }
    

    @override
    void addVelocityWithDirection(int magnitude, Direction direction, Direction otherDirection) {
        final Angle angle = this.directionUtil.getAngle(direction);
        final Angle otherAngle = this.directionUtil.getAngle(otherDirection);
        this.addVelocity(magnitude, angle, otherAngle);
    }
    

    @override
    void setVelocityWithBigDecimal(BasicDecimal magnitudeBasicDecimal, Angle angle, Angle otherAngle) {
        final int magnitude = magnitudeBasicDecimal.getUnscaled();
        this.setVelocity(magnitude, angle, otherAngle);
    }
    

    @override
    void addVelocityWithBigDecimal(BasicDecimal magnitudeBasicDecimal, Angle angle, Angle otherAngle) {
        final int magnitude = magnitudeBasicDecimal.getUnscaled();
        this.addVelocity(magnitude, angle, otherAngle);
    }
    

    @override
    void setVelocity(int magnitude, Angle angle, Angle otherAngle) {
        this.setVelocityi(magnitude, angle.getValue(), otherAngle.getValue());
    }
    

    @override
    void addVelocity(int magnitude, Angle angle, Angle otherAngle) {
        this.addVelocityi(magnitude, angle.getValue(), otherAngle.getValue());
    }
    

    void setVelocityi(int magnitude, int angle, int otherAngle) {
        final int xVector = (this.axisMathVectorUtil.calculateX(magnitude, angle) ~/ this.velocityXBasicDecimal.getScaledFactorValue());
        final int yVector = (this.axisMathVectorUtil.calculateY(magnitude, angle) ~/ this.velocityYBasicDecimal.getScaledFactorValue());
        final int zVector = (this.axisMathVectorUtil.calculateZ(magnitude, otherAngle) ~/ this.velocityZBasicDecimal.getScaledFactorValue());
        this.velocityXBasicDecimal.setlong(xVector);
        this.velocityYBasicDecimal.setlong(yVector);
        this.velocityZBasicDecimal.setlong(zVector);
    }
    

    @override
    void addVelocityi(int magnitude, int angle, int otherAngle) {
        final int xVector = (this.axisMathVectorUtil.calculateX(magnitude, angle) ~/ this.velocityXBasicDecimal.getScaledFactorValue());
        final int yVector = (this.axisMathVectorUtil.calculateY(magnitude, angle) ~/ this.velocityYBasicDecimal.getScaledFactorValue());
        final int zVector = (this.axisMathVectorUtil.calculateZ(magnitude, otherAngle) ~/ this.velocityZBasicDecimal.getScaledFactorValue());
        this.velocityXBasicDecimal.addlong(xVector);
        this.velocityYBasicDecimal.addlong(yVector);
        this.velocityZBasicDecimal.addlong(zVector);
    }
    

    @override
    String toString() {
        final CommonSeps commonSeps = CommonSeps.getInstance();
        final PositionStrings positionStrings = PositionStrings.getInstance();
        final StringMaker stringBuffer = StringMaker();
        final StringUtil stringUtil = StringUtil.getInstance();
        stringBuffer.append("Velocity ");
        stringBuffer.append(positionStrings.X_LABEL);
        stringBuffer.append(stringUtil.toString1(this.velocityXBasicDecimal));
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.Y_LABEL);
        stringBuffer.append(stringUtil.toString1(this.velocityYBasicDecimal));
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.Z_LABEL);
        stringBuffer.append(stringUtil.toString1(this.velocityZBasicDecimal));
        return stringBuffer.toString();
    }
}

