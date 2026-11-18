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
import 'package:allbinary/org/allbinary/game/ai/BasicAI.dart';
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';

class ScrollOverImmediateAI extends BasicAI {
    

    ScrollOverImmediateAI(AllBinaryLayer ownerLayerInterface, GameInput gameInput) : super(ownerLayerInterface, gameInput) {
        
    }
    

    @override
    void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        final AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        final int x = ownerLayerInterface.getXP();
        final int y = ownerLayerInterface.getYP();
        final int x2 = ownerLayerInterface.getX2();
        final int y2 = ownerLayerInterface.getY2();
        final int width = ownerLayerInterface.getWidth();
        final int height = ownerLayerInterface.getHeight();
        DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        if (x2 > displayInfo.getLastWidth()) {
            ownerLayerInterface.setPosition(0, y, ownerLayerInterface.getZP());
        }
        if (y2 > displayInfo.getLastHeight()) {
            ownerLayerInterface.setPosition(x, 0, ownerLayerInterface.getZP());
        }
        if (x < 0) {
            ownerLayerInterface.setPosition(displayInfo.getLastWidth() - width, y, ownerLayerInterface.getZP());
        }
        if (y < 0) {
            ownerLayerInterface.setPosition(x, displayInfo.getLastHeight() - height, ownerLayerInterface.getZP());
        }
    }
}

