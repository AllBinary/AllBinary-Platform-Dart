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
// package org.allbinary.physics.movement

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/layer/AllBinaryGameLayer.dart';
import 'package:allbinary/org/allbinary/game/physics/velocity/BasicVelocityProperties.dart';
import 'package:allbinary/org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/logic/math/BasicDecimal.dart';
import 'package:allbinary/org/allbinary/logic/math/vector/AxisMathVectorUtil.dart';
import 'package:allbinary/org/allbinary/math/AngleFactory.dart';
import 'package:allbinary/org/allbinary/physics/movement/Movement.dart';

class NoZBasicConstantVelocityMovement extends Movement implements VelocityInterfaceCompositeInterface {
    late BasicVelocityProperties velocityProperties;
    late BasicDecimal speedBasicDecimal;
    late AxisMathVectorUtil axisMathVectorUtil;

    // Java field initializers run after the base constructor
    void initFieldsNoZBasicConstantVelocityMovement() {
    
    this.speedBasicDecimal = BasicDecimal.ZERO_BIGDECIMAL;
    this.axisMathVectorUtil = AxisMathVectorUtil.getInstance();
    }
    

    NoZBasicConstantVelocityMovement(BasicDecimal basicDecimal, BasicVelocityProperties velocityProperties) {
        this.initFieldsNoZBasicConstantVelocityMovement();
        this.setSpeedBasicDecimal(basicDecimal);
        this.velocityProperties = velocityProperties;
    }
    

    @override
    void init(BasicDecimal speedBasicDecimal, int angle, int otherAngle) {
        this.speedBasicDecimal = speedBasicDecimal;
        AngleFactory angleFactory = AngleFactory.getInstance();
        this.velocityProperties.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory.getAt(angle), angleFactory.getAt(otherAngle));
    }
    

    void moveOutsideRadius(AllBinaryLayer layer, int radius, int angle, int otherAngle) {
        int scaleFactorValue = this.speedBasicDecimal.getScaledFactorValue();
        int xVector = ((this.axisMathVectorUtil.calculateX(radius, angle) ~/ scaleFactorValue)).toSigned(32);
        int yVector = ((this.axisMathVectorUtil.calculateY(radius, angle) ~/ scaleFactorValue)).toSigned(32);
        layer.moveDXYZ(xVector, yVector, 0);
    }
    

    @override
    void process(AllBinaryGameLayer layer) {
        layer.moveDXYZ(this.velocityProperties.getVelocityXBasicDecimalP().getScaled(), this.velocityProperties.getVelocityYBasicDecimalP().getScaled(), 0);
    }
    

    @override
    String toString() {
        return this.velocityProperties.toString();
    }
    

    @override
    void stop() {
        this.velocityProperties.zero();
    }
    

    @override
    BasicVelocityProperties getVelocityProperties() {
        return this.velocityProperties;
    }
    

    void setVelocityProperties(BasicVelocityProperties velocityProperties) {
        this.velocityProperties = velocityProperties;
    }
    

    void setSpeedBasicDecimal(BasicDecimal speedBasicDecimal) {
        this.speedBasicDecimal = speedBasicDecimal;
    }
    

    BasicDecimal getSpeedBasicDecimal() {
        return this.speedBasicDecimal;
    }
}

