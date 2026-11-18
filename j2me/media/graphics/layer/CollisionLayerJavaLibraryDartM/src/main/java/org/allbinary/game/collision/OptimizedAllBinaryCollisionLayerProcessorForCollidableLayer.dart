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
// package org.allbinary.game.collision

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/layer/CollidableCompositeLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/layer/LayerManager.dart';
import 'package:allbinary/org/allbinary/layer/LayerProcessor.dart';
import 'package:allbinary/org/allbinary/game/collision/OptimizedAllBinaryCollisionLayerManager.dart';
import 'package:allbinary/org/allbinary/game/collision/CollidableBaseBehavior.dart';

class OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer extends LayerProcessor {
    

    OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer() : super(OptimizedAllBinaryCollisionLayerManager()) {
        
    }
    

    @override
    void processAt(AllBinaryLayerManager allBinaryLayerManager, AllBinaryLayer layerInterface, int startIndex) {
        CollidableCompositeLayer collidableInterfaceCompositeInterface = (layerInterface as CollidableCompositeLayer);
        CollidableBaseBehavior collidableBase = collidableInterfaceCompositeInterface.getCollidableInferface();
        if (collidableBase.isCollidable(collidableInterfaceCompositeInterface)) {
            final LayerManager layerManager = this.getLayerManager();
            final int size = layerManager.getSize();
            late CollidableCompositeLayer collidableInterfaceCompositeInterface2;
            late CollidableBaseBehavior collidableBase2;
            for (int index = startIndex + 1; index < size; index++) {
                collidableInterfaceCompositeInterface2 = (layerManager.getLayerAt(index) as CollidableCompositeLayer);
                collidableBase2 = collidableInterfaceCompositeInterface2.getCollidableInferface();
                if (collidableBase2.isCollidable(collidableInterfaceCompositeInterface) && collidableBase.isCollision(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2)) {
                    collidableBase.collide(collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2);
                    collidableBase2.collide(collidableInterfaceCompositeInterface2, collidableInterfaceCompositeInterface);
                }
            }
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

