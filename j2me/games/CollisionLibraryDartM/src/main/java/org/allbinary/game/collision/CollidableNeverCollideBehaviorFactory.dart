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
import 'package:allbinary/org/allbinary/game/collision/CollidableNeverCollideBehavior.dart';
import 'package:allbinary/org/allbinary/game/collision/CollidableBaseBehavior.dart';

class CollidableNeverCollideBehaviorFactory extends CollidableBaseBehaviorFactory {
    static final CollidableNeverCollideBehaviorFactory instanceC = CollidableNeverCollideBehaviorFactory();
    late CollidableNeverCollideBehavior instance;

    // Java field initializers run after the base constructor
    void initFieldsCollidableNeverCollideBehaviorFactory() {
    this.instance = CollidableNeverCollideBehavior(false);
    }

    CollidableNeverCollideBehaviorFactory() {
        this.initFieldsCollidableNeverCollideBehaviorFactory();
    }
    

    static CollidableNeverCollideBehaviorFactory getInstance() {
        return CollidableNeverCollideBehaviorFactory.instanceC;
    }
    

    @override
    CollidableBaseBehavior createBehavior() {
        return this.instance;
    }
}

