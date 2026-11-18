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
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeatureFactory.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLFeatureUtil.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/game/collision/CollisionProcessor.dart';
import 'package:allbinary/org/allbinary/game/collision/Collision2DProcessor.dart';
import 'package:allbinary/org/allbinary/game/collision/CollisionThreedProcessor.dart';

class LayerCollisionUtil {
    static final LayerCollisionUtil instance = LayerCollisionUtil();
    late CollisionProcessor collisionProcessor;

    // Java field initializers run after the base constructor
    void initFieldsLayerCollisionUtil() {
    
    }
    

    static LayerCollisionUtil getInstance() {
        return LayerCollisionUtil.instance;
    }
    

    LayerCollisionUtil() {
        this.initFieldsLayerCollisionUtil();
        Features features = Features.getInstance();
        GameFeatureFactory gameFeatureFactory = GameFeatureFactory.getInstance();
        if (OpenGLFeatureUtil.getInstance().isAnyThreed() && !features.isFeature(gameFeatureFactory.COLLISIONS_FORCED_TWO_DIMENSIONAL)) {
            this.collisionProcessor = CollisionThreedProcessor();
        } else {
            this.collisionProcessor = Collision2DProcessor();
        }
    }
    

    bool isCollision(AllBinaryLayer myLayer, AllBinaryLayer myLayer2) {
        return this.collisionProcessor.isCollision(myLayer, myLayer2);
    }
}

