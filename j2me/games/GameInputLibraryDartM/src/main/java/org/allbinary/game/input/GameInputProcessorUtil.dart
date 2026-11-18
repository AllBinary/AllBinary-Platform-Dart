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
// package org.allbinary.game.input

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/input/GameInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/input/InputFactory.dart';

class GameInputProcessorUtil {
    

    static void init(List<GameInputProcessor?> inputProcessorArray) {
        final GameInputProcessor noInputProcessor = GameInputProcessor.getInstance();
        final int total = InputFactory.getInstance().MAX;
        for (int index = 0; index < total; index++) {
            GameInputProcessor inputProcessorCanBeNull = inputProcessorArray[index]!;
            if (inputProcessorCanBeNull == null) {
                inputProcessorArray[index] = noInputProcessor;
            }
        }
    }
}

