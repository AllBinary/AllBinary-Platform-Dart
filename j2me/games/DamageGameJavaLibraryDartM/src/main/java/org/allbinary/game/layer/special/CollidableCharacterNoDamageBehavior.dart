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
// package org.allbinary.game.layer.special

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/collision/CollidableInterfaceCompositeInterface.dart';
import 'package:allbinary/org/allbinary/game/collision/CollisionType.dart';
import 'package:allbinary/org/allbinary/game/collision/CollisionTypeFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/CollidableCompositeLayer.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerInterface.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior.dart';
import 'package:allbinary/org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.dart';

class CollidableCharacterNoDamageBehavior extends CollidableDestroyableDamageableBehavior {
    

    CollidableCharacterNoDamageBehavior(bool collidable) : super(collidable) {
        
    }
    

    @override
    void collide(CollidableCompositeLayer ownerLayer, CollidableCompositeLayer collidableInterfaceCompositeInterface) {
        final CollisionTypeFactory collisionTypeFactory = CollisionTypeFactory.getInstance();
        final CollisionType collisionType = collidableInterfaceCompositeInterface.getCollidableInferface().getCollisionTypeWith(ownerLayer);
        if (collisionType == collisionTypeFactory.PICKUP) {
            final CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer = (ownerLayer as CollidableDestroyableDamageableLayer);
            collidableDestroyableDamageableLayer.getPickupBehavior().doPickupLayer((collidableInterfaceCompositeInterface as PickedUpLayerInterface));
        } else {
        }
    }
    

    @override
    void collideInterface(CollidableCompositeLayer ownerLayer, CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface) {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
}

