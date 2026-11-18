// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.game.layer.weapon

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/game/combat/weapon/WeaponProperties.dart';
import 'package:allbinary/org/allbinary/game/multiplayer/layer/RemoteInfo.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/physics/movement/Movement.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelperFactory.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/view/ViewPositionBase.dart';
import 'package:allbinary/org/allbinary/game/layer/weapon/SimpleWeaponLayer.dart';

class TempExplosionWeaponLayer extends SimpleWeaponLayer {
    late WeaponProperties weaponProperties;
    late TimeDelayHelper timeDelayHelper;

    // Java field initializers run after the base constructor
    void initFieldsTempExplosionWeaponLayer() {
    this.weaponProperties = WeaponProperties(-1, -1, 0, 1000, (0).toSigned(16));
    this.timeDelayHelper = TimeDelayHelper(0);
    }
    

    TempExplosionWeaponLayer(String name, Movement movement, Animation animationInterface, Rectangle rectangle, ViewPositionBase viewPosition, int timeDelay) : super(name, RemoteInfo.REMOTE_INFO, -1, movement, animationInterface, SimpleWeaponLayer.createDestroyed(), rectangle, viewPosition) {
        this.initFieldsTempExplosionWeaponLayer();
        
        this.timeDelayHelper.delay = timeDelay;
    }
    

    @override
    void processTick(AllBinaryLayerManager allBinaryLayerManager) {
        if (this.timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            this.getCollidableInferface().collide(this, this);
            this.totalDamage = this.getInitDamage() + 1;
        }
        super.processTick(allBinaryLayerManager);
    }
}

