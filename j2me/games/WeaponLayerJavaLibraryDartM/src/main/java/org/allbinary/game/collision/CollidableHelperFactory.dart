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
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/game/collision/SourceCollisionHelper.dart';
import 'package:allbinary/org/allbinary/game/collision/CollisionHelper.dart';

class CollidableHelperFactory {
    

    static CollisionHelper getInstance() {
        if (Features.getInstance().isFeature(GameFeatureFactory.getInstance().COLLISIONS_WITH_SOURCE)) {
            return CollisionHelper(AllBinaryLayer.NULL_ALLBINARY_LAYER);
        } else {
            return SourceCollisionHelper(AllBinaryLayer.NULL_ALLBINARY_LAYER);
        }
    }
}

