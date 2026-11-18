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
// package org.allbinary.game.layer.special

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/org/allbinary/game/input/GameInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/layer/special/SpecialUpGameInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/layer/special/SpecialDownGameInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/layer/special/SpecialRightGameInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/layer/special/SpecialLeftGameInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/layer/special/Special1GameInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/layer/special/Special3GameInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.dart';
import 'package:allbinary/org/allbinary/game/layer/special/SpecialAnalogUpGameInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/layer/special/SpecialAnalogDownGameInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/layer/special/SpecialAnalogRightGameInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/layer/special/SpecialAnalogLeftGameInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/layer/special/SpecialAnalogLeftTriggerGameInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/layer/special/SpecialAnalogRightTriggerGameInputProcessor.dart';

class AnalogInputBuilder {
    static final AnalogInputBuilder instance = AnalogInputBuilder();
    

    static AnalogInputBuilder getInstance() {
        return AnalogInputBuilder.instance;
    }
    

    void disable(List<GameInputProcessor?> inputProcessorArray, CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer) {
        inputProcessorArray[Canvas.UP] = SpecialUpGameInputProcessor(collidableDestroyableDamageableLayer);
        inputProcessorArray[Canvas.DOWN] = SpecialDownGameInputProcessor(collidableDestroyableDamageableLayer);
        inputProcessorArray[Canvas.RIGHT] = SpecialRightGameInputProcessor(collidableDestroyableDamageableLayer);
        inputProcessorArray[Canvas.LEFT] = SpecialLeftGameInputProcessor(collidableDestroyableDamageableLayer);
        inputProcessorArray[Canvas.KEY_NUM0] = Special1GameInputProcessor(collidableDestroyableDamageableLayer);
        inputProcessorArray[Canvas.KEY_NUM5] = Special3GameInputProcessor(collidableDestroyableDamageableLayer);
    }
    

    void enable(List<GameInputProcessor?> inputProcessorArray, CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer) {
        inputProcessorArray[Canvas.UP] = SpecialAnalogUpGameInputProcessor(collidableDestroyableDamageableLayer);
        inputProcessorArray[Canvas.DOWN] = SpecialAnalogDownGameInputProcessor(collidableDestroyableDamageableLayer);
        inputProcessorArray[Canvas.RIGHT] = SpecialAnalogRightGameInputProcessor(collidableDestroyableDamageableLayer);
        inputProcessorArray[Canvas.LEFT] = SpecialAnalogLeftGameInputProcessor(collidableDestroyableDamageableLayer);
        inputProcessorArray[Canvas.KEY_NUM0] = SpecialAnalogLeftTriggerGameInputProcessor(collidableDestroyableDamageableLayer);
        inputProcessorArray[Canvas.KEY_NUM5] = SpecialAnalogRightTriggerGameInputProcessor(collidableDestroyableDamageableLayer);
    }
}

