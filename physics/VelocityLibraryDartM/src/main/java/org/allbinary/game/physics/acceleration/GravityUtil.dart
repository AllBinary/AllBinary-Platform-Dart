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
// package org.allbinary.game.physics.acceleration

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/physics/velocity/BasicVelocityProperties.dart';

class GravityUtil {
    static final GravityUtil instance = GravityUtil();
    int GAME_GRAVITY_VELOCITY = 0;
    int MAX_GAME_VELOCITY = 0;

    // Java field initializers run after the base constructor
    void initFieldsGravityUtil() {
    this.GAME_GRAVITY_VELOCITY = 1800;
    this.MAX_GAME_VELOCITY = 18000;
    }

    GravityUtil() {
        this.initFieldsGravityUtil();
    }
    

    static GravityUtil getInstance() {
        return GravityUtil.instance;
    }
    

    void process(BasicVelocityProperties velocityProperties, int customGravity) {
        velocityProperties.getVelocityYBasicDecimalP().addint(customGravity);
    }
}

