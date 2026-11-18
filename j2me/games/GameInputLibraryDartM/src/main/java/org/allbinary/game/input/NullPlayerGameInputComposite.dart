/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.input

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/game/input/PlayerGameInputCompositeInterface.dart';
import 'package:allbinary/org/allbinary/game/input/NoPlayerGameInput.dart';
import 'package:allbinary/org/allbinary/game/input/PlayerGameInput.dart';

class NullPlayerGameInputComposite implements PlayerGameInputCompositeInterface {
    static final NullPlayerGameInputComposite NULL_PLAYER_GAME_INPUT_COMPOSITE = NullPlayerGameInputComposite();
    

    @override
    String getName() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    @override
    void processInput(AllBinaryLayerManager layerManager) {
    }
    

    @override
    void initInputProcessors() {
    }
    

    @override
    PlayerGameInput getPlayerGameInput() {
        return NoPlayerGameInput.getInstance();
    }
}

