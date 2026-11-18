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
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/animation/RotationAnimationInterface.dart';
import 'package:allbinary/org/allbinary/animation/RotationAnimationInterfaceCompositeInterface.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/tactical/LurchAI.dart';
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/math/AngleIncrementInfo.dart';

class LurchRotationAI extends LurchAI {
    late IndexedAnimation rotationAnimationInterface;

    // Java field initializers run after the base constructor
    void initFieldsLurchRotationAI() {
    
    }
    

    LurchRotationAI(AllBinaryLayer ownerLayerInterface, GameInput gameInput) : super(ownerLayerInterface, gameInput) {
        this.initFieldsLurchRotationAI();
        
        final RotationAnimationInterfaceCompositeInterface rotationAnimationInterfaceCompositeInterface = (this.getOwnerLayerInterface() as RotationAnimationInterfaceCompositeInterface);
        this.rotationAnimationInterface = rotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface();
        this.update();
    }
    

    @override
    void reverse() {
        super.reverse();
        this.update();
    }
    

    void update() {
        if (this.currentRelativeAngle == 0) {
            final RotationAnimationInterface rotationAnimationInterface = (this.rotationAnimationInterface as RotationAnimationInterface);
            final AngleIncrementInfo angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo();
            final RotationAnimationInterfaceCompositeInterface rotationAnimationInterfaceCompositeInterface = (this.getOwnerLayerInterface() as RotationAnimationInterfaceCompositeInterface);
            rotationAnimationInterfaceCompositeInterface.setFrame((angleIncrementInfo.RIGHT_FRAME).toInt());
        } else if (this.currentRelativeAngle == 180) {
            final RotationAnimationInterface rotationAnimationInterface = (this.rotationAnimationInterface as RotationAnimationInterface);
            final AngleIncrementInfo angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo();
            final RotationAnimationInterfaceCompositeInterface rotationAnimationInterfaceCompositeInterface = (this.getOwnerLayerInterface() as RotationAnimationInterfaceCompositeInterface);
            rotationAnimationInterfaceCompositeInterface.setFrame((angleIncrementInfo.LEFT_FRAME).toInt());
        }
    }
}

