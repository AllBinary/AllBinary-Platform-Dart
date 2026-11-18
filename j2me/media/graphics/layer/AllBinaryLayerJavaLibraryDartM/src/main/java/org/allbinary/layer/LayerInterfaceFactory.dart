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
// package org.allbinary.layer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListUtil.dart';
import 'package:allbinary/org/allbinary/layer/Layer.dart';
import 'package:allbinary/org/allbinary/layer/LayerInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';

class LayerInterfaceFactory {
    static final LayerInterfaceFactory SINGLETON = LayerInterfaceFactory();
    late LogUtil logUtil;
    late BasicArrayList list;
    late String HASHTABLE_LABEL;

    // Java field initializers run after the base constructor
    void initFieldsLayerInterfaceFactory() {
    this.logUtil = LogUtil.getInstance();
    this.list = BasicArrayListUtil.getInstance().getImmutableInstance();
    this.HASHTABLE_LABEL = "Hashtable: ";
    }

    LayerInterfaceFactory() {
        this.initFieldsLayerInterfaceFactory();
    }
    

    static LayerInterfaceFactory getInstance() {
        return LayerInterfaceFactory.SINGLETON;
    }
    

    void init() {
        this.list = BasicArrayListD();
    }
    

    AllBinaryLayer getNexInstance(ABHashtable hashtable, int x, int y, int z) {
        final CommonStrings commonStrings = CommonStrings.getInstance();
        this.logUtil.putF(StringMaker().append(this.HASHTABLE_LABEL).append(StringUtil.getInstance().toString1(hashtable)).toString(), this, commonStrings.GET_INSTANCE);
        final int typeInteger = (hashtable.get((Layer.ID as Object)) as int);
        final LayerInterfaceFactoryInterface layerInterfaceFactoryInterface = (this.list.objectArray[(typeInteger).toInt() - 1]! as LayerInterfaceFactoryInterface);
        return layerInterfaceFactoryInterface.getNextInstance(hashtable, x, y, z);
    }
    

    void add(LayerInterfaceFactoryInterface layerInterfaceFactoryInterface) {
        this.list.add(layerInterfaceFactoryInterface);
    }
}

