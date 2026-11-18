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
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/time/NoTimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/InputProbability.dart';

class BasicProbabilityAIDataFactory {
    

    ABHashtable getInstance() {
        final List<List<int?>?> likelyhoodIntegerArray = List<List<int?>>.generate(Canvas.KEY_NUM9 + 1, (_) => List<int?>.filled(2, null));
        final SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        likelyhoodIntegerArray[Canvas.UP]![0] = smallIntegerSingletonFactory.getAt(0);
        likelyhoodIntegerArray[Canvas.UP]![1] = smallIntegerSingletonFactory.getAt(10);
        likelyhoodIntegerArray[Canvas.DOWN]![0] = smallIntegerSingletonFactory.getAt(10);
        likelyhoodIntegerArray[Canvas.DOWN]![1] = smallIntegerSingletonFactory.getAt(14);
        likelyhoodIntegerArray[Canvas.LEFT]![0] = smallIntegerSingletonFactory.getAt(14);
        likelyhoodIntegerArray[Canvas.LEFT]![1] = smallIntegerSingletonFactory.getAt(18);
        likelyhoodIntegerArray[Canvas.RIGHT]![0] = smallIntegerSingletonFactory.getAt(18);
        likelyhoodIntegerArray[Canvas.RIGHT]![1] = smallIntegerSingletonFactory.getAt(22);
        likelyhoodIntegerArray[Canvas.KEY_NUM7]![0] = smallIntegerSingletonFactory.getAt(22);
        likelyhoodIntegerArray[Canvas.KEY_NUM7]![1] = smallIntegerSingletonFactory.getAt(26);
        likelyhoodIntegerArray[Canvas.KEY_NUM9]![0] = smallIntegerSingletonFactory.getAt(26);
        likelyhoodIntegerArray[Canvas.KEY_NUM9]![1] = smallIntegerSingletonFactory.getAt(30);
        likelyhoodIntegerArray[Canvas.KEY_NUM1]![0] = smallIntegerSingletonFactory.getAt(30);
        likelyhoodIntegerArray[Canvas.KEY_NUM1]![1] = smallIntegerSingletonFactory.getAt(40);
        final List<int?> repeatLikelyhoodIntegerArray = List<int?>.filled(Canvas.KEY_NUM9 + 1, null);
        repeatLikelyhoodIntegerArray[Canvas.UP] = smallIntegerSingletonFactory.getAt(0);
        repeatLikelyhoodIntegerArray[Canvas.DOWN] = smallIntegerSingletonFactory.getAt(0);
        repeatLikelyhoodIntegerArray[Canvas.LEFT] = smallIntegerSingletonFactory.getAt(0);
        repeatLikelyhoodIntegerArray[Canvas.RIGHT] = smallIntegerSingletonFactory.getAt(0);
        repeatLikelyhoodIntegerArray[Canvas.KEY_NUM7] = smallIntegerSingletonFactory.getAt(0);
        repeatLikelyhoodIntegerArray[Canvas.KEY_NUM9] = smallIntegerSingletonFactory.getAt(0);
        repeatLikelyhoodIntegerArray[Canvas.KEY_NUM1] = smallIntegerSingletonFactory.getAt(10);
        final InputProbability inputProbability = InputProbability(likelyhoodIntegerArray, repeatLikelyhoodIntegerArray, 42, NoTimeDelayHelper.SINGLETON);
        return inputProbability.toHashtable();
    }
}

