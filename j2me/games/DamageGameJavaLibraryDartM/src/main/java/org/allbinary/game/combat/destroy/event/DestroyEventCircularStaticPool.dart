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
// package org.allbinary.game.combat.destroy.event

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventCircularPool.dart';
import 'package:allbinary/org/allbinary/game/combat/destroy/event/DestroyEventFactory.dart';
import 'package:allbinary/org/allbinary/game/combat/destroy/event/DestroyedEvent.dart';

class DestroyEventCircularStaticPool {
    static final DestroyEventCircularStaticPool instance = DestroyEventCircularStaticPool();
    late AllBinaryEventCircularPool EVENT_POOL;

    // Java field initializers run after the base constructor
    void initFieldsDestroyEventCircularStaticPool() {
    this.EVENT_POOL = AllBinaryEventCircularPool(20);
    }
    

    static DestroyEventCircularStaticPool getInstance() {
        return DestroyEventCircularStaticPool.instance;
    }
    

    DestroyEventCircularStaticPool() {
        this.initFieldsDestroyEventCircularStaticPool();
    }
    

    void init(AllBinaryGameCanvas combatGameCanvas) {
        this.EVENT_POOL.initAllBinaryEventCircularPool(DestroyEventFactory(combatGameCanvas));
    }
    

    DestroyedEvent getInstanceForLayer(AllBinaryLayer layerInterface) {
        DestroyedEvent destroyedEvent = (this.EVENT_POOL.getNextInstance() as DestroyedEvent);
        destroyedEvent.setLayerInterfaceForCircularStaticPool(layerInterface);
        return destroyedEvent;
    }
}

