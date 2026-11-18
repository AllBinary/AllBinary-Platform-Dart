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
// package org.allbinary.game.ag.layer.pickup.points

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationUtil.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/IconLayerFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickupProcessorInterface.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/pickup/points/PointsLayerCircularStaticPool.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/pickup/points/PointsLayerFactory.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/pickup/points/PointsResources.dart';

class Points30kPickedUpLayerInterfaceFactory extends PickedUpLayerInterfaceFactory implements PickupProcessorInterface {
    static PickedUpLayerInterfaceFactoryInterface pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY;
    late PointsLayerCircularStaticPool pool;

    // Java field initializers run after the base constructor
    void initFieldsPoints30kPickedUpLayerInterfaceFactory() {
    this.pool = PointsLayerCircularStaticPool(PointsLayerFactory(GameConfigurationUtil.getInstance().getCompetitionValue() * 30000), 1);
    }
    

    static void init() {
        Points30kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface = Points30kPickedUpLayerInterfaceFactory();
    }
    

    Points30kPickedUpLayerInterfaceFactory() : super(PickedUpLayerTypeFactory.getInstance().POINTS, IconLayerFactory.getInstance3(FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(PointsResources.getInstance().RESOURCE_3).getInstance1(0), 10, 10), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(PointsResources.getInstance().RESOURCE_3).getInstance1(0)) {
        this.initFieldsPoints30kPickedUpLayerInterfaceFactory();
        
    }
    

    int getTotal() {
        return 1;
    }
    

    static PickedUpLayerInterfaceFactoryInterface getInstance() {
        return Points30kPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface;
    }
    

    @override
    void process(AllBinaryLayer sourceLayerInterface) {
        this.pool.visit(sourceLayerInterface);
    }
}

