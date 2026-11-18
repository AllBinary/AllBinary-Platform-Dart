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
// package org.allbinary.game.ag.ai.scroller

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/org/allbinary/game/ai/BasicAI.dart';
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/game/physics/velocity/BasicVelocityProperties.dart';
import 'package:allbinary/org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/logic/math/MathUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';

class BasePatrolAI extends BasicAI {
    static final int MAX_DISTANCE = SmallIntegerSingletonFactory.getInstance().getAt(2);
    static final int DIRECTION_ARRAY = SmallIntegerSingletonFactory.getInstance().getAt(3);
    static final int FIRING_DISTANCE = SmallIntegerSingletonFactory.getInstance().getAt(4);
    static int SPEED = SmallIntegerSingletonFactory.getInstance().getAt(5);
    late int maxDistance;
    int currentDistance = 0;
    int xTotalDistance = 0;
    int lastKeyDirection = 0;
    int keyDirection = 0;

    // Java field initializers run after the base constructor
    void initFieldsBasePatrolAI() {
    
    
    this.xTotalDistance = 0;
    this.lastKeyDirection = Canvas.RIGHT;
    this.keyDirection = Canvas.RIGHT;
    }
    

    BasePatrolAI(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) : super(ownerLayerInterface, gameInput) {
        this.initFieldsBasePatrolAI();
        
        this.maxDistance = (hashtable.get(BasePatrolAI.MAX_DISTANCE) as int);
        this.currentDistance = (this.maxDistance).toInt();
    }
    

    void update() {
        this.updateTotalDistance();
        this.changeDirectionIfReachedPacingAreaMax();
    }
    

    void updateTotalDistance() {
        final VelocityInterfaceCompositeInterface velocityInterfaceCompositeInterface = (this.getOwnerLayerInterface() as VelocityInterfaceCompositeInterface);
        final BasicVelocityProperties velocityProperties = velocityInterfaceCompositeInterface.getVelocityProperties();
        this.xTotalDistance += velocityProperties.getVelocityXBasicDecimalP().getScaled();
    }
    

    void changeDirectionIfReachedPacingAreaMax() {
        final MathUtil mathUtil = MathUtil.getInstance();
        final int totalDistance = mathUtil.abs(this.xTotalDistance);
        if (totalDistance > this.currentDistance) {
            this.nextDirection();
        }
    }
    

    void nextDirection() {
        if (this.lastKeyDirection == Canvas.LEFT) {
            this.keyDirection = Canvas.RIGHT;
            this.lastKeyDirection = this.keyDirection;
            this.xTotalDistance = 0;
        } else if (this.lastKeyDirection == Canvas.RIGHT) {
            this.keyDirection = Canvas.LEFT;
            this.lastKeyDirection = this.keyDirection;
            this.xTotalDistance = 0;
        }
    }
    

    void disable() {
    }
}

