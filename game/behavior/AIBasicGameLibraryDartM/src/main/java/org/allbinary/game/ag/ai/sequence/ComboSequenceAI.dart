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
// package org.allbinary.game.ag.ai.sequence

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/ai/ArtificialIntelligenceInterface.dart';
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/sequence/SequenceAI.dart';

class ComboSequenceAI extends SequenceAI {
    

    ComboSequenceAI(List<ArtificialIntelligenceInterface?> artificialIntelligenceInterface, AllBinaryLayer ownerLayerInterface, GameInput gameInput) : super(artificialIntelligenceInterface, ownerLayerInterface, gameInput) {
        
    }
    

    @override
    void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        final List<ArtificialIntelligenceInterface?> artificialIntelligenceInterfaceArray = this.getArtificialIntelligenceInterface();
        final int size = artificialIntelligenceInterfaceArray.length;
        for (int index = 0; index < size; index++) {
            this.setIndex(index);
            super.processAI(allBinaryLayerManager);
        }
    }
}

