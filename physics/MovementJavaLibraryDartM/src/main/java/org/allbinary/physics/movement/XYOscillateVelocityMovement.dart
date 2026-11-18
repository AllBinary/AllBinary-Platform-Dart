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
import 'package:allbinary/org/allbinary/game/physics/velocity/VelocityProperties.dart';
import 'package:allbinary/org/allbinary/logic/math/BasicDecimal.dart';
import 'package:allbinary/org/allbinary/physics/movement/BasicConstantVelocityMovement.dart';

class XYOscillateVelocityMovement extends BasicConstantVelocityMovement {
    int oscillateMin = 0;
    int oscillateMax = 0;
    int oscillate = 0;
    bool oscillatePositive = false;

    // Java field initializers run after the base constructor
    void initFieldsXYOscillateVelocityMovement() {
    
    
    this.oscillate = 0;
    this.oscillatePositive = false;
    }
    

    XYOscillateVelocityMovement(BasicDecimal speedBasicDecimal, int oscillateMin, int oscillateMax) : super(speedBasicDecimal, VelocityProperties((speedBasicDecimal.getUnscaled()).toSigned(32), (speedBasicDecimal.getUnscaled()).toSigned(32))) {
        this.initFieldsXYOscillateVelocityMovement();
        
        this.oscillateMin = oscillateMin;
        this.oscillateMax = oscillateMax;
    }
    

    @override
    void process(AllBinaryGameLayer layer) {
        super.process(layer);
        if (this.oscillate < this.oscillateMin) {
            this.oscillatePositive = true;
            this.getVelocityProperties().getVelocityYBasicDecimalP().addint(3000);
        } else if (this.oscillate > this.oscillateMax) {
            this.oscillatePositive = false;
            this.getVelocityProperties().getVelocityYBasicDecimalP().subtractint(3000);
        }
        if (this.oscillatePositive) {
            this.oscillate++;
            this.getVelocityProperties().getVelocityXBasicDecimalP().addint(5000);
        } else {
            this.oscillate--;
            this.getVelocityProperties().getVelocityXBasicDecimalP().subtractint(5000);
        }
    }
}

