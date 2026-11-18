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

class GameInputStrings {
    static final GameInputStrings instance = GameInputStrings();
    late String PROCESS_INPUT;
    late String KEY_PRESSED;
    late String KEY_RELEASED;
    late String KEY_REPEATED;
    late String ON_PRESS_GAME_KEY;
    late String ON_DOWN_GAME_KEY;
    late String ON_UP_GAME_KEY;
    late String NO_KEY;
    late String ADD_KEY_EVENT;
    late String REMOVE_KEY_EVENT;
    late String STRAFE_LEFT;
    late String STRAFE_RIGHT;
    late String PROCESS_MOTION_INPUT;
    late String UDPATE_CURRENT_TOUCH_INPUT_FACTORY;
    late String ENABLE_PLAYER_GAME_INPUTS;
    late String ENABLE_PLAYER_GAME_INPUT;

    // Java field initializers run after the base constructor
    void initFieldsGameInputStrings() {
    this.PROCESS_INPUT = "processInput";
    this.KEY_PRESSED = "keyPressed";
    this.KEY_RELEASED = "keyReleased";
    this.KEY_REPEATED = "keyRepeated";
    this.ON_PRESS_GAME_KEY = "onPressGameKeyEvent";
    this.ON_DOWN_GAME_KEY = "onDownGameKeyEvent";
    this.ON_UP_GAME_KEY = "onUpGameKeyEvent";
    this.NO_KEY = "Key Code Not Mapped For Game: ";
    this.ADD_KEY_EVENT = "addGameKeyEvent";
    this.REMOVE_KEY_EVENT = "removeGameKeyEvent";
    this.STRAFE_LEFT = "strafeLeft";
    this.STRAFE_RIGHT = "strafeRight";
    this.PROCESS_MOTION_INPUT = "processMotionInput";
    this.UDPATE_CURRENT_TOUCH_INPUT_FACTORY = "updateCurrentTouchInputFactory";
    this.ENABLE_PLAYER_GAME_INPUTS = "Enabling PlayerGameInputs: ";
    this.ENABLE_PLAYER_GAME_INPUT = "Enabling PlayerGameInput: ";
    }

    GameInputStrings() {
        this.initFieldsGameInputStrings();
    }
    

    static GameInputStrings getInstance() {
        return GameInputStrings.instance;
    }
}

