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
import 'package:allbinary/org/allbinary/util/HashtableUtil.dart';
import 'package:allbinary/org/allbinary/game/ai/BasicAI.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';

class KeyPressesAI extends BasicAI {
    bool on = false;
    late List<int?> keys;

    // Java field initializers run after the base constructor
    void initFieldsKeyPressesAI() {
    this.on = true;
    
    }
    

    KeyPressesAI(ABHashtable hashtable, AllBinaryLayer ownerLayerInterface, GameInput gameInput) : super(ownerLayerInterface, gameInput) {
        this.initFieldsKeyPressesAI();
        
        this.keys = List<int?>.filled(hashtable.size(), null);
        List<Object?> objectArray = HashtableUtil.getInstance().getKeysAsArray(hashtable);
        int size = objectArray.length;
        for (int index = 0; index < size; index++) {
            this.keys[index] = (hashtable.get(objectArray[index]!) as int);
        }
    }
    

    @override
    void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        if (this.on) {
            for (int index = 0; index < this.keys.length; index++) {
                super.processKeyAI((this.keys[index]!).toInt());
            }
        }
    }
    

    void toggle() {
        if (this.isOn()) {
            this.setOn(false);
        } else {
            this.setOn(true);
        }
    }
    

    void disable() {
        this.setOn(false);
    }
    

    void enable() {
        this.setOn(true);
    }
    

    void setOn(bool on) {
        this.on = on;
    }
    

    bool isOn() {
        return this.on;
    }
}

