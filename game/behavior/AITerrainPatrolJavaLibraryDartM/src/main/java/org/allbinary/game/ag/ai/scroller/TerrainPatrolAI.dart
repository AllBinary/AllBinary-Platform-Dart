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
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/game/terrain/BasicTerrainInfo.dart';
import 'package:allbinary/org/allbinary/game/terrain/TerrainEvent.dart';
import 'package:allbinary/org/allbinary/game/terrain/TerrainEventCircularStaticPool.dart';
import 'package:allbinary/org/allbinary/game/terrain/TerrainEventHandler.dart';
import 'package:allbinary/org/allbinary/game/terrain/TerrainEventListener.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/math/Angle.dart';
import 'package:allbinary/org/allbinary/math/AngleFactory.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/scroller/PacePatrolAI.dart';

class TerrainPatrolAI extends PacePatrolAI {
    late TerrainEventListener terrainEventListener;
    late Angle DOWN;
    late BasicTerrainInfo CLIFF;

    // Java field initializers run after the base constructor
    void initFieldsTerrainPatrolAI() {
    this.terrainEventListener = TerrainEventListener();
    this.DOWN = AngleFactory.getInstance().DOWN;
    this.CLIFF = BasicTerrainInfo(this.DOWN);
    }
    

    TerrainPatrolAI(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) : super(hashtable, ownerLayerInterface, gameInput) {
        this.initFieldsTerrainPatrolAI();
        
        TerrainEventHandler.getInstance1(ownerLayerInterface).addListener(this.terrainEventListener);
        this.terrainEventListener.onTerrainEvent(TerrainEventCircularStaticPool.getInstance().getNext(this.CLIFF));
    }
    

    @override
    void update() {
        super.update();
        this.changeDirectionIfCliffReached();
    }
    

    void changeDirectionIfCliffReached() {
        final BasicArrayList list = this.terrainEventListener.getList();
        final int size = list.size();
        for (int index = 0; index < size; index++) {
            final TerrainEvent terrainEvent = (list.removeAt(index) as TerrainEvent);
            final BasicTerrainInfo basicTerrainInfo = terrainEvent.getBasicTerrainInfo();
            final Angle angle = basicTerrainInfo.getAngle();
            if (identical(angle, this.DOWN)) {
                this.nextDirection();
                if (!this.isFollowLimitedByTerrain) {
                    this.logUtil.putF("Following Limited", this, "onTerrainEvent");
                    this.isFollowLimitedByTerrain = true;
                }
            }
        }
    }
}

