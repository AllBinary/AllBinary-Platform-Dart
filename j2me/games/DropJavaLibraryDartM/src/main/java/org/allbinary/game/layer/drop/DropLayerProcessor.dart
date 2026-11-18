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
// package org.allbinary.game.layer.drop

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/layer/BasicLayerProcessor.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/game/layer/drop/DropLayerInterface.dart';

class DropLayerProcessor extends BasicLayerProcessor {
    static final BasicLayerProcessor LAYER_PROCESSOR = DropLayerProcessor();
    

    DropLayerProcessor() {
    }
    

    static BasicLayerProcessor getInstance() {
        return DropLayerProcessor.LAYER_PROCESSOR;
    }
    

    @override
    void process(AllBinaryLayerManager allBinaryLayerManager) {
        final BasicArrayList list = this.getList();
        final int size = list.size();
        late AllBinaryLayer layerInterface;
        late DropLayerInterface dropLayerInterface;
        for (int index = 0; index < size; index++) {
            layerInterface = (list.objectArray[index]! as AllBinaryLayer);
            dropLayerInterface = (layerInterface as DropLayerInterface);
            layerInterface = (dropLayerInterface.getDroppedLayer() as AllBinaryLayer);
            allBinaryLayerManager.append(layerInterface);
        }
        list.clear();
    }
}

