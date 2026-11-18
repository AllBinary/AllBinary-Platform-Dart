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
import 'package:allbinary/org/allbinary/game/score/ScoreableInterface.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerCircularPool.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/pickup/points/PointsLayer.dart';

class PointsLayerCircularStaticPool extends AllBinaryLayerCircularPool {
    

    PointsLayerCircularStaticPool(AllBinaryLayerFactoryInterface allbinaryLayerFactoryInterface, int total) {
        super.initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface, total);
    }
    

    void visit(AllBinaryLayer sourceLayerInterface) {
        PointsLayer pointsLayer = (this.getNextInstance() as PointsLayer);
        ScoreableInterface scoreableInterface = (sourceLayerInterface as ScoreableInterface);
        pointsLayer.visit(scoreableInterface);
    }
}

