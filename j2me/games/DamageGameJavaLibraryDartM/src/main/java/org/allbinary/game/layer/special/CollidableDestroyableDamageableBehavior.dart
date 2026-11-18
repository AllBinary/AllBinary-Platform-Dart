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
import 'package:allbinary/org/allbinary/game/collision/CollidableBaseBehavior.dart';
import 'package:allbinary/org/allbinary/game/collision/CollidableInterfaceCompositeInterface.dart';
import 'package:allbinary/org/allbinary/game/combat/damage/DamageUtil.dart';
import 'package:allbinary/org/allbinary/game/layer/CollidableCompositeLayer.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.dart';

class CollidableDestroyableDamageableBehavior extends CollidableBaseBehavior {
    late DamageUtil damageUtil;

    // Java field initializers run after the base constructor
    void initFieldsCollidableDestroyableDamageableBehavior() {
    this.damageUtil = DamageUtil.getInstance();
    }
    

    CollidableDestroyableDamageableBehavior(bool collidable) : super(collidable) {
        this.initFieldsCollidableDestroyableDamageableBehavior();
        
    }
    

    @override
    bool isCollision(CollidableCompositeLayer ownerLayer, CollidableCompositeLayer collisionLayer) {
        if (ownerLayer.getGroupInterface()[0]! != collisionLayer.getGroupInterface()[0]!) {
            return super.isCollision(ownerLayer, collisionLayer);
        }
        return false;
    }
    

    @override
    void collide(CollidableCompositeLayer ownerLayer, CollidableCompositeLayer collidableInterfaceCompositeInterface) {
        final CollidableDestroyableDamageableLayer ownerCollidableDestroyableDamageableLayer = (ownerLayer as CollidableDestroyableDamageableLayer);
        final CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer = (collidableInterfaceCompositeInterface as CollidableDestroyableDamageableLayer);
        ownerCollidableDestroyableDamageableLayer.damage(collidableDestroyableDamageableLayer.getDamage(0), 0);
    }
    

    @override
    bool isCollisionInterface(CollidableCompositeLayer ownerLayer, CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface) {
        ForcedLogUtil.log("No Longer Used", this);
        return false;
    }
    

    @override
    void collideInterface(CollidableCompositeLayer ownerLayer, CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface) {
        ForcedLogUtil.log("No Longer Used", this);
    }
}

