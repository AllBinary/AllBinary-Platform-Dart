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
import 'package:allbinary/org/allbinary/math/NoDecimalTrigTable.dart';
import 'package:allbinary/org/allbinary/game/part/weapon/BasicWeaponPart.dart';

class StraightMultiProjectileWeaponPart extends BasicWeaponPart {
    late WeaponLayerCircularPool weaponLayerCircularStaticPool;
    int total = 0;
    late NoDecimalTrigTable noDecimalTrigTable;

    // Java field initializers run after the base constructor
    void initFieldsStraightMultiProjectileWeaponPart() {
    
    
    this.noDecimalTrigTable = NoDecimalTrigTable.getInstance();
    }
    

    static StraightMultiProjectileWeaponPart createStraightMultiProjectileWeaponPart(Animation animationInterface, WeaponLayerCircularPool weaponLayerCircularStaticPool) {
        return StraightMultiProjectileWeaponPart(animationInterface, AllBinaryLayer.NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, 2, WeaponProperties.NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.NULL_RELATIVE_RELATIONSHIP);
    }
    

    StraightMultiProjectileWeaponPart(Animation animationInterface, AllBinaryLayer sourceLayerInterface, WeaponLayerCircularPool weaponLayerCircularStaticPool, int total, WeaponProperties weaponProperties, ScoreableInterface scoreableInterface, RelativeRelationship relativeRelationship) : super(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship) {
        this.initFieldsStraightMultiProjectileWeaponPart();
        
        this.total = total;
        this.weaponLayerCircularStaticPool = weaponLayerCircularStaticPool;
    }
    

    @override
    void processScore(AllBinaryLayerManager allbinaryLayerManager, int angle, int otherAngle, WeaponProperties weaponProperties, ScoreableInterface scoreableInterface) {
        final AllBinaryLayer sourceLayerInterface = this.getOwnerLayerInterface();
        final int reducedWidth = (sourceLayerInterface.getWidth() * 8 ~/ 10);
        final int halfWidth = (reducedWidth >> 1);
        final int x = this.relativeRelationship.getX();
        final int y = this.relativeRelationship.getY();
        int sine = 0;
        int beamX = 0;
        int cosine = 0;
        int beamY = 0;
        late WeaponLayer weaponLayer;
        final int increment = reducedWidth ~/ (this.total - 1);
        int next = -halfWidth;
        for (int index = 0; index < this.total; index++) {
            sine = (next * this.noDecimalTrigTable.sin(angle));
            beamX = ((sine ~/ this.noDecimalTrigTable.SCALE)).toSigned(32);
            cosine = (next * this.noDecimalTrigTable.cos(angle));
            beamY = -((cosine ~/ this.noDecimalTrigTable.SCALE)).toSigned(32);
            weaponLayer = this.weaponLayerCircularStaticPool.getInstanceWeaponLayer(sourceLayerInterface, x + beamX, y + beamY, 0, angle, otherAngle, weaponProperties, scoreableInterface);
            allbinaryLayerManager.append(weaponLayer);
            next += increment;
        }
    }
}

