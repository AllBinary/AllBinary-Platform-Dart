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
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerFactoryInterface.dart';
import 'package:allbinary/org/allbinary/view/ViewPositionFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/weapon/mine/MineLayer.dart';

class MineLayerFactory implements AllBinaryLayerFactoryInterface {
    late ViewPositionFactoryInterface viewPositionFactoryInterface;

    // Java field initializers run after the base constructor
    void initFieldsMineLayerFactory() {
    
    }
    

    MineLayerFactory(ViewPositionFactoryInterface viewPositionFactoryInterface) {
        this.initFieldsMineLayerFactory();
        this.viewPositionFactoryInterface = viewPositionFactoryInterface;
    }
    

    @override
    AllBinaryLayer getInstance() {
        return MineLayer(this.viewPositionFactoryInterface.getInstance());
    }
}

