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
import 'package:allbinary/org/allbinary/game/physics/acceleration/GravityUtil.dart';
import 'package:allbinary/org/allbinary/game/physics/velocity/VelocityProperties.dart';
import 'package:allbinary/org/allbinary/logic/math/BasicDecimal.dart';
import 'package:allbinary/org/allbinary/physics/movement/BasicConstantVelocityMovement.dart';

class SimpleGravityVelocityMovement extends BasicConstantVelocityMovement {
    late GravityUtil gravityUtil;

    // Java field initializers run after the base constructor
    void initFieldsSimpleGravityVelocityMovement() {
    this.gravityUtil = GravityUtil.getInstance();
    }
    

    SimpleGravityVelocityMovement(BasicDecimal speedBasicDecimal) : super(speedBasicDecimal, VelocityProperties((speedBasicDecimal.getUnscaled()).toSigned(32), (speedBasicDecimal.getUnscaled()).toSigned(32))) {
        this.initFieldsSimpleGravityVelocityMovement();
        
    }
    

    @override
    void process(AllBinaryGameLayer layer) {
        this.gravityUtil.process(this.getVelocityProperties(), this.gravityUtil.GAME_GRAVITY_VELOCITY);
        super.process(layer);
    }
}

