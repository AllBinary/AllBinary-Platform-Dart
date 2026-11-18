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
// package org.allbinary.game.ag.ai.tactical

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/ai/ArtificialIntelligenceInterface.dart';
import 'package:allbinary/org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/ai/BasicAI.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/InputProbability.dart';
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/logic/util/visitor/Visitor.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/tactical/BasicRandomAI.dart';

class BasicRandomAIFactory implements ArtificialIntelligenceInterfaceFactoryInterface {
    

    @override
    ArtificialIntelligenceInterface getInstance3(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        Visitor visitor = (hashtable.get((BasicAI.AI_VISITOR as Object)) as Visitor);
        if (visitor == null) {
            throw JException('Exception', "No Visitor Provided");
        }
        final InputProbability inputProbability = (hashtable.get((InputProbability.INPUT_PROBABILITY as Object)) as InputProbability);
        return BasicRandomAI(ownerLayerInterface, gameInput, inputProbability, visitor);
    }
}

