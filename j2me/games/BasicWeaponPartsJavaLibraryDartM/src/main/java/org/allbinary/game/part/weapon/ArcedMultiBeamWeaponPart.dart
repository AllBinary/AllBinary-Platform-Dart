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
import 'package:allbinary/org/allbinary/game/score/ScoreableInterface.dart';
import 'package:allbinary/org/allbinary/graphics/RelativeRelationship.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/math/AngleFactory.dart';
import 'package:allbinary/org/allbinary/game/part/weapon/BasicWeaponPart.dart';

class ArcedMultiBeamWeaponPart extends BasicWeaponPart {
    late WeaponLayerCircularPool weaponLayerCircularStaticPool;
    int total = 0;
    int TOTAL_ANGLE = 0;

    // Java field initializers run after the base constructor
    void initFieldsArcedMultiBeamWeaponPart() {
    
    
    this.TOTAL_ANGLE = AngleFactory.getInstance().TOTAL_ANGLE;
    }
    

    ArcedMultiBeamWeaponPart(Animation animationInterface, AllBinaryLayer sourceLayerInterface, WeaponLayerCircularPool weaponLayerCircularStaticPool, int total, WeaponProperties weaponProperties, ScoreableInterface scoreableInterface, RelativeRelationship relativeRelationship) : super(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship) {
        this.initFieldsArcedMultiBeamWeaponPart();
        
        this.total = total;
        this.weaponLayerCircularStaticPool = weaponLayerCircularStaticPool;
    }
    

    @override
    void processScore(AllBinaryLayerManager allbinaryLayerManager, int angle, int otherAngle, WeaponProperties weaponProperties, ScoreableInterface scoreableInterface) {
        final int increment = (((this.total - 1) ~/ this.TOTAL_ANGLE)).toSigned(16);
        final int minAngle = ((angle - ((increment * this.total) >> 1))).toSigned(16);
        int next = 0;
        late WeaponLayer weaponLayer;
        for (int index = 0; index < this.total; index++) {
            weaponLayer = this.weaponLayerCircularStaticPool.getInstanceWeaponLayer(this.getOwnerLayerInterface(), this.relativeRelationship.getX(), this.relativeRelationship.getY(), 0, (minAngle + increment), otherAngle, weaponProperties, scoreableInterface);
            allbinaryLayerManager.append(weaponLayer);
            next += increment;
        }
    }
}

