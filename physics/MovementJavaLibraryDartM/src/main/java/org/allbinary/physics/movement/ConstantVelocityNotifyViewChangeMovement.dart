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
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/logic/math/BasicDecimal.dart';
import 'package:allbinary/org/allbinary/logic/math/vector/AxisMathVectorUtil.dart';
import 'package:allbinary/org/allbinary/math/AngleFactory.dart';
import 'package:allbinary/org/allbinary/physics/movement/Movement.dart';

class ConstantVelocityNotifyViewChangeMovement extends Movement {
    late BasicVelocityProperties basicVelocityProperties;
    late BasicDecimal speedBasicDecimal;
    late AxisMathVectorUtil axisMathVectorUtil;

    // Java field initializers run after the base constructor
    void initFieldsConstantVelocityNotifyViewChangeMovement() {
    
    
    this.axisMathVectorUtil = AxisMathVectorUtil.getInstance();
    }
    

    ConstantVelocityNotifyViewChangeMovement() {
        this.initFieldsConstantVelocityNotifyViewChangeMovement();
        this.speedBasicDecimal = BasicDecimal.ZERO_BIGDECIMAL;
        this.basicVelocityProperties = BasicVelocityProperties();
    }
    

    @override
    void init(BasicDecimal speedBasicDecimal, int angle, int otherAngle) {
        this.speedBasicDecimal = speedBasicDecimal;
        AngleFactory angleFactory = AngleFactory.getInstance();
        this.basicVelocityProperties.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory.getAt(angle), angleFactory.getAt(otherAngle));
    }
    

    void moveOutsideRadius(AllBinaryLayer layer, int radius, int angle, int otherAngle) {
        int scaleFactorValue = this.speedBasicDecimal.getScaledFactorValue();
        int xVector = ((this.axisMathVectorUtil.calculateX(radius, angle) ~/ scaleFactorValue)).toSigned(32);
        int yVector = ((this.axisMathVectorUtil.calculateY(radius, angle) ~/ scaleFactorValue)).toSigned(32);
        int zVector = ((this.axisMathVectorUtil.calculateZ(radius, otherAngle) ~/ scaleFactorValue)).toSigned(32);
        layer.moveDXYZ(xVector, yVector, zVector);
    }
    

    @override
    void process(AllBinaryGameLayer layer) {
        int x = this.basicVelocityProperties.getVelocityXBasicDecimalP().getScaled();
        int y = this.basicVelocityProperties.getVelocityYBasicDecimalP().getScaled();
        int z = this.basicVelocityProperties.getVelocityZBasicDecimalP().getScaled();
        layer.moveDXYZ(x, y, z);
        if (x != 0 || y != 0 || z != 0) {
            layer.onViewPositionChangeEvent();
        }
    }
    

    @override
    void stop() {
        this.basicVelocityProperties.zero();
    }
}

