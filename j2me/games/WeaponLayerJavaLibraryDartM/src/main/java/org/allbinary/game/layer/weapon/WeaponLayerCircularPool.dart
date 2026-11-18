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
import 'package:allbinary/org/allbinary/game/combat/weapon/WeaponProperties.dart';
import 'package:allbinary/org/allbinary/game/score/ScoreableInterface.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerCircularPool.dart';
import 'package:allbinary/org/allbinary/game/layer/weapon/WeaponLayer.dart';

class WeaponLayerCircularPool extends AllBinaryLayerCircularPool {
    

    WeaponLayerCircularPool() {
    }
    

    WeaponLayer getInstanceWeaponLayer(AllBinaryLayer sourceLayerInterface, int x, int y, int z, int angle, int otherAngle, WeaponProperties weaponProperties, ScoreableInterface scoreable) {
        WeaponLayer weaponLayer = (super.getNextInstance() as WeaponLayer);
        weaponLayer.initXYZ(x, y, z);
        weaponLayer.init(sourceLayerInterface, angle, otherAngle, weaponProperties, scoreable);
        return weaponLayer;
    }
}

