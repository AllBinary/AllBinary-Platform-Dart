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
import 'package:allbinary/org/allbinary/game/health/HealthInterface.dart';
import 'package:allbinary/org/allbinary/game/health/HealthInterfaceCompositeInterface.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerCircularPool.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/pickup/health/HealLayer.dart';

class HealLayerCircularStaticPool extends AllBinaryLayerCircularPool {
    

    HealLayerCircularStaticPool(AllBinaryLayerFactoryInterface allbinaryLayerFactoryInterface, int total) {
        super.initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface, total);
    }
    

    void visit(AllBinaryLayer sourceLayerInterface) {
        final HealLayer healLayer = (this.getNextInstance() as HealLayer);
        final HealthInterfaceCompositeInterface healthInterfaceCompositeInterface = (sourceLayerInterface as HealthInterfaceCompositeInterface);
        final HealthInterface healthInterface = healthInterfaceCompositeInterface.getHealthInterface();
        healLayer.visit(healthInterface);
    }
}

