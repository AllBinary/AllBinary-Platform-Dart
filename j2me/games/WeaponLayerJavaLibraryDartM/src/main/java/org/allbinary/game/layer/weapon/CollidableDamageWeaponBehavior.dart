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
// package org.allbinary.game.layer.weapon

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/collision/CollidableHelperFactory.dart';
import 'package:allbinary/org/allbinary/game/collision/CollidableInterfaceCompositeInterface.dart';
import 'package:allbinary/org/allbinary/game/collision/CollisionHelper.dart';
import 'package:allbinary/org/allbinary/game/collision/CollisionType.dart';
import 'package:allbinary/org/allbinary/game/collision/CollisionTypeFactory.dart';
import 'package:allbinary/org/allbinary/game/combat/damage/DamageableInterface.dart';
import 'package:allbinary/org/allbinary/game/layer/CollidableCompositeLayer.dart';
import 'package:allbinary/org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';

class CollidableDamageWeaponBehavior extends CollidableDestroyableDamageableBehavior {
    bool collided = false;
    late CollisionHelper collisionHelper;

    // Java field initializers run after the base constructor
    void initFieldsCollidableDamageWeaponBehavior() {
    this.collided = false;
    
    }
    

    CollidableDamageWeaponBehavior(bool collidable) : super(collidable) {
        this.initFieldsCollidableDamageWeaponBehavior();
        
        this.setCollided(false);
        this.setCollidable(true);
        this.collisionHelper = CollidableHelperFactory.getInstance();
    }
    

    void init(AllBinaryLayer sourceLayerInterface) {
        this.setCollided(false);
        this.collisionHelper.setOwnerLayerInterface(sourceLayerInterface);
    }
    

    @override
    bool isCollision(CollidableCompositeLayer ownerLayer, CollidableCompositeLayer collisionLayer) {
        if (this.collisionHelper.isCollidable(collisionLayer)) {
            if (ownerLayer.getGroupInterface()[0]! != collisionLayer.getGroupInterface()[0]!) {
                return super.isCollision(ownerLayer, collisionLayer);
            }
        }
        return false;
    }
    

    @override
    void collide(CollidableCompositeLayer ownerLayer, CollidableCompositeLayer collisionLayer) {
        super.collide(ownerLayer, collisionLayer);
        this.collided = true;
    }
    

    @override
    bool isCollisionInterface(CollidableCompositeLayer ownerLayer, CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface) {
        if (this.collisionHelper.isCollidable((collidableInterfaceCompositeInterface as CollidableCompositeLayer))) {
            final AllBinaryLayer layerInterface = (collidableInterfaceCompositeInterface as AllBinaryLayer);
            if (ownerLayer.getGroupInterface()[0]! != layerInterface.getGroupInterface()[0]!) {
                if (this.layerCollisionUtil.isCollision(ownerLayer, layerInterface)) {
                    return true;
                }
            }
        }
        return false;
    }
    

    @override
    void collideInterface(CollidableCompositeLayer ownerLayer, CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface) {
        this.damageUtil.process((ownerLayer as DamageableInterface), (collidableInterfaceCompositeInterface as DamageableInterface));
        this.collided = true;
    }
    

    @override
    CollisionType getCollisionTypeWith(AllBinaryLayer layerInterface) {
        return CollisionTypeFactory.getInstance().COLLISION;
    }
    

    bool isCollided() {
        return this.collided;
    }
    

    void setCollided(bool collided) {
        this.collided = collided;
    }
}

