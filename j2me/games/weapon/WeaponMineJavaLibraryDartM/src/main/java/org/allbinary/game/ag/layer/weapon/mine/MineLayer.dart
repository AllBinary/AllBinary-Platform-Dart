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
// package org.allbinary.game.ag.layer.weapon.mine

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/ag/weapon/media/audio/DropWeaponSound.dart';
import 'package:allbinary/org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/weapon/SimpleWeaponLayer.dart';
import 'package:allbinary/org/allbinary/game/multiplayer/layer/RemoteInfo.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/media/audio/SecondaryPlayerQueueFactory.dart';
import 'package:allbinary/org/allbinary/physics/movement/NoMovementFactory.dart';
import 'package:allbinary/org/allbinary/view/ViewPositionBase.dart';
import 'package:allbinary/org/allbinary/view/event/ViewPositionEventHandler.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/weapon/mine/MineWeaponResources.dart';

class MineLayer extends SimpleWeaponLayer {
    static const String NAME = "MineLayer";
    late ViewPositionEventHandler viewPositionEventHandler;

    // Java field initializers run after the base constructor
    void initFieldsMineLayer() {
    this.viewPositionEventHandler = ViewPositionEventHandler.getInstance();
    }
    

    MineLayer(ViewPositionBase viewPosition) : super(MineLayer.NAME, RemoteInfo.REMOTE_INFO, -1, NoMovementFactory.getInstance().getMovmentInstance(), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(MineWeaponResources.getInstance().RESOURCE).getInstance1(0), SimpleWeaponLayer.createDestroyed(), Rectangle(PointFactory.getInstance().ZERO_ZERO, 10, 10), viewPosition) {
        this.initFieldsMineLayer();
        
    }
    

    @override
    void initXYZ(int x, int y, int z) {
        this.setPosition(x + 5, y + 5, z);
        this.viewPositionEventHandler.addListener((this as AllBinaryLayer));
        SecondaryPlayerQueueFactory.getInstance().add(DropWeaponSound.getInstance());
    }
    

    @override
    void damage(int damage, int damageType) {
        this.totalDamage = this.getInitDamage() + 1;
    }
    

    @override
    int getDamage(int damageType) {
        super.getDamage(damageType);
        return this.getInitDamage();
    }
    

    @override
    void setDestroyed(bool destroyed) {
        super.setDestroyed(destroyed);
        if (this.isDestroyed()) {
            this.viewPositionEventHandler.removeListener(this);
        }
    }
}

