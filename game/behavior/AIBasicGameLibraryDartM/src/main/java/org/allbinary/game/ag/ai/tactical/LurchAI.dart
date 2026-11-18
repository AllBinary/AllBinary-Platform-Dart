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
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/org/allbinary/game/ai/BasicAI.dart';
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';

class LurchAI extends BasicAI {
    int currentRelativeAngle = 0;
    int currentSpeed = 0;

    // Java field initializers run after the base constructor
    void initFieldsLurchAI() {
    this.currentRelativeAngle = 0;
    this.currentSpeed = 0;
    }
    

    LurchAI(AllBinaryLayer ownerLayerInterface, GameInput gameInput) : super(ownerLayerInterface, gameInput) {
        this.initFieldsLurchAI();
        
    }
    

    @override
    void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        if (this.currentSpeed == -1) {
            this.currentSpeed = 5;
        } else {
            this.currentSpeed = -1;
        }
        AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        int x = ownerLayerInterface.getXP();
        if (ownerLayerInterface.getXP() - this.currentSpeed <= 0) {
            this.reverse();
            this.drop();
        }
        if (ownerLayerInterface.getX2() + this.currentSpeed > DisplayInfoSingleton.getInstance().getLastWidth()) {
            this.reverse();
            this.accelerate();
            this.drop();
        }
        if (this.currentRelativeAngle == 0) {
            x += this.currentSpeed;
        } else if (this.currentRelativeAngle == 180) {
            x -= this.currentSpeed;
        }
        ownerLayerInterface.setPosition(x, ownerLayerInterface.getYP(), ownerLayerInterface.getZP());
        if (this.currentRelativeAngle == 0) {
            super.processKeyAI(Canvas.KEY_NUM0);
        } else if (this.currentRelativeAngle == 180) {
            super.processKeyAI(Canvas.KEY_POUND);
        }
    }
    

    void reverse() {
        if (this.currentRelativeAngle == 180) {
            this.currentRelativeAngle = 0;
        } else if (this.currentRelativeAngle == 0) {
            this.currentRelativeAngle = 180;
        }
    }
    

    void accelerate() {
        if (this.currentSpeed < 20) {
            this.currentSpeed++;
        }
    }
    

    void drop() {
        AllBinaryLayer ownerLayerInterface = this.getOwnerLayerInterface();
        int y = ownerLayerInterface.getYP();
        if (ownerLayerInterface.getY2() + ownerLayerInterface.getHeight() > DisplayInfoSingleton.getInstance().getLastHeight()) {
            y = 0;
        } else {
            y += ownerLayerInterface.getHeight() + 1;
        }
        ownerLayerInterface.setPosition(ownerLayerInterface.getXP(), y, ownerLayerInterface.getZP());
    }
}

