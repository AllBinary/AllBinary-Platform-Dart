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
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';

class BasicLayerProcessor {
    static final BasicLayerProcessor NULL_LAYER_PROCESSOR = BasicLayerProcessor();
    late LogUtil logUtil;
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsBasicLayerProcessor() {
    this.logUtil = LogUtil.getInstance();
    this.list = BasicArrayListD();
    }
    

    BasicLayerProcessor() {
        this.initFieldsBasicLayerProcessor();
    }
    

    void add(AllBinaryLayer layerInterface) {
        if (!this.list.contains(layerInterface)) {
            this.list.add(layerInterface);
        }
    }
    

    void process(AllBinaryLayerManager allBinaryLayerManager) {
        throw JException('Exception', CommonStrings.getInstance().NOT_IMPLEMENTED);
    }
    

    BasicArrayList getList() {
        return this.list;
    }
}

