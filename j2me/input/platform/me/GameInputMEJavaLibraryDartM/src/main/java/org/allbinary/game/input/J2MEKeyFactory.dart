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
import 'package:allbinary/org/allbinary/game/input/GameKeyFactory.dart';
import 'package:allbinary/org/allbinary/game/input/GameKey.dart';
import 'package:allbinary/org/allbinary/game/input/InputFactory.dart';
import 'package:allbinary/org/allbinary/game/input/Input.dart';

class J2MEKeyFactory {
    static final J2MEKeyFactory instance = J2MEKeyFactory();
    late GameKeyFactory gameKeyFactory;

    // Java field initializers run after the base constructor
    void initFieldsJ2MEKeyFactory() {
    this.gameKeyFactory = GameKeyFactory.getInstance();
    }
    

    static J2MEKeyFactory getInstance() {
        return J2MEKeyFactory.instance;
    }
    

    J2MEKeyFactory() {
        this.initFieldsJ2MEKeyFactory();
    }
    

    void init() {
        List<GameKey?> gameKeyArray = <GameKey?>[this.gameKeyFactory.DOWN, this.gameKeyFactory.FIRE, this.gameKeyFactory.GAME_A, this.gameKeyFactory.GAME_B, this.gameKeyFactory.GAME_C, this.gameKeyFactory.GAME_D, this.gameKeyFactory.KEY_NUM0, this.gameKeyFactory.KEY_NUM1, this.gameKeyFactory.KEY_NUM2, this.gameKeyFactory.KEY_NUM3, this.gameKeyFactory.KEY_NUM4, this.gameKeyFactory.KEY_NUM5, this.gameKeyFactory.KEY_NUM6, this.gameKeyFactory.KEY_NUM7, this.gameKeyFactory.KEY_NUM8, this.gameKeyFactory.KEY_NUM9, this.gameKeyFactory.KEY_POUND, this.gameKeyFactory.KEY_STAR, this.gameKeyFactory.LEFT, this.gameKeyFactory.LEVEL_DOWN, this.gameKeyFactory.LEVEL_UP, this.gameKeyFactory.NONE, this.gameKeyFactory.RIGHT, this.gameKeyFactory.UP];
        InputFactory inputFactory = InputFactory.getInstance();
        for (int index = gameKeyArray.length; --index >= 0; ) {
            inputFactory.add(gameKeyArray[index]!.getId(), gameKeyArray[index]!);
        }
    }
    

    bool isSubmission(Input input) {
        if (input == this.gameKeyFactory.FIRE) {
            return true;
        }
        return false;
    }
    

    bool isDelete(Input input) {
        if (input == this.gameKeyFactory.GAME_D) {
            return true;
        }
        return false;
    }
    

    bool isBackSpace(Input input) {
        return false;
    }
    

    bool isUp(Input input) {
        if (input == this.gameKeyFactory.UP) {
            return true;
        }
        return false;
    }
    

    bool isDown(Input input) {
        if (input == this.gameKeyFactory.DOWN) {
            return true;
        }
        return false;
    }
    

    bool isLeft(Input input) {
        if (input == this.gameKeyFactory.LEFT) {
            return true;
        }
        return false;
    }
    

    bool isRight(Input input) {
        if (input == this.gameKeyFactory.RIGHT) {
            return true;
        }
        return false;
    }
    

    bool isEnter(Input input) {
        if (input == this.gameKeyFactory.FIRE) {
            return true;
        }
        return false;
    }
}

