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
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/pickup/points/PointsLayer.dart';

class PointsLayerFactory implements AllBinaryLayerFactoryInterface {
    int points = 0;

    // Java field initializers run after the base constructor
    void initFieldsPointsLayerFactory() {
    
    }
    

    PointsLayerFactory(int points) {
        this.initFieldsPointsLayerFactory();
        this.points = points;
    }
    

    @override
    AllBinaryLayer getInstance() {
        return PointsLayer(this.points);
    }
}

