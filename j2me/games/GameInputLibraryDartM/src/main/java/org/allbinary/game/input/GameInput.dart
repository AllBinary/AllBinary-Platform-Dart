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
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/InputFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';

class GameInput {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late BasicArrayList gameKeyEventList;
    late BasicArrayList removalGameKeyEventList;
    bool isRemoveDuplicateKeyPresses = false;

    // Java field initializers run after the base constructor
    void initFieldsGameInput() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    
    }
    

    GameInput(BasicArrayList gameKeyEventList, BasicArrayList removalGameKeyEventList) {
        this.initFieldsGameInput();
        this.gameKeyEventList = gameKeyEventList;
        this.removalGameKeyEventList = removalGameKeyEventList;
        this.isRemoveDuplicateKeyPresses = Features.getInstance().isFeature(InputFeatureFactory.getInstance().REMOVE_DUPLICATE_KEY_PRESSES);
    }
    

    void add(GameKeyEvent gameKeyEvent) {
        if (this.isRemoveDuplicateKeyPresses && this.gameKeyEventList.contains(gameKeyEvent)) {
            return;
        }
        if (gameKeyEvent != null) {
            this.gameKeyEventList.add(gameKeyEvent);
        } else {
            this.logUtil.putF("Danger Passed Null GameKeyEvent", this, this.commonStrings.ADD);
        }
    }
    

    void addForRemoval(GameKeyEvent gameKeyEvent) {
        this.removalGameKeyEventList.add(gameKeyEvent);
    }
    

    bool isForRemoval(GameKeyEvent gameKeyEvent) {
        return this.removalGameKeyEventList.contains(gameKeyEvent);
    }
    

    void clear() {
        this.gameKeyEventList.clear();
    }
    

    void removeNonAIInputGameKeyEvents() {
        BasicArrayList list = this.gameKeyEventList;
        late GameKeyEvent gameKeyEvent;
        for (int index = list.size(); --index >= 0; ) {
            gameKeyEvent = (list.objectArray[index]! as GameKeyEvent);
            if (gameKeyEvent.getSourceId() != 1) {
                list.removeAt(index);
            }
        }
    }
    

    void update() {
        BasicArrayList removeList = this.removalGameKeyEventList;
        BasicArrayList list = this.gameKeyEventList;
        int size = removeList.size();
        for (int index = 0; index < size; index++) {
            Object anyType = removeList.objectArray[index]!;
            for (int index2 = list.size(); --index2 >= 0; ) {
                if (list.objectArray[index2]! == anyType) {
                    list.removeAt(index2);
                }
            }
        }
        removeList.clear();
    }
    

    BasicArrayList getRemovalGameKeyEventList() {
        return this.removalGameKeyEventList;
    }
    

    BasicArrayList getGameKeyEventList() {
        return this.gameKeyEventList;
    }
}

