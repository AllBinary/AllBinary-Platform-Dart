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
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEventListenerInterface.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/game/input/GameInputStrings.dart';

class PlayerGameInput extends GameInput implements GameKeyEventListenerInterface {
    late GameInputStrings gameInputStrings;
    int playerInputId = 0;

    // Java field initializers run after the base constructor
    void initFieldsPlayerGameInput() {
    this.gameInputStrings = GameInputStrings.getInstance();
    
    }
    

    PlayerGameInput(BasicArrayList gameKeyEventList, BasicArrayList removalGameKeyEventList, int playerInputId) : super(gameKeyEventList, removalGameKeyEventList) {
        this.initFieldsPlayerGameInput();
        
        this.playerInputId = playerInputId;
    }
    

    @override
    void onPressGameKeyEvent(GameKeyEvent gameKeyEvent) {
        this.add(gameKeyEvent);
        this.addForRemoval(gameKeyEvent);
    }
    

    @override
    void onDownGameKeyEvent(GameKeyEvent gameKeyEvent) {
        this.add(gameKeyEvent);
    }
    

    void onDownKeyEvent(GameKeyEvent gameKeyEvent) {
        this.add(gameKeyEvent);
        this.addForRemoval(gameKeyEvent);
    }
    

    void onDownKey(int gameKeyEvent) {
        PreLogUtil.put(StringMaker().append(CommonLabels.getInstance().START_LABEL).append(gameKeyEvent.toString()).toString(), this, this.gameInputStrings.ON_DOWN_GAME_KEY);
    }
    

    @override
    void onUpGameKeyEvent(GameKeyEvent gameKeyEvent) {
        this.addForRemoval(gameKeyEvent);
    }
    

    void onUpKeyEvent(int gameKeyEvent) {
    }
    

    @override
    void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    int getPlayerInputId() {
        return this.playerInputId;
    }
}

