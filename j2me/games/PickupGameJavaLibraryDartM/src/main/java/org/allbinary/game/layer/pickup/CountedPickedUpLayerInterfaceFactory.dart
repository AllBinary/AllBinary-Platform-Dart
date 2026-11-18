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
import 'package:allbinary/org/allbinary/animation/NullAnimationFactory.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/IconLayer.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryPool.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerType.dart';

class CountedPickedUpLayerInterfaceFactory extends PickedUpLayerInterfaceFactory implements CountedPickedUpLayerInterfaceFactoryInterface {
    static final CountedPickedUpLayerInterfaceFactory NULL_COUNTED_PICKUP_LAYER_FACTORY = CountedPickedUpLayerInterfaceFactory(PickedUpLayerTypeFactory.getInstance().NONE, IconLayer.NULL_ICON_LAYER, NullAnimationFactory.getFactoryInstance().getInstance1(0));
    int id = 0;

    // Java field initializers run after the base constructor
    void initFieldsCountedPickedUpLayerInterfaceFactory() {
    
    }
    

    CountedPickedUpLayerInterfaceFactory(PickedUpLayerType pickeUpLayerType, IconLayer iconLayer, Animation animationInterface) : super(pickeUpLayerType, iconLayer, animationInterface) {
        this.initFieldsCountedPickedUpLayerInterfaceFactory();
        
        BasicArrayList list = CountedPickedUpLayerInterfaceFactoryPool.getInstance().getList();
        this.id = list.size();
        list.add(this);
    }
    

    @override
    AllBinaryLayer getNextInstance(ABHashtable hashtable, int x, int y, int z) {
        throw JException('Exception', CommonStrings.getInstance().NOT_IMPLEMENTED);
    }
    

    @override
    int getTotal() {
        return -1;
    }
    

    @override
    int getId() {
        return this.id;
    }
}

