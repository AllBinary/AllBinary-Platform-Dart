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
import 'package:allbinary/org/allbinary/logic/math/BasicDecimal.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelperFactory.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/physics/movement/BasicConstantVelocityMovement.dart';

class DelayedConstantVelocityMovement extends BasicConstantVelocityMovement {
    late TimeDelayHelper timeDelayHelper;

    // Java field initializers run after the base constructor
    void initFieldsDelayedConstantVelocityMovement() {
    this.timeDelayHelper = TimeDelayHelper(60);
    }
    

    DelayedConstantVelocityMovement(BasicDecimal basicDecimal, BasicVelocityProperties velocityProperties) : super(basicDecimal, velocityProperties) {
        this.initFieldsDelayedConstantVelocityMovement();
        
    }
    

    @override
    void init(BasicDecimal speedBasicDecimal, int angle, int otherAngle) {
    }
    

    @override
    void process(AllBinaryGameLayer layer) {
        if (this.timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            super.process(layer);
        }
    }
}

