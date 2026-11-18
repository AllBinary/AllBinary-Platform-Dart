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
import 'package:allbinary/org/allbinary/direction/Direction.dart';
import 'package:allbinary/org/allbinary/direction/DirectionCompositeInterface.dart';
import 'package:allbinary/org/allbinary/direction/DirectionFactory.dart';
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/game/tracking/TrackingEvent.dart';
import 'package:allbinary/org/allbinary/game/tracking/TrackingEventHandler.dart';
import 'package:allbinary/org/allbinary/game/tracking/TrackingEventListenerInterface.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/layer/LayerInterface.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/scroller/BasePatrolAI.dart';

class PacePatrolAI extends BasePatrolAI implements TrackingEventListenerInterface {
    late BasicArrayList trackingList;
    int firingDistance = 0;
    bool isFollowLimitedByTerrain = false;

    // Java field initializers run after the base constructor
    void initFieldsPacePatrolAI() {
    
    this.firingDistance = 0;
    this.isFollowLimitedByTerrain = false;
    }
    

    PacePatrolAI(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) : super(hashtable, ownerLayerInterface, gameInput) {
        this.initFieldsPacePatrolAI();
        
        TrackingEventHandler.getInstance().addListenerInterface(this);
        this.trackingList = BasicArrayListD();
    }
    

    @override
    void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        this.update();
        final Direction direction = this.setFiringDirectionForTargetIfInRange();
        final DirectionFactory directionFactory = DirectionFactory.getInstance();
        if (direction == directionFactory.LEFT) {
            if (this.lastKeyDirection != this.keyDirection || !this.isFollowLimitedByTerrain) {
                super.processKeyAI(Canvas.LEFT);
            }
            this.keyDirection = Canvas.LEFT;
            this.lastKeyDirection = this.keyDirection;
            this.xTotalDistance = 0;
            super.processKeyAI(Canvas.KEY_NUM1);
        } else if (direction == directionFactory.RIGHT) {
            if (this.lastKeyDirection != this.keyDirection || !this.isFollowLimitedByTerrain) {
                super.processKeyAI(Canvas.RIGHT);
            }
            this.keyDirection = Canvas.RIGHT;
            this.lastKeyDirection = this.keyDirection;
            this.xTotalDistance = 0;
            super.processKeyAI(Canvas.KEY_NUM1);
        } else {
            super.processKeyAI(this.keyDirection);
        }
    }
    

    Direction setFiringDirectionForTargetIfInRange() {
        final DirectionFactory directionFactory = DirectionFactory.getInstance();
        final AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        Direction direction = directionFactory.NOT_BORDERED_WITH;
        late TrackingEvent lastTrackingEvent;
        late LayerInterface lastTrackingLayerInterface;
        late DirectionCompositeInterface directionCompositeInterface;
        final int size = this.trackingList.size();
        for (int index = 0; index < size; index++) {
            lastTrackingEvent = (this.trackingList.get(0) as TrackingEvent);
            lastTrackingLayerInterface = lastTrackingEvent.getLayerInterface();
            int x = lastTrackingLayerInterface.getXP();
            int y = lastTrackingLayerInterface.getYP();
            int yDistance = ownerLayerInterface.getYP() - y - ownerLayerInterface.getHeight();
            int xDistance = ownerLayerInterface.getXP() - x - ownerLayerInterface.getWidth();
            int absXDistance = (xDistance).abs();
            int absYDistance = (yDistance).abs();
            if (absYDistance <= 100) {
                if (absXDistance < this.getFiringDistance() ~/ 2) {
                    directionCompositeInterface = (this.getOwnerLayerInterface() as DirectionCompositeInterface);
                    if (xDistance < 0 && directionCompositeInterface.getDirection() == directionFactory.RIGHT) {
                        direction = directionFactory.RIGHT;
                    } else if (xDistance > 0 && directionCompositeInterface.getDirection() == directionFactory.LEFT) {
                        direction = directionFactory.LEFT;
                    }
                }
            }
        }
        return direction;
    }
    

    @override
    void disable() {
    }
    

    @override
    void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    @override
    void onMovement(TrackingEvent trackingEvent) {
        this.trackingList.clear();
        this.trackingList.add(trackingEvent);
    }
    

    int getFiringDistance() {
        return this.firingDistance;
    }
    

    void setFiringDistance(int firingDistance) {
        this.firingDistance = firingDistance;
    }
}

