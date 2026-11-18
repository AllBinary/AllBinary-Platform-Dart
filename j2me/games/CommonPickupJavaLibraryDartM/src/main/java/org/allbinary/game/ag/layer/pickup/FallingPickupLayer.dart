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
// package org.allbinary.game.ag.layer.pickup

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/animation/NullAnimationFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickupLayer.dart';
import 'package:allbinary/org/allbinary/game/multiplayer/layer/RemoteInfo.dart';
import 'package:allbinary/org/allbinary/game/tick/TickableInterface.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/view/ViewPosition.dart';

class FallingPickupLayer extends PickupLayer implements TickableInterface {
    static const String NAME = "FallingPickupLayer";
    

    FallingPickupLayer(RemoteInfo remoteInfo) : super(FallingPickupLayer.NAME, remoteInfo, 0, CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY, NullAnimationFactory.getFactoryInstance().getInstance1(0), Rectangle(PointFactory.getInstance().ZERO_ZERO, 0, 0), ViewPosition.getInstanceD()) {
        
    }
    

    @override
    void processTick(AllBinaryLayerManager allBinaryLayerManager) {
        this.setPosition(this.x, this.y + 1, this.z);
    }
    

    @override
    bool implmentsTickableInterface() {
        return true;
    }
}

