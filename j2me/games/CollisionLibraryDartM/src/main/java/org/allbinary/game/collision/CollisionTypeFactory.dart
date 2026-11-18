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
import 'package:allbinary/org/allbinary/game/collision/CollisionType.dart';

class CollisionTypeFactory {
    static CollisionTypeFactory SINGLETON = CollisionTypeFactory();
    late CollisionType NONE;
    late CollisionType DAMAGE;
    late CollisionType PICKUP;
    late CollisionType COLLISION;

    // Java field initializers run after the base constructor
    void initFieldsCollisionTypeFactory() {
    this.NONE = CollisionType("None");
    this.DAMAGE = CollisionType("Damage");
    this.PICKUP = CollisionType("Pickup");
    this.COLLISION = CollisionType("Collision");
    }

    CollisionTypeFactory() {
        this.initFieldsCollisionTypeFactory();
    }
    

    static CollisionTypeFactory getInstance() {
        return CollisionTypeFactory.SINGLETON;
    }
}

