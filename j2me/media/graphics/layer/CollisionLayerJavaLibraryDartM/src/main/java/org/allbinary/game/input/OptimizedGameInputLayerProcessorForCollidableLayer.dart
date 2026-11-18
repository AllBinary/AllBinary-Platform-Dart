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
// package org.allbinary.game.input

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/layer/AllBinaryGameLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/layer/LayerProcessor.dart';
import 'package:allbinary/org/allbinary/game/input/OptimizedGameInputLayerManager.dart';

class OptimizedGameInputLayerProcessorForCollidableLayer extends LayerProcessor {
    

    OptimizedGameInputLayerProcessorForCollidableLayer() : super(OptimizedGameInputLayerManager()) {
        
    }
    

    @override
    void processAt(AllBinaryLayerManager allBinaryLayerManager, AllBinaryLayer layerInterface, int index) {
        final AllBinaryGameLayer gameInputInterface = (layerInterface as AllBinaryGameLayer);
        gameInputInterface.processInput(allBinaryLayerManager);
    }
    

    @override
    bool isProcessorLayer(AllBinaryLayer layerInterface) {
        if (layerInterface.implmentsGameInputInterface()) {
            return true;
        } else {
            return false;
        }
    }
}

