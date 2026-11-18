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
// package org.allbinary.game.layer.pickup

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryBase.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerType.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/IconLayer.dart';

class PickedUpLayerInterfaceFactory extends PickedUpLayerInterfaceFactoryBase {
    late PickedUpLayerType pickedUpLayerType;
    late IconLayer iconLayer;
    late Animation animationInterface;

    // Java field initializers run after the base constructor
    void initFieldsPickedUpLayerInterfaceFactory() {
    
    
    
    }
    

    PickedUpLayerInterfaceFactory(PickedUpLayerType pickeUpLayerType, IconLayer iconLayer, Animation animationInterface) {
        this.initFieldsPickedUpLayerInterfaceFactory();
        this.pickedUpLayerType = pickeUpLayerType;
        this.animationInterface = animationInterface;
        this.iconLayer = iconLayer;
    }
    

    @override
    AllBinaryLayer getIconLayer() {
        return this.iconLayer;
    }
    

    @override
    Animation getAnimationInterface() {
        return this.animationInterface;
    }
    

    @override
    PickedUpLayerType getPickedUpLayerType() {
        return this.pickedUpLayerType;
    }
}

