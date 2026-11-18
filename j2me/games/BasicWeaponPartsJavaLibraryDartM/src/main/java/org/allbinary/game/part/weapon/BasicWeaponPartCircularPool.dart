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
// package org.allbinary.game.part.weapon

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/combat/weapon/WeaponProperties.dart';
import 'package:allbinary/org/allbinary/game/score/ScoreableInterface.dart';
import 'package:allbinary/org/allbinary/graphics/RelativeRelationship.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/game/part/weapon/BasicWeaponPart.dart';
import 'package:allbinary/org/allbinary/game/part/weapon/BasicWeaponPartFactoryInterface.dart';

class BasicWeaponPartCircularPool {
    static final BasicWeaponPartCircularPool NULL_BASIC_WEAPON_PART_CIRCULAR_POOL = BasicWeaponPartCircularPool();
    late BasicWeaponPart basicWeaponPart;

    // Java field initializers run after the base constructor
    void initFieldsBasicWeaponPartCircularPool() {
    this.basicWeaponPart = BasicWeaponPart.NULL_BASIC_WEAPON_PART;
    }

    BasicWeaponPartCircularPool() {
        this.initFieldsBasicWeaponPartCircularPool();
    }
    

    void init(BasicWeaponPartFactoryInterface basicWeaponPartFactoryInterface) {
        this.basicWeaponPart = basicWeaponPartFactoryInterface.getInstance();
    }
    

    BasicWeaponPart getInstance4(AllBinaryLayer sourceLayerInterface, WeaponProperties weaponProperties, ScoreableInterface scoreableInterface, RelativeRelationship relativeRelationship) {
        this.basicWeaponPart.init(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        return this.basicWeaponPart;
    }
}

