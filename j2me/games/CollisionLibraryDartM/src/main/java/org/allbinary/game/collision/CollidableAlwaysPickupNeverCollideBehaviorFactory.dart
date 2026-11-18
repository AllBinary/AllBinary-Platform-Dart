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
import 'package:allbinary/org/allbinary/game/collision/CollidableBaseBehaviorFactory.dart';
import 'package:allbinary/org/allbinary/game/collision/CollidableAlwaysPickupNeverCollideBehavior.dart';
import 'package:allbinary/org/allbinary/game/collision/CollidableBaseBehavior.dart';

class CollidableAlwaysPickupNeverCollideBehaviorFactory extends CollidableBaseBehaviorFactory {
    static final CollidableAlwaysPickupNeverCollideBehaviorFactory instanceC = CollidableAlwaysPickupNeverCollideBehaviorFactory();
    late CollidableAlwaysPickupNeverCollideBehavior instance;

    // Java field initializers run after the base constructor
    void initFieldsCollidableAlwaysPickupNeverCollideBehaviorFactory() {
    this.instance = CollidableAlwaysPickupNeverCollideBehavior();
    }

    CollidableAlwaysPickupNeverCollideBehaviorFactory() {
        this.initFieldsCollidableAlwaysPickupNeverCollideBehaviorFactory();
    }
    

    static CollidableAlwaysPickupNeverCollideBehaviorFactory getInstance() {
        return CollidableAlwaysPickupNeverCollideBehaviorFactory.instanceC;
    }
    

    @override
    CollidableBaseBehavior createBehavior() {
        return this.instance;
    }
}

