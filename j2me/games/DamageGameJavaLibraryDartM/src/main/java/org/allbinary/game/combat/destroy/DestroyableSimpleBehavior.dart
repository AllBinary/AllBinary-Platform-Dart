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
import 'package:allbinary/org/allbinary/game/layer/CollidableCompositeLayer.dart';
import 'package:allbinary/org/allbinary/game/combat/destroy/DestroyableBaseBehavior.dart';
import 'package:allbinary/org/allbinary/game/combat/destroy/DestroyedLayerProcessor.dart';

class DestroyableSimpleBehavior extends DestroyableBaseBehavior {
    late CollidableCompositeLayer ownerLayer;
    bool destroyed = false;

    // Java field initializers run after the base constructor
    void initFieldsDestroyableSimpleBehavior() {
    
    this.destroyed = false;
    }
    

    DestroyableSimpleBehavior(CollidableCompositeLayer ownerLayer) {
        this.initFieldsDestroyableSimpleBehavior();
        this.ownerLayer = ownerLayer;
    }
    

    @override
    bool isDestroyed() {
        return this.destroyed;
    }
    

    @override
    void setDestroyed(bool destroyed) {
        this.destroyed = destroyed;
        if (this.isDestroyed()) {
            DestroyedLayerProcessor.getInstance().add(this.ownerLayer);
        }
    }
}

