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
import 'package:allbinary/org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/game/combat/weapon/WeaponProperties.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/IconLayerFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/weapon/WeaponLayerCircularPool.dart';
import 'package:allbinary/org/allbinary/game/score/ScoreableInterface.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/weapon/mine/MineLayerCircularStaticPool.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/weapon/mine/MineWeaponResources.dart';

class MineCountedPickedUpLayerInterfaceFactory extends CountedPickedUpLayerInterfaceFactory {
    static PickedUpLayerInterfaceFactoryInterface pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY;
    late WeaponLayerCircularPool weaponLayerCircularStaticPool;
    late WeaponProperties weaponProperties;
    late SmallIntegerSingletonFactory smallIntegerSingletonFactory;

    // Java field initializers run after the base constructor
    void initFieldsMineCountedPickedUpLayerInterfaceFactory() {
    this.weaponLayerCircularStaticPool = MineLayerCircularStaticPool.getInstance();
    this.weaponProperties = WeaponProperties(-1, -1, 0, 8000, (10).toSigned(16));
    this.smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
    }
    

    static void init() {
        MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = MineCountedPickedUpLayerInterfaceFactory();
    }
    

    MineCountedPickedUpLayerInterfaceFactory() : super(PickedUpLayerTypeFactory.getInstance().MINE, IconLayerFactory.getInstance3(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(MineWeaponResources.getInstance().DROP_ICON_RESOURCE).getInstance1(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(MineWeaponResources.getInstance().DROP_RESOURCE).getInstance1(0)) {
        this.initFieldsMineCountedPickedUpLayerInterfaceFactory();
        
    }
    

    static PickedUpLayerInterfaceFactoryInterface getInstance() {
        return MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface;
    }
    

    @override
    int getTotal() {
        return 3;
    }
    

    @override
    AllBinaryLayer getNextInstance(ABHashtable hashtable, int x, int y, int z) {
        final AllBinaryLayer sourceLayerInterface = (hashtable.get((this.smallIntegerSingletonFactory.getAt(0) as Object)) as AllBinaryLayer);
        final int angle = (hashtable.get((this.smallIntegerSingletonFactory.getAt(1) as Object)) as int);
        final ScoreableInterface scoreableInterface = (sourceLayerInterface as ScoreableInterface);
        return this.weaponLayerCircularStaticPool.getInstanceWeaponLayer(sourceLayerInterface, x, y, z, (angle).toInt(), 0, this.weaponProperties, scoreableInterface);
    }
}

