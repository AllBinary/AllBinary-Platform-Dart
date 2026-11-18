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
// package org.allbinary.game.terrain

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventCircularPool.dart';
import 'package:allbinary/org/allbinary/game/terrain/TerrainEventFactory.dart';
import 'package:allbinary/org/allbinary/game/terrain/TerrainEvent.dart';
import 'package:allbinary/org/allbinary/game/terrain/BasicTerrainInfo.dart';

class TerrainEventCircularStaticPool {
    static final TerrainEventCircularStaticPool instance = TerrainEventCircularStaticPool();
    late AllBinaryEventCircularPool EVENT_POOL;

    // Java field initializers run after the base constructor
    void initFieldsTerrainEventCircularStaticPool() {
    this.EVENT_POOL = AllBinaryEventCircularPool(20);
    }

    TerrainEventCircularStaticPool() {
        this.initFieldsTerrainEventCircularStaticPool();
    }
    

    static TerrainEventCircularStaticPool getInstance() {
        return TerrainEventCircularStaticPool.instance;
    }
    

    void init() {
        this.EVENT_POOL.initAllBinaryEventCircularPool(TerrainEventFactory());
    }
    

    TerrainEvent getNext(BasicTerrainInfo basicTerrainInfo) {
        TerrainEvent trackingEvent = (this.EVENT_POOL.getNextInstance() as TerrainEvent);
        trackingEvent.setBasicTerrainInfoForCircularStaticPool(basicTerrainInfo);
        return trackingEvent;
    }
}

