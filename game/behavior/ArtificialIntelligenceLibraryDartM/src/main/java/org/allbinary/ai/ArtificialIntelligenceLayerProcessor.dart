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
// package org.allbinary.ai

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/layer/LayerProcessor.dart';
import 'package:allbinary/org/allbinary/ai/ArtificialIntelligenceLayerManager.dart';
import 'package:allbinary/org/allbinary/ai/ArtificialIntelligenceCompositeInterface.dart';

class ArtificialIntelligenceLayerProcessor extends LayerProcessor {
    

    ArtificialIntelligenceLayerProcessor() : super(ArtificialIntelligenceLayerManager()) {
        
    }
    

    @override
    void processAt(AllBinaryLayerManager allBinaryLayerManager, AllBinaryLayer layerInterface, int index) {
        ArtificialIntelligenceCompositeInterface artificialIntelligenceCompositeInterface = (layerInterface as ArtificialIntelligenceCompositeInterface);
        artificialIntelligenceCompositeInterface.getArtificialIntelligenceInterface().processAI(allBinaryLayerManager);
    }
    

    @override
    bool isProcessorLayer(AllBinaryLayer layerInterface) {
        if (layerInterface.implmentsArtificialIntelligenceCompositeInterface()) {
            return true;
        } else {
            return false;
        }
    }
}

