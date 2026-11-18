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
import 'package:allbinary/org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/InputFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/MultiKeyPressesAI.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/KeyPressesAI.dart';

class KeyPressesAIFactory implements ArtificialIntelligenceInterfaceFactoryInterface {
    

    @override
    ArtificialIntelligenceInterface getInstance3(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        final bool isSingleKeyProcessing = InputFeatureFactory.getInstance().isSingleKeyProcessing();
        if (isSingleKeyProcessing) {
            return KeyPressesAI(hashtable, ownerLayerInterface, gameInput);
        } else {
            return MultiKeyPressesAI(hashtable, ownerLayerInterface, gameInput);
        }
    }
}

