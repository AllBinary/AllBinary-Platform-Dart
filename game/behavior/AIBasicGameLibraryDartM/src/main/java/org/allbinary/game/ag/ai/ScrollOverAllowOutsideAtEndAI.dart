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

class ScrollOverAllowOutsideAtEndAI extends BasicAI {
    

    ScrollOverAllowOutsideAtEndAI(AllBinaryLayer ownerLayerInterface, GameInput gameInput) : super(ownerLayerInterface, gameInput) {
        
    }
    

    @override
    void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        int x = ownerLayerInterface.getXP();
        int y = ownerLayerInterface.getYP();
        int width = ownerLayerInterface.getWidth();
        int height = ownerLayerInterface.getHeight();
        DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        if (x > displayInfo.getLastWidth()) {
            ownerLayerInterface.setPosition(-width, y, ownerLayerInterface.getZP());
        }
        if (y > displayInfo.getLastHeight()) {
            ownerLayerInterface.setPosition(x, -height, ownerLayerInterface.getZP());
        }
        if (x < -width) {
            ownerLayerInterface.setPosition(displayInfo.getLastWidth() + width, y, ownerLayerInterface.getZP());
        }
        if (y < -height) {
            ownerLayerInterface.setPosition(x, displayInfo.getLastHeight() + height, ownerLayerInterface.getZP());
        }
    }
}

