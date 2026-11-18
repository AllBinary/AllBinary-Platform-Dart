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
import 'package:allbinary/org/allbinary/game/collision/CollidableBaseBehavior.dart';
import 'package:allbinary/org/allbinary/game/collision/CollidableInterfaceCompositeInterface.dart';

class CollidableNeverCollideBehavior extends CollidableBaseBehavior {
    

    CollidableNeverCollideBehavior(bool isCollidable) : super(isCollidable) {
        
    }
    

    @override
    bool isCollision(CollidableCompositeLayer ownerLayer, CollidableCompositeLayer allbinaryCollidableLayer) {
        return false;
    }
    

    @override
    void collide(CollidableCompositeLayer ownerLayer, CollidableCompositeLayer allbinaryCollidableLayer) {
    }
    

    @override
    void collideInterface(CollidableCompositeLayer ownerLayer, CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface) {
    }
    

    @override
    bool isCollisionInterface(CollidableCompositeLayer ownerLayer, CollidableInterfaceCompositeInterface collidableInterfaceCompositeInterface) {
        return false;
    }
}

