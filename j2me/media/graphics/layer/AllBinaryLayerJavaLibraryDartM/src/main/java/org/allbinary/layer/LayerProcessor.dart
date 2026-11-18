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
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/layer/LayerProcessorInterface.dart';
import 'package:allbinary/org/allbinary/layer/LayerManager.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';

class LayerProcessor implements LayerProcessorInterface {
    late CommonStrings commonStrings;
    late LayerManager layerManager;

    // Java field initializers run after the base constructor
    void initFieldsLayerProcessor() {
    this.commonStrings = CommonStrings.getInstance();
    
    }
    

    LayerProcessor(LayerManager layerManager) {
        this.initFieldsLayerProcessor();
        this.layerManager = layerManager;
    }
    

    @override
    void processAt(AllBinaryLayerManager allBinaryLayerManager, AllBinaryLayer layerInterface, int index) {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    @override
    bool isProcessorLayer(AllBinaryLayer layerInterface) {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    @override
    LayerManager getLayerManager() {
        return this.layerManager;
    }
    

    @override
    void process(AllBinaryLayerManager allBinaryLayerManager) {
        LayerManager layerManager = this.getLayerManager();
        int size = layerManager.getSize();
        for (int index = 0; index < size; index++) {
            this.processAt(allBinaryLayerManager, (layerManager.getLayerAt(index) as AllBinaryLayer), index);
        }
    }
}

