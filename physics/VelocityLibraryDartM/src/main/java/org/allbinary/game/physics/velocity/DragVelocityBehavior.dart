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
import 'package:allbinary/org/allbinary/logic/math/BasicDecimal.dart';
import 'package:allbinary/org/allbinary/game/physics/velocity/VelocityBehaviorBase.dart';
import 'package:allbinary/org/allbinary/game/physics/velocity/BasicVelocityProperties.dart';

class DragVelocityBehavior extends VelocityBehaviorBase {
    static final DragVelocityBehavior instance = DragVelocityBehavior();
    

    @override
    void reduce(BasicVelocityProperties velocityProperties, int nominator, int denominator) {
        if (velocityProperties.getVelocityXBasicDecimalP().getUnscaled() != 0) {
            final BasicDecimal basicDecimal = velocityProperties.getVelocityXBasicDecimalP();
            basicDecimal.multiplyint(nominator);
            basicDecimal.divideint(denominator);
        }
        if (velocityProperties.getVelocityYBasicDecimalP().getUnscaled() != 0) {
            final BasicDecimal basicDecimal = velocityProperties.getVelocityYBasicDecimalP();
            basicDecimal.multiplyint(nominator);
            basicDecimal.divideint(denominator);
        }
    }
    

    @override
    void reduceX(BasicVelocityProperties velocityProperties, int nominator, int denominator) {
        final BasicDecimal basicDecimal = velocityProperties.getVelocityXBasicDecimalP();
        if (basicDecimal.getUnscaled() != 0) {
            basicDecimal.multiplyint(nominator);
            basicDecimal.divideint(denominator);
        }
    }
    

    @override
    void reduceY(BasicVelocityProperties velocityProperties, int nominator, int denominator) {
        if (velocityProperties.getVelocityYBasicDecimalP().getUnscaled() != 0) {
            final BasicDecimal basicDecimal = velocityProperties.getVelocityYBasicDecimalP();
            basicDecimal.multiplyint(nominator);
            basicDecimal.divideint(denominator);
        }
    }
}

