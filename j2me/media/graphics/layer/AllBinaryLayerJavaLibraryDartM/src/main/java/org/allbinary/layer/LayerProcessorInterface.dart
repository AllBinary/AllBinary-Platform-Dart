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
import 'package:allbinary/org/allbinary/layer/BasicLayerProcessorInterface.dart';
import 'package:allbinary/org/allbinary/layer/LayerManager.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';

abstract interface class LayerProcessorInterface implements BasicLayerProcessorInterface {
    

    LayerManager getLayerManager();
    

    void processAt(AllBinaryLayerManager allBinaryLayerManager, AllBinaryLayer layerInterface, int index);
    

    bool isProcessorLayer(AllBinaryLayer layerInterface);
}

