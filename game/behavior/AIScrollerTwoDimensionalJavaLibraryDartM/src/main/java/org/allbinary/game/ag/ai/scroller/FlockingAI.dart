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
import 'package:allbinary/org/allbinary/game/identification/BasicGroupFactory.dart';
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/game/layer/identification/GroupLayerManagerListener.dart';
import 'package:allbinary/org/allbinary/game/layer/weapon/WeaponLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/logic/math/MathUtil.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/scroller/BasePatrolAI.dart';

class FlockingAI extends BasicAI {
    int allowedDistance = 0;

    // Java field initializers run after the base constructor
    void initFieldsFlockingAI() {
    
    }
    

    FlockingAI(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) : super(ownerLayerInterface, gameInput) {
        this.initFieldsFlockingAI();
        
        final int allowedDistance = (hashtable.get(BasePatrolAI.MAX_DISTANCE) as int);
        this.allowedDistance = (allowedDistance).toInt();
    }
    

    @override
    void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        int maxDistance = 0;
        AllBinaryLayer farAllbinaryLayer = AllBinaryLayer.NULL_ALLBINARY_LAYER;
        final GroupLayerManagerListener groupLayerManagerListener = GroupLayerManagerListener.getInstance();
        final BasicArrayList list = groupLayerManagerListener.getList(BasicGroupFactory.getInstance().ENEMY);
        final int size = list.size();
        late AllBinaryLayer allBinaryLayer;
        late AllBinaryLayer ownerLayerInterface;
        for (int index = 0; index < size; index++) {
            allBinaryLayer = (list.get(index) as AllBinaryLayer);
            if (allBinaryLayer.getType() != WeaponLayer.getStaticType()) {
                int distance = this.getXYDistance(allBinaryLayer);
                if (distance > maxDistance) {
                    maxDistance = distance;
                    farAllbinaryLayer = allBinaryLayer;
                    if (distance > this.allowedDistance) {
                        break;
                    }
                }
            }
        }
        if (maxDistance > this.allowedDistance) {
            if (farAllbinaryLayer != AllBinaryLayer.NULL_ALLBINARY_LAYER) {
                ownerLayerInterface = this.getOwnerLayerInterface();
                if (farAllbinaryLayer.getXP() < ownerLayerInterface.getXP()) {
                    this.processKeyAI(Canvas.LEFT);
                } else if (farAllbinaryLayer.getXP() > ownerLayerInterface.getXP()) {
                    this.processKeyAI(Canvas.RIGHT);
                } else if (farAllbinaryLayer.getYP() > ownerLayerInterface.getYP()) {
                    this.processKeyAI(Canvas.UP);
                } else if (farAllbinaryLayer.getYP() < ownerLayerInterface.getYP()) {
                    this.processKeyAI(Canvas.DOWN);
                }
            }
        }
    }
    

    int getXYDistance(AllBinaryLayer allBinaryLayer) {
        final AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        final int xTotalDistance = (allBinaryLayer.getXP() + allBinaryLayer.getHalfWidth()) - (ownerLayerInterface.getXP() + ownerLayerInterface.getHalfWidth());
        final int yTotalDistance = (allBinaryLayer.getYP() + allBinaryLayer.getHalfHeight()) - (ownerLayerInterface.getYP() + ownerLayerInterface.getHalfHeight());
        final MathUtil mathUtil = MathUtil.getInstance();
        final int totalDistance = mathUtil.abs(xTotalDistance) + mathUtil.abs(yTotalDistance);
        return totalDistance;
    }
}

