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
import 'package:allbinary/org/allbinary/game/collision/CollidableBaseBehavior.dart';
import 'package:allbinary/org/allbinary/game/collision/CollidableInterfaceCompositeInterface.dart';
import 'package:allbinary/org/allbinary/game/layer/CollidableCompositeLayer.dart';
import 'package:allbinary/org/allbinary/layer/LayerManager.dart';

class AllBinaryCollisionManager {
    static AllBinaryCollisionManager allBinaryCollisionManager = AllBinaryCollisionManager();
    

    AllBinaryCollisionManager() {
    }
    

    static AllBinaryCollisionManager getInstance() {
        return AllBinaryCollisionManager.allBinaryCollisionManager;
    }
    

    void process(LayerManager layerManager, CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface, int startIndex) {
        int size = layerManager.getSize();
        for (int index = startIndex + 1; index < size; index++) {
            CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface2 = (layerManager.getLayerAt(index) as CollidableInterfaceCompositeInterface);
            this.collide(layerManager, collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2);
        }
    }
    

    void collide(LayerManager layerManager, CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface, CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface2) {
        CollidableBaseBehavior collidableBase2 = collidableInterfaceCompositeInterface2.getCollidableInferface();
        CollidableBaseBehavior collidableBase = collidableInterfaceCompositeInterface.getCollidableInferface();
        if (collidableBase2.isCollidable((collidableInterfaceCompositeInterface as CollidableCompositeLayer))) {
            if (collidableBase.isCollisionInterface((collidableInterfaceCompositeInterface as CollidableCompositeLayer), collidableInterfaceCompositeInterface2)) {
                collidableBase.collideInterface((collidableInterfaceCompositeInterface as CollidableCompositeLayer), collidableInterfaceCompositeInterface2);
                collidableBase2.collideInterface((collidableInterfaceCompositeInterface as CollidableCompositeLayer), collidableInterfaceCompositeInterface);
            }
        }
    }
}

