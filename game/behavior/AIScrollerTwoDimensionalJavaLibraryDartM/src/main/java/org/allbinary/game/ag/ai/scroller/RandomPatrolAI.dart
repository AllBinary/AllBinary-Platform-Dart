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
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/game/rand/MyRandomFactory.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/scroller/BasePatrolAI.dart';

class RandomPatrolAI extends BasePatrolAI {
    bool changedDirection = false;

    // Java field initializers run after the base constructor
    void initFieldsRandomPatrolAI() {
    this.changedDirection = true;
    }
    

    RandomPatrolAI(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) : super(hashtable, ownerLayerInterface, gameInput) {
        this.initFieldsRandomPatrolAI();
        
        this.updateRandomDistance();
    }
    

    void updateRandomDistance() {
        this.currentDistance = MyRandomFactory.getInstance().getAbsoluteNextInt((this.maxDistance).toInt());
    }
    

    @override
    void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        super.update();
        super.processKeyAI(this.keyDirection);
        if (this.changedDirection) {
            super.processKeyAI(Canvas.KEY_NUM1);
            this.updateRandomDistance();
            this.changedDirection = false;
        }
    }
    

    @override
    void nextDirection() {
        super.nextDirection();
        this.changedDirection = true;
    }
}

