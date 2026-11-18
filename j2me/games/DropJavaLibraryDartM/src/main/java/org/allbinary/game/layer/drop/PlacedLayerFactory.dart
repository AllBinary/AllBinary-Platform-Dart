// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.game.layer.drop

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerFactoryInterface.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListUtil.dart';

class PlacedLayerFactory {
    static final PlacedLayerFactory instance = PlacedLayerFactory();
    late BasicArrayList list;
    late BasicArrayListUtil basicArrayListUtil;

    // Java field initializers run after the base constructor
    void initFieldsPlacedLayerFactory() {
    this.list = BasicArrayListD();
    this.basicArrayListUtil = BasicArrayListUtil.getInstance();
    }
    

    PlacedLayerFactory() {
        this.initFieldsPlacedLayerFactory();
    }
    

    void clear() {
        this.list.clear();
    }
    

    static PlacedLayerFactory getInstance() {
        return PlacedLayerFactory.instance;
    }
    

    int getSize() {
        return this.list.size();
    }
    

    AllBinaryLayerFactoryInterface getRandomInstance() {
        return (this.basicArrayListUtil.getRandom(this.list) as AllBinaryLayerFactoryInterface);
    }
    

    void add(AllBinaryLayerFactoryInterface layerInterfaceFactoryInterface) {
        this.list.add(layerInterfaceFactoryInterface);
    }
}

