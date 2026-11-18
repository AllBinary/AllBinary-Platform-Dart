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
import 'package:allbinary/org/allbinary/ai/ArtificialIntelligenceInterface.dart';
import 'package:allbinary/org/allbinary/direction/Direction.dart';
import 'package:allbinary/org/allbinary/direction/DirectionFactory.dart';
import 'package:allbinary/org/allbinary/direction/DirectionalCompositeInterface.dart';
import 'package:allbinary/org/allbinary/direction/DirectionalInterface.dart';
import 'package:allbinary/org/allbinary/game/ai/BasicAI.dart';
import 'package:allbinary/org/allbinary/game/combat/destroy/event/DestroyedEvent.dart';
import 'package:allbinary/org/allbinary/game/combat/destroy/event/DestroyedEventHandler.dart';
import 'package:allbinary/org/allbinary/game/combat/destroy/event/DestroyedEventListenerInterface.dart';
import 'package:allbinary/org/allbinary/game/identification/Group.dart';
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/game/physics/velocity/BasicVelocityProperties.dart';
import 'package:allbinary/org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface.dart';
import 'package:allbinary/org/allbinary/game/tracking/TrackingEvent.dart';
import 'package:allbinary/org/allbinary/game/tracking/TrackingEventHandler.dart';
import 'package:allbinary/org/allbinary/game/tracking/TrackingEventListenerInterface.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/MathUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/logic/util/visitor/Visitor.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelperFactory.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class DiveAndDirectionalTrackingAI extends BasicAI implements TrackingEventListenerInterface, DestroyedEventListenerInterface {
    late MathUtil mathUtil;
    late DirectionFactory directionFactory;
    late GameTickTimeDelayHelper gameTickTimeDelayHelper;
    late TimeDelayHelper timeDelayHelper;
    late BasicArrayList list;
    late DirectionalInterface directionalInterface;
    late BasicVelocityProperties velocityInterface;
    late List<int> directionToKeyMap;
    bool initialDropped = false;
    bool diveP = false;
    late Direction directionOfTarget;
    int MIN_DISTANCE = 0;
    late AllBinaryLayer lastTrackingLayerInterface;
    late ArtificialIntelligenceInterface artificialIntelligenceInterface;
    late Visitor aiVistor;
    late Direction lastDirection;

    // Java field initializers run after the base constructor
    void initFieldsDiveAndDirectionalTrackingAI() {
    this.mathUtil = MathUtil.getInstance();
    this.directionFactory = DirectionFactory.getInstance();
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    this.timeDelayHelper = TimeDelayHelper(500);
    this.list = BasicArrayListD();
    
    
    this.directionToKeyMap = <int>[Canvas.LEFT, Canvas.DOWN, Canvas.UP, Canvas.RIGHT];
    this.initialDropped = false;
    this.diveP = false;
    this.directionOfTarget = Direction.getInstance1(0);
    this.MIN_DISTANCE = 40;
    this.lastTrackingLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER;
    
    
    this.lastDirection = DirectionFactory.getInstance().NO_DIRECTION;
    }
    

    DiveAndDirectionalTrackingAI(AllBinaryLayer ownerLayerInterface, ArtificialIntelligenceInterface artificialIntelligenceInterface, GameInput gameInput, Visitor visitor) : super(ownerLayerInterface, gameInput) {
        this.initFieldsDiveAndDirectionalTrackingAI();
        
        this.aiVistor = visitor;
        this.artificialIntelligenceInterface = artificialIntelligenceInterface;
        DirectionalCompositeInterface directionalCompositeInterface = (this.getOwnerLayerInterface() as DirectionalCompositeInterface);
        this.directionalInterface = directionalCompositeInterface.getDirectionalInterface();
        VelocityInterfaceCompositeInterface velocityInterfaceCompositeInterface = (this.getOwnerLayerInterface() as VelocityInterfaceCompositeInterface);
        this.velocityInterface = velocityInterfaceCompositeInterface.getVelocityProperties();
        DestroyedEventHandler.getInstance().addListenerInterface(this);
        this.init();
    }
    

    @override
    void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        if (this.isBeyondTarget()) {
            this.init();
            this.velocityInterface.zero();
        }
        if (!this.diveP) {
            this.target(allBinaryLayerManager);
        } else {
            this.dive();
            this.attack();
        }
        this.list.clear();
    }
    

    void init() {
        this.diveP = false;
        this.directionOfTarget = DirectionFactory.getInstance().NOT_BORDERED_WITH;
        TrackingEventHandler.getInstance().addListenerInterface(this);
    }
    

    void target(AllBinaryLayerManager allBinaryLayerManager) {
        if (this.list.size() == 0) {
            return;
        }
        TrackingEvent lastTrackingEvent = (this.list.removeAt(0) as TrackingEvent);
        this.lastTrackingLayerInterface = lastTrackingEvent.getLayerInterface();
        AllBinaryLayer layerInterface = this.lastTrackingLayerInterface;
        AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        final List<Group?> groupArray = layerInterface.getGroupInterface();
        final List<Group?> ownerGroupArray = ownerLayerInterface.getGroupInterface();
        if (identical(groupArray, ownerGroupArray)) {
            return;
        }
        int x = this.lastTrackingLayerInterface.getXP();
        int y = this.lastTrackingLayerInterface.getYP();
        int yDistance = ownerLayerInterface.getYP() - y - ownerLayerInterface.getHeight();
        int xDistance = ownerLayerInterface.getXP() - x - ownerLayerInterface.getWidth();
        final DirectionFactory directionFactory = DirectionFactory.getInstance();
        if (this.mathUtil.abs(yDistance) > this.mathUtil.abs(xDistance)) {
            if (yDistance > this.MIN_DISTANCE) {
                this.directionOfTarget = directionFactory.UP;
            } else if (yDistance < -this.MIN_DISTANCE) {
                this.directionOfTarget = directionFactory.DOWN;
            }
        } else {
            if (xDistance > this.MIN_DISTANCE) {
                this.directionOfTarget = directionFactory.LEFT;
            } else if (xDistance < -this.MIN_DISTANCE) {
                this.directionOfTarget = directionFactory.RIGHT;
            }
        }
        if (!this.initialDropped && this.directionOfTarget != directionFactory.NOT_BORDERED_WITH) {
            this.drop();
        }
        if (this.initialDropped) {
            if (this.directionOfTarget == directionFactory.UP || this.directionOfTarget == directionFactory.DOWN) {
                this.verticalTargeting(x);
            } else if (this.directionOfTarget == directionFactory.LEFT || this.directionOfTarget == directionFactory.RIGHT) {
                this.horizontalTargeting(y);
            } else {
                this.artificialIntelligenceInterface.processAI(allBinaryLayerManager);
            }
        }
    }
    

    void verticalTargeting(int x) {
        AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        if (ownerLayerInterface.getXP() < x) {
            this.moveRight();
        }
        if (ownerLayerInterface.getXP() > x) {
            this.moveLeft();
        }
        if (ownerLayerInterface.getXP() > x - 3 && ownerLayerInterface.getXP() < x + 3) {
            this.setDive();
        }
    }
    

    void horizontalTargeting(int y) {
        AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        if (ownerLayerInterface.getYP() < y) {
            this.moveDown();
        }
        if (ownerLayerInterface.getYP() > y) {
            this.moveUp();
        }
        if (ownerLayerInterface.getYP() > y - 3 && ownerLayerInterface.getYP() < y + 3) {
            this.setDive();
        }
    }
    

    void setDive() {
        this.diveP = true;
        this.velocityInterface.zero();
        TrackingEventHandler.getInstance().removeListener(this);
    }
    

    void moveRight() {
        this.setLastDirection(this.directionFactory.RIGHT);
        this.directionalInterface.setFrameByDirection(this.lastDirection);
        this.aiVistor.visit(this);
    }
    

    void moveLeft() {
        this.setLastDirection(this.directionFactory.LEFT);
        this.directionalInterface.setFrameByDirection(this.lastDirection);
        this.aiVistor.visit(this);
    }
    

    void moveDown() {
        this.setLastDirection(this.directionFactory.DOWN);
        this.directionalInterface.setFrameByDirection(this.lastDirection);
        this.aiVistor.visit(this);
    }
    

    void moveUp() {
        this.setLastDirection(this.directionFactory.UP);
        this.directionalInterface.setFrameByDirection(this.lastDirection);
        this.aiVistor.visit(this);
    }
    

    void dive() {
        this.directionalInterface.setFrameByDirection(this.directionOfTarget);
        this.aiVistor.visit(this);
    }
    

    void attack() {
        super.processKeyAI(Canvas.KEY_NUM1);
    }
    

    void drop() {
        if (this.timeDelayHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
            this.initialDropped = true;
            this.aiVistor.visit(this);
        }
    }
    

    bool isBeyondTarget() {
        if (this.directionOfTarget == this.directionFactory.DOWN) {
            if (this.getOwnerLayerInterface().getYP() > this.lastTrackingLayerInterface.getYP() + this.MIN_DISTANCE) {
                return true;
            } else {
                return false;
            }
        } else if (this.directionOfTarget == this.directionFactory.UP) {
            if (this.getOwnerLayerInterface().getYP() < this.lastTrackingLayerInterface.getYP() + this.MIN_DISTANCE) {
                return true;
            } else {
                return false;
            }
        } else if (this.directionOfTarget == this.directionFactory.RIGHT) {
            if (this.getOwnerLayerInterface().getXP() > this.lastTrackingLayerInterface.getXP() + this.MIN_DISTANCE) {
                return true;
            } else {
                return false;
            }
        } else if (this.directionOfTarget == this.directionFactory.LEFT) {
            if (this.getOwnerLayerInterface().getXP() < this.lastTrackingLayerInterface.getXP() + this.MIN_DISTANCE) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }
    

    @override
    void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    @override
    void onMovement(TrackingEvent trackingEvent) {
        this.list.add(trackingEvent);
    }
    

    @override
    void onDestroyed(DestroyedEvent destroyedEvent) {
        if (this.getOwnerLayerInterface() == destroyedEvent.getLayerInterface()) {
            TrackingEventHandler.getInstance().removeListener(this);
            DestroyedEventHandler.getInstance().removeListener(this);
        }
    }
    

    void setLastDirection(Direction lastDirection) {
        this.lastDirection = lastDirection;
        int value = this.getLastDirection().getValue();
        if (value < 4) {
            super.setLastKey(this.directionToKeyMap[value]);
        }
    }
    

    @override
    void setLastKey(int lastKey) {
        super.setLastKey(lastKey);
        if (this.getLastKey() == Canvas.LEFT) {
            this.lastDirection = DirectionFactory.getInstance().LEFT;
        } else if (this.getLastKey() == Canvas.DOWN) {
            this.lastDirection = DirectionFactory.getInstance().DOWN;
        } else if (this.getLastKey() == Canvas.UP) {
            this.lastDirection = DirectionFactory.getInstance().UP;
        } else if (this.getLastKey() == Canvas.RIGHT) {
            this.lastDirection = DirectionFactory.getInstance().RIGHT;
        }
    }
    

    Direction getLastDirection() {
        return this.lastDirection;
    }
    

    @override
    String toString() {
        StringMaker stringBuffer = StringMaker();
        stringBuffer.append(super.toString());
        stringBuffer.append(" LastDirection: ");
        stringBuffer.append(StringUtil.getInstance().toString1(this.getLastDirection()));
        return stringBuffer.toString();
    }
}

