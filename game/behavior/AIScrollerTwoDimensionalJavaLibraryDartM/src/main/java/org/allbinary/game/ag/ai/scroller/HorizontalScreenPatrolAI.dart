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
import 'package:allbinary/org/allbinary/game/layer/AllBinaryGameLayerManager.dart';
import 'package:allbinary/org/allbinary/game/rand/MyRandomFactory.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/media/audio/PlayerQueue.dart';
import 'package:allbinary/org/allbinary/media/audio/SecondaryPlayerQueueFactory.dart';
import 'package:allbinary/org/allbinary/media/audio/Sound.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';

class HorizontalScreenPatrolAI extends BasicAI {
    static final int SOUND = SmallIntegerSingletonFactory.getInstance().getAt(433);
    int keyDirection = 0;
    late DisplayInfoSingleton displayInfoSingleton;
    int firingX = 0;
    int firedIndex = 0;
    int MAX_FIRE = 0;
    late TimeDelayHelper timeDelayHelper;
    late PlayerQueue secondaryPlayerQueue;
    late Sound sound;

    // Java field initializers run after the base constructor
    void initFieldsHorizontalScreenPatrolAI() {
    this.keyDirection = Canvas.LEFT;
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.firingX = this.displayInfoSingleton.getLastHalfWidth();
    this.firedIndex = 0;
    this.MAX_FIRE = 28;
    this.timeDelayHelper = TimeDelayHelper(240);
    this.secondaryPlayerQueue = SecondaryPlayerQueueFactory.getInstance();
    
    }
    

    HorizontalScreenPatrolAI(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) : super(ownerLayerInterface, gameInput) {
        this.initFieldsHorizontalScreenPatrolAI();
        
        this.sound = (hashtable.get(HorizontalScreenPatrolAI.SOUND) as Sound);
        if (this.sound == null) {
            throw JException('Exception', "No Sound Provided!!");
        }
    }
    

    @override
    void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        super.processKeyAI(this.keyDirection);
        if (this.timeDelayHelper.isTimeTNT()) {
            AllBinaryLayer layerInterface = this.getOwnerLayerInterface();
            int currentOwnerLayerX = layerInterface.getXP();
            if (currentOwnerLayerX < -layerInterface.getWidth()) {
                int y = MyRandomFactory.getInstance().getAbsoluteNextIntAllowZero(50);
                layerInterface.setPosition(this.displayInfoSingleton.getLastWidth() + layerInterface.getWidth() + 50, y, layerInterface.getZP());
                this.firedIndex = 0;
                this.firingX = this.displayInfoSingleton.getLastHalfWidth() + MyRandomFactory.getInstance().getNextInt(this.displayInfoSingleton.getLastHalfWidth());
                this.secondaryPlayerQueue.add(this.sound);
            }
            if (currentOwnerLayerX < this.firingX && currentOwnerLayerX > -layerInterface.getWidth()) {
                super.processKeyAI(Canvas.KEY_NUM1);
                final AllBinaryGameLayerManager gameLayerManager = (allBinaryLayerManager as AllBinaryGameLayerManager);
                int FIRE = (gameLayerManager.getGameInfo().getCurrentLevel() + 12) >> 2;
                if (FIRE > this.MAX_FIRE) {
                    FIRE = this.MAX_FIRE;
                }
                if (this.firedIndex > FIRE) {
                    this.firedIndex = 0;
                    this.firingX = Integer.MIN_VALUE;
                }
                this.firedIndex++;
            }
        }
    }
    

    void nextDirection() {
    }
}

