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
// package org.allbinary.game.layer.drop

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListUtil.dart';

class DropLayerFactory {
    static final DropLayerFactory DROP_LAYER_FACTORY = DropLayerFactory();
    late BasicArrayList list;
    late BasicArrayListUtil basicArrayListUtil;

    // Java field initializers run after the base constructor
    void initFieldsDropLayerFactory() {
    this.list = BasicArrayListD();
    this.basicArrayListUtil = BasicArrayListUtil.getInstance();
    }
    

    DropLayerFactory() {
        this.initFieldsDropLayerFactory();
    }
    

    void clear() {
        this.list.clear();
    }
    

    static DropLayerFactory getInstance() {
        return DropLayerFactory.DROP_LAYER_FACTORY;
    }
    

    int getSize() {
        return this.list.size();
    }
    

    PickedUpLayerInterfaceFactoryInterface getRandomInstance() {
        return (this.basicArrayListUtil.getRandom(this.list) as PickedUpLayerInterfaceFactoryInterface);
    }
    

    void add(PickedUpLayerInterfaceFactoryInterface layerInterfaceFactoryInterface) {
        this.list.add(layerInterfaceFactoryInterface);
    }
    

    BasicArrayList getList() {
        return this.list;
    }
}

