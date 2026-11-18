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
import 'package:allbinary/org/allbinary/layer/LayerProcessor.dart';
import 'package:allbinary/org/allbinary/layer/SingleLayerLayerManager.dart';
import 'package:allbinary/org/allbinary/layer/LayerManager.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';

class SingleLayerLayerProcessor extends LayerProcessor {
    

    SingleLayerLayerProcessor() : super(SingleLayerLayerManager()) {
        
    }
    

    @override
    void process(AllBinaryLayerManager allBinaryLayerManager) {
        LayerManager layerManager = this.getLayerManager();
        this.processAt(allBinaryLayerManager, (layerManager.getLayerAt(0) as AllBinaryLayer), 0);
    }
}

