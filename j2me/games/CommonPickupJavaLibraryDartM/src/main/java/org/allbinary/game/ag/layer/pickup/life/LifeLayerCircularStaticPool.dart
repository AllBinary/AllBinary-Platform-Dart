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
// package org.allbinary.game.ag.layer.pickup.life

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/ag/life/Life.dart';
import 'package:allbinary/org/allbinary/game/ag/life/LifeInterfaceCompositeInterface.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerCircularPool.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/pickup/life/LifeLayer.dart';

class LifeLayerCircularStaticPool extends AllBinaryLayerCircularPool {
    

    LifeLayerCircularStaticPool(AllBinaryLayerFactoryInterface allbinaryLayerFactoryInterface, int total) {
        super.initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface, total);
    }
    

    void visit(AllBinaryLayer sourceLayerInterface) {
        final LifeLayer lifeLayer = (this.getNextInstance() as LifeLayer);
        final LifeInterfaceCompositeInterface lifeInterfaceCompositeInterface = (sourceLayerInterface as LifeInterfaceCompositeInterface);
        final Life lifeInterface = lifeInterfaceCompositeInterface.getLifeInterface();
        lifeLayer.visit(lifeInterface);
    }
}

