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
// package org.allbinary.game.combat.damage

import 'package:allbinary/allbinary_java.dart';

class ExplosionResources {
    static final ExplosionResources instance = ExplosionResources();
    late String EXPLOSION_90_RESOURCE;
    late String EXPLOSION_60_RESOURCE;
    late String HALF_EXPLOSION_RESOURCE;
    late String THIRD_EXPLOSION_RESOURCE;

    // Java field initializers run after the base constructor
    void initFieldsExplosionResources() {
    this.EXPLOSION_90_RESOURCE = "/explosion_sprite_90_by_90.png";
    this.EXPLOSION_60_RESOURCE = "/explosion_sprite_60_by_60.png";
    this.HALF_EXPLOSION_RESOURCE = "/explosion_sprite_30_by_30.png";
    this.THIRD_EXPLOSION_RESOURCE = "/explosion_sprite_15_by_15.png";
    }
    

    static ExplosionResources getInstance() {
        return ExplosionResources.instance;
    }
    

    ExplosionResources() {
        this.initFieldsExplosionResources();
    }
}

