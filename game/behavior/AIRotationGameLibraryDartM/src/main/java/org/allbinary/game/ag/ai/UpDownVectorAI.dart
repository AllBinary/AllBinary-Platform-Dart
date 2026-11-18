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
// package org.allbinary.game.ag.ai

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/ai/BasicAI.dart';
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/game/physics/velocity/BasicVelocityProperties.dart';
import 'package:allbinary/org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/logic/math/BasicDecimal.dart';

class UpDownVectorAI extends BasicAI {
    late BasicVelocityProperties velocityInterface;
    int index = 0;

    // Java field initializers run after the base constructor
    void initFieldsUpDownVectorAI() {
    
    this.index = 0;
    }
    

    UpDownVectorAI(AllBinaryLayer ownerLayerInterface, GameInput gameInput) : super(ownerLayerInterface, gameInput) {
        this.initFieldsUpDownVectorAI();
        
        final VelocityInterfaceCompositeInterface velocityInterfaceCompositeInterface = (this.getOwnerLayerInterface() as VelocityInterfaceCompositeInterface);
        this.velocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties();
        this.velocityInterface.getVelocityYBasicDecimalP().setint(0);
    }
    

    @override
    void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        final int y = this.getOwnerLayerInterface().getHeight() * 270;
        if (this.index < 5) {
            final BasicDecimal basicDecimal = this.velocityInterface.getVelocityYBasicDecimalP();
            basicDecimal.setint(0);
            basicDecimal.addint(y);
            this.index++;
        } else if (this.index < 10) {
            final BasicDecimal basicDecimal = this.velocityInterface.getVelocityYBasicDecimalP();
            basicDecimal.setint(0);
            basicDecimal.subtractint(y);
            this.index++;
        } else {
            this.index = 0;
            this.processAI(allBinaryLayerManager);
        }
    }
}

