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
// package org.allbinary.game.combat

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/combat/damage/DamageableBaseBehavior.dart';
import 'package:allbinary/org/allbinary/game/combat/destroy/DestroyableBaseBehavior.dart';

class CombatBaseBehavior {
    static final CombatBaseBehavior NULL_COMBAT_BEHAVIOR = CombatBaseBehavior(DamageableBaseBehavior.getInstance(), DestroyableBaseBehavior.getInstance());
    late DamageableBaseBehavior damageableBaseBehavior;
    late DestroyableBaseBehavior destroyableBaseBehavior;
    bool readyForExplosion = false;

    // Java field initializers run after the base constructor
    void initFieldsCombatBaseBehavior() {
    
    
    this.readyForExplosion = false;
    }
    

    CombatBaseBehavior(DamageableBaseBehavior damageableBaseBehavior, DestroyableBaseBehavior destroyableBaseBehavior) {
        this.initFieldsCombatBaseBehavior();
        this.damageableBaseBehavior = damageableBaseBehavior;
        this.destroyableBaseBehavior = destroyableBaseBehavior;
    }
    

    DamageableBaseBehavior getDamageableBaseBehavior() {
        return this.damageableBaseBehavior;
    }
    

    DestroyableBaseBehavior getDestroyableBaseBehavior() {
        return this.destroyableBaseBehavior;
    }
    

    bool isReadyForExplosion() {
        return this.readyForExplosion;
    }
    

    void setReadyForExplosion(bool readyForExplosion) {
        this.readyForExplosion = readyForExplosion;
    }
}

