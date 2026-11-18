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
// package org.allbinary.game.collision.layer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/collision/CollidableInterfaceCompositeInterface.dart';
import 'package:allbinary/org/allbinary/game/layer/CollidableCompositeLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/layer/LayerProcessor.dart';
import 'package:allbinary/org/allbinary/game/collision/layer/CollidableInterfaceLayerManager.dart';
import 'package:allbinary/org/allbinary/game/collision/layer/AllBinaryCollisionManager.dart';

class CollidableInterfaceLayerProcessor extends LayerProcessor {
    

    CollidableInterfaceLayerProcessor() : super(CollidableInterfaceLayerManager()) {
        
    }
    

    @override
    void processAt(AllBinaryLayerManager allBinaryLayerManager, AllBinaryLayer layerInterface, int index) {
        CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface = (layerInterface as CollidableInterfaceCompositeInterface);
        if (collidableInterfaceCompositeInterface.getCollidableInferface().isCollidable((collidableInterfaceCompositeInterface as CollidableCompositeLayer))) {
            AllBinaryCollisionManager.getInstance().process(this.getLayerManager(), collidableInterfaceCompositeInterface, index);
        }
    }
    

    @override
    bool isProcessorLayer(AllBinaryLayer layerInterface) {
        if (layerInterface.implmentsCollidableInterface()) {
            return true;
        } else {
            return false;
        }
    }
}

