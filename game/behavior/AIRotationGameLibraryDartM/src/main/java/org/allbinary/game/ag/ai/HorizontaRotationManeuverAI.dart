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
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/org/allbinary/ai/ArtificialIntelligence.dart';
import 'package:allbinary/org/allbinary/ai/ArtificialIntelligenceTransitionInterface.dart';
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/animation/RotationAnimationInterface.dart';
import 'package:allbinary/org/allbinary/animation/RotationAnimationInterfaceCompositeInterface.dart';
import 'package:allbinary/org/allbinary/game/ai/BasicAI.dart';
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/game/physics/velocity/BasicVelocityProperties.dart';
import 'package:allbinary/org/allbinary/game/physics/velocity/VelocityInterface.dart';
import 'package:allbinary/org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/math/AngleIncrementInfo.dart';
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';

class HorizontaRotationManeuverAI extends BasicAI implements ArtificialIntelligenceTransitionInterface {
    late CircularIndexUtil circularIndexUtil;
    int currentSpeedDivisor = 0;
    late IndexedAnimation rotationAnimationInterface;
    late BasicVelocityProperties baseVelocityInterface;
    late VelocityInterface velocityInterface;

    // Java field initializers run after the base constructor
    void initFieldsHorizontaRotationManeuverAI() {
    this.circularIndexUtil = CircularIndexUtil.createInstanceAt(10, Integer.MAX_VALUE);
    this.currentSpeedDivisor = 5;
    
    
    
    }
    

    HorizontaRotationManeuverAI(AllBinaryLayer ownerLayerInterface, GameInput gameInput) : super(ownerLayerInterface, gameInput) {
        this.initFieldsHorizontaRotationManeuverAI();
        
        final RotationAnimationInterfaceCompositeInterface rotationAnimationInterfaceCompositeInterface = (this.getOwnerLayerInterface() as RotationAnimationInterfaceCompositeInterface);
        this.rotationAnimationInterface = rotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface();
        VelocityInterfaceCompositeInterface velocityInterfaceCompositeInterface = (this.getOwnerLayerInterface() as VelocityInterfaceCompositeInterface);
        this.baseVelocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties();
        this.velocityInterface = (this.baseVelocityInterface as VelocityInterface);
        final RotationAnimationInterface rotationAnimationInterface = (this.rotationAnimationInterface as RotationAnimationInterface);
        final AngleIncrementInfo angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo();
        rotationAnimationInterfaceCompositeInterface.setFrame((angleIncrementInfo.RIGHT_FRAME).toInt());
    }
    

    @override
    void transition() {
        final RotationAnimationInterface rotationAnimationInterface = (this.rotationAnimationInterface as RotationAnimationInterface);
        final AngleIncrementInfo angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo();
        final RotationAnimationInterfaceCompositeInterface rotationAnimationInterfaceCompositeInterface = (this.getOwnerLayerInterface() as RotationAnimationInterfaceCompositeInterface);
        rotationAnimationInterfaceCompositeInterface.setFrame((angleIncrementInfo.RIGHT_FRAME).toInt());
        AllBinaryLayer allbinaryLayer = this.getOwnerLayerInterface();
        allbinaryLayer.setPosition(allbinaryLayer.getXP(), 1, allbinaryLayer.getZP());
    }
    

    @override
    void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        final RotationAnimationInterface rotationAnimationInterface = ((this.rotationAnimationInterface as RotationAnimationInterface));
        final AngleIncrementInfo angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo();
        final int frame = this.rotationAnimationInterface.getFrame();
        final AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        if (ownerLayerInterface.getXP() - ownerLayerInterface.getWidth() <= 0 && frame == (angleIncrementInfo.LEFT_FRAME).toInt()) {
            this.reverse();
            this.drop();
        }
        final DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        if (ownerLayerInterface.getX2() + ownerLayerInterface.getWidth() > displayInfo.getLastWidth() && frame == (angleIncrementInfo.RIGHT_FRAME).toInt()) {
            this.reverse();
            this.accelerate();
            this.drop();
        }
        final int index = this.circularIndexUtil.getIndex();
        if ((index).remainder(this.currentSpeedDivisor) == 0 && (index).remainder(2) == 0) {
            super.processKeyAI(Canvas.UP);
            this.velocityInterface.limitMaxXYVelocity(this.velocityInterface.getMaxForwardVelocity() ~/ this.currentSpeedDivisor);
        }
        this.circularIndexUtil.next();
        if (frame == (angleIncrementInfo.LEFT_FRAME).toInt()) {
            super.processKeyAI(Canvas.KEY_NUM0);
        } else if (frame == (angleIncrementInfo.RIGHT_FRAME).toInt()) {
            super.processKeyAI(Canvas.KEY_POUND);
        }
    }
    

    void reverse() {
        final RotationAnimationInterface rotationAnimationInterface = (this.rotationAnimationInterface as RotationAnimationInterface);
        final AngleIncrementInfo angleIncrementInfo = rotationAnimationInterface.getAngleInfoP().getAngleIncrementInfo();
        final int frame = this.rotationAnimationInterface.getFrame();
        if (frame == (angleIncrementInfo.LEFT_FRAME).toInt()) {
            final RotationAnimationInterfaceCompositeInterface rotationAnimationInterfaceCompositeInterface = (this.getOwnerLayerInterface() as RotationAnimationInterfaceCompositeInterface);
            rotationAnimationInterfaceCompositeInterface.setFrame((angleIncrementInfo.RIGHT_FRAME).toInt());
            this.baseVelocityInterface.zero();
        } else if (frame == (angleIncrementInfo.RIGHT_FRAME).toInt()) {
            final RotationAnimationInterfaceCompositeInterface rotationAnimationInterfaceCompositeInterface = (this.getOwnerLayerInterface() as RotationAnimationInterfaceCompositeInterface);
            rotationAnimationInterfaceCompositeInterface.setFrame((angleIncrementInfo.LEFT_FRAME).toInt());
            this.baseVelocityInterface.zero();
        }
    }
    

    void accelerate() {
        if (this.currentSpeedDivisor > 1) {
            this.currentSpeedDivisor--;
        }
    }
    

    void drop() {
        final DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        final AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        int y = ownerLayerInterface.getYP();
        if (ownerLayerInterface.getY2() + ownerLayerInterface.getHeight() > displayInfo.getLastHeight()) {
            y = 0;
        } else {
            y += ownerLayerInterface.getHeight() + 1;
        }
        ownerLayerInterface.setPosition(ownerLayerInterface.getXP(), y, ownerLayerInterface.getZP());
    }
    

    @override
    int getId() {
        return ArtificialIntelligence.AI_ID;
    }
}

