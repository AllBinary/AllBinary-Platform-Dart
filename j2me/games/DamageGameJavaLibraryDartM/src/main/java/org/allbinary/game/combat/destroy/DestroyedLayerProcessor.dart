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
// package org.allbinary.game.combat.destroy

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool.dart';
import 'package:allbinary/org/allbinary/game/combat/destroy/event/DestroyedEvent.dart';
import 'package:allbinary/org/allbinary/game/combat/destroy/event/DestroyedEventHandler.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/layer/BasicLayerProcessor.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';

class DestroyedLayerProcessor extends BasicLayerProcessor {
    static BasicLayerProcessor DESTROYED_LAYER_PROCESSOR = BasicLayerProcessor.NULL_LAYER_PROCESSOR;
    

    DestroyedLayerProcessor() {
    }
    

    static void init() {
        DestroyedLayerProcessor.DESTROYED_LAYER_PROCESSOR = DestroyedLayerProcessor();
    }
    

    static BasicLayerProcessor getInstance() {
        return DestroyedLayerProcessor.DESTROYED_LAYER_PROCESSOR;
    }
    

    @override
    void process(AllBinaryLayerManager allBinaryLayerManager) {
        BasicArrayList list = this.getList();
        int size = list.size();
        final DestroyedEventHandler destroyedEventHandler = DestroyedEventHandler.getInstance();
        final DestroyEventCircularStaticPool destroyEventCircularStaticPool = DestroyEventCircularStaticPool.getInstance();
        late DestroyedEvent destroyedEvent;
        late AllBinaryLayer layerInterface;
        for (int index = 0; index < size; index++) {
            Object layerInterfaceCanBeNull = list.objectArray[index]!;
            if (layerInterfaceCanBeNull != null) {
                layerInterface = (layerInterfaceCanBeNull as AllBinaryLayer);
                allBinaryLayerManager.remove(layerInterface);
                destroyedEvent = destroyEventCircularStaticPool.getInstanceForLayer(layerInterface);
                destroyedEventHandler.fireEvent(destroyedEvent);
            } else {
                final CommonStrings commonStrings = CommonStrings.getInstance();
            }
        }
        list.clear();
    }
}

