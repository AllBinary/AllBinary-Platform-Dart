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
// package org.allbinary.game.ag.layer.hud.basic

import 'package:allbinary/allbinary_java.dart';

class HudResources {
    static final HudResources instance = HudResources();
    late String RESOURCE_LIFE;
    late String RESOURCE_HEALTH;

    // Java field initializers run after the base constructor
    void initFieldsHudResources() {
    this.RESOURCE_LIFE = "/hud_life_10_by_10.png";
    this.RESOURCE_HEALTH = "/hud_health_10_by_10.png";
    }
    

    static HudResources getInstance() {
        return HudResources.instance;
    }
    

    HudResources() {
        this.initFieldsHudResources();
    }
}

