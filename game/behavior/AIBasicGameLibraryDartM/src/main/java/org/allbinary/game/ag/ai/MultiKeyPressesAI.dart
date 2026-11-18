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
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelperFactory.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/KeyPressesAI.dart';

class MultiKeyPressesAI extends KeyPressesAI {
    late TimeDelayHelper toggleTimeHelper;
    late GameTickTimeDelayHelper gameTickTimeDelayHelper;

    // Java field initializers run after the base constructor
    void initFieldsMultiKeyPressesAI() {
    this.toggleTimeHelper = TimeDelayHelper(600);
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    }
    

    MultiKeyPressesAI(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) : super(hashtable, ownerLayerInterface, gameInput) {
        this.initFieldsMultiKeyPressesAI();
        
        this.update();
    }
    

    @override
    void processAI(AllBinaryLayerManager allBinaryLayerManager) {
    }
    

    void update() {
        GameInput gameInput = this.getGameInput();
        final List<int?> keys = this.keys;
        final int size = keys.length;
        if (this.isOn()) {
            for (int index = 0; index < size; index++) {
                int key = (keys[index]!).toInt();
                if (key != -1) {
                    gameInput.add(this.gameKeyEventFactory.getInstanceForKey(this, key));
                }
            }
        } else {
            for (int index = 0; index < size; index++) {
                int key = (keys[index]!).toInt();
                if (key != -1) {
                    gameInput.addForRemoval(this.gameKeyEventFactory.getInstanceForKey(this, key));
                }
            }
        }
    }
    

    @override
    void toggle() {
        if (this.toggleTimeHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
            super.toggle();
            this.update();
        }
    }
    

    @override
    void disable() {
        if (this.toggleTimeHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
            super.disable();
            this.update();
        }
    }
    

    @override
    void enable() {
        if (this.toggleTimeHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
            super.enable();
            this.update();
        }
    }
}

