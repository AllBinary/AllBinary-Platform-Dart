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
import 'package:allbinary/org/allbinary/game/ai/BasicAI.dart';
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';

class SpinnerAI extends BasicAI {
    bool isEven = false;
    late List<int> direction;

    // Java field initializers run after the base constructor
    void initFieldsSpinnerAI() {
    this.isEven = false;
    
    }
    

    SpinnerAI(List<int> direction, AllBinaryLayer ownerLayerInterface, GameInput gameInput) : super(ownerLayerInterface, gameInput) {
        this.initFieldsSpinnerAI();
        
        this.direction = direction;
    }
    

    @override
    void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        if (this.isEven) {
            super.processKeyAI(this.direction[0]);
            this.isEven = false;
        } else {
            super.processKeyAI(Canvas.KEY_NUM1);
            this.isEven = true;
        }
    }
}

