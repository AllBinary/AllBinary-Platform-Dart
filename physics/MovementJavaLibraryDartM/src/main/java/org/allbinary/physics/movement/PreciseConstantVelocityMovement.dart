// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.physics.movement

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/layer/AllBinaryGameLayer.dart';
import 'package:allbinary/org/allbinary/game/physics/velocity/BasicVelocityProperties.dart';
import 'package:allbinary/org/allbinary/logic/math/BasicDecimal.dart';
import 'package:allbinary/org/allbinary/logic/math/MathUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/ScaleFactorFactory.dart';
import 'package:allbinary/org/allbinary/physics/movement/BasicConstantVelocityMovement.dart';

class PreciseConstantVelocityMovement extends BasicConstantVelocityMovement {
    int accumulatedX = 0;
    int accumulatedY = 0;
    int accumulatedZ = 0;
    int factorValue = 0;

    // Java field initializers run after the base constructor
    void initFieldsPreciseConstantVelocityMovement() {
    this.accumulatedX = 0;
    this.accumulatedY = 0;
    this.accumulatedZ = 0;
    this.factorValue = ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE;
    }
    

    PreciseConstantVelocityMovement(BasicDecimal basicDecimal, BasicVelocityProperties velocityProperties) : super(basicDecimal, velocityProperties) {
        this.initFieldsPreciseConstantVelocityMovement();
        
    }
    

    @override
    void init(BasicDecimal speedBasicDecimal, int angle, int otherAngle) {
    }
    

    @override
    void process(AllBinaryGameLayer layer) {
        final MathUtil mathUtil = MathUtil.getInstance();
        final BasicVelocityProperties velocityProperties = this.getVelocityProperties();
        this.accumulatedX = ((this.accumulatedX + velocityProperties.getVelocityXBasicDecimalP().getUnscaled())).toSigned(32);
        this.accumulatedY = ((this.accumulatedY + velocityProperties.getVelocityYBasicDecimalP().getUnscaled())).toSigned(32);
        this.accumulatedZ = ((this.accumulatedZ + velocityProperties.getVelocityZBasicDecimalP().getUnscaled())).toSigned(32);
        layer.moveDXYZ(this.accumulatedX ~/ this.factorValue, this.accumulatedY ~/ this.factorValue, this.accumulatedZ ~/ this.factorValue);
        if (mathUtil.abs(this.accumulatedX) > this.factorValue) {
            this.accumulatedX = 0;
        }
        if (mathUtil.abs(this.accumulatedY) > this.factorValue) {
            this.accumulatedY = 0;
        }
        if (mathUtil.abs(this.accumulatedZ) > this.factorValue) {
            this.accumulatedZ = 0;
        }
    }
}

