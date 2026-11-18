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
// package org.allbinary.game.ag.ai

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/ai/ArtificialIntelligenceInterface.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/tactical/BasicRandomAIFactory.dart';
import 'package:allbinary/org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/ai/BasicAI.dart';
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/logic/util/visitor/Visitor.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/ThrustAIVisitorFactory.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/BasicProbabilityAIDataFactory.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/LastKeyAIVisitorFactory.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/DiveAndDirectionalTrackingAI.dart';

class DiveAndDirectionalTrackingAIFactory implements ArtificialIntelligenceInterfaceFactoryInterface {
    

    @override
    ArtificialIntelligenceInterface getInstance3(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        Object visitorCanBeNull = hashtable.get((BasicAI.AI_VISITOR as Object));
        if (visitorCanBeNull == null) {
            visitorCanBeNull = ThrustAIVisitorFactory.getInstance();
        }
        final ABHashtable hashtable2 = BasicProbabilityAIDataFactory().getInstance();
        hashtable2.put(BasicAI.AI_VISITOR, LastKeyAIVisitorFactory.getInstance());
        final ArtificialIntelligenceInterface artificialIntelligenceInterface = BasicRandomAIFactory().getInstance3(hashtable2, ownerLayerInterface, gameInput);
        return DiveAndDirectionalTrackingAI(ownerLayerInterface, artificialIntelligenceInterface, gameInput, (visitorCanBeNull as Visitor));
    }
}

