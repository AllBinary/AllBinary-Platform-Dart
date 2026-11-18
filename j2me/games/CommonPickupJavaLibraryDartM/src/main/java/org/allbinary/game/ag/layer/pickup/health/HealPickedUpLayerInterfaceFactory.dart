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
// package org.allbinary.game.ag.layer.pickup.health

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/IconLayerFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickupProcessorInterface.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/pickup/health/HealLayerCircularStaticPool.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/pickup/health/HealLayerFactory.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/pickup/health/HealthResources.dart';

class HealPickedUpLayerInterfaceFactory extends PickedUpLayerInterfaceFactory implements PickupProcessorInterface {
    static PickedUpLayerInterfaceFactoryInterface pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY;
    late HealLayerCircularStaticPool pool;

    // Java field initializers run after the base constructor
    void initFieldsHealPickedUpLayerInterfaceFactory() {
    this.pool = HealLayerCircularStaticPool(HealLayerFactory(), 1);
    }
    

    static void init() {
        HealPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = HealPickedUpLayerInterfaceFactory();
    }
    

    HealPickedUpLayerInterfaceFactory() : super(PickedUpLayerTypeFactory.getInstance().HEAL, IconLayerFactory.getInstance3(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(HealthResources.getInstance().RESOURCE).getInstance1(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(HealthResources.getInstance().RESOURCE).getInstance1(0)) {
        this.initFieldsHealPickedUpLayerInterfaceFactory();
        
    }
    

    int getTotal() {
        return 1;
    }
    

    static PickedUpLayerInterfaceFactoryInterface getInstance() {
        return HealPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface;
    }
    

    @override
    void process(AllBinaryLayer sourceLayerInterface) {
        this.pool.visit(sourceLayerInterface);
    }
}

