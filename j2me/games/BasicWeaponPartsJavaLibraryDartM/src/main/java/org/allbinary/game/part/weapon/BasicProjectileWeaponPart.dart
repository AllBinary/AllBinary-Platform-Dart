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
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/game/combat/weapon/WeaponProperties.dart';
import 'package:allbinary/org/allbinary/game/layer/weapon/WeaponLayer.dart';
import 'package:allbinary/org/allbinary/game/layer/weapon/WeaponLayerCircularPool.dart';
import 'package:allbinary/org/allbinary/game/score/NoScoreable.dart';
import 'package:allbinary/org/allbinary/game/score/ScoreableInterface.dart';
import 'package:allbinary/org/allbinary/graphics/RelativeRelationship.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/game/part/weapon/BasicWeaponPart.dart';

class BasicProjectileWeaponPart extends BasicWeaponPart {
    late WeaponLayerCircularPool weaponLayerCircularStaticPool;

    // Java field initializers run after the base constructor
    void initFieldsBasicProjectileWeaponPart() {
    
    }
    

    static BasicProjectileWeaponPart createBasicProjectileWeaponPart(Animation animationInterface, WeaponLayerCircularPool weaponLayerCircularStaticPool) {
        return BasicProjectileWeaponPart(animationInterface, AllBinaryLayer.NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, WeaponProperties.NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.NULL_RELATIVE_RELATIONSHIP);
    }
    

    BasicProjectileWeaponPart(Animation animationInterface, AllBinaryLayer sourceLayerInterface, WeaponLayerCircularPool weaponLayerCircularStaticPool, WeaponProperties weaponProperties, ScoreableInterface scoreableInterface, RelativeRelationship relativeRelationship) : super(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship) {
        this.initFieldsBasicProjectileWeaponPart();
        
        this.weaponLayerCircularStaticPool = weaponLayerCircularStaticPool;
    }
    

    @override
    void processScore(AllBinaryLayerManager allbinaryLayerManager, int angle, int otherAngle, WeaponProperties weaponProperties, ScoreableInterface scoreableInterface) {
        final WeaponLayer weaponLayer = this.weaponLayerCircularStaticPool.getInstanceWeaponLayer(this.getOwnerLayerInterface(), this.relativeRelationship.getX(), this.relativeRelationship.getY(), this.relativeRelationship.getZ(), angle, otherAngle, weaponProperties, scoreableInterface);
        allbinaryLayerManager.append(weaponLayer);
    }
}

