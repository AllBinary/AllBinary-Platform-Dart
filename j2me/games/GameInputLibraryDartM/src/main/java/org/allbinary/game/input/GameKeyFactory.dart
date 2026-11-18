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
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonPhoneStrings.dart';
import 'package:allbinary/org/allbinary/game/input/GameKey.dart';
import 'package:allbinary/org/allbinary/game/input/InputFactory.dart';

class GameKeyFactory {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    late GameKey NONE;
    late GameKey UP;
    late GameKey DOWN;
    late GameKey LEFT;
    late GameKey RIGHT;
    late GameKey KEY_POUND;
    late GameKey KEY_STAR;
    late GameKey KEY_NUM0;
    late GameKey KEY_NUM1;
    late GameKey KEY_NUM2;
    late GameKey KEY_NUM3;
    late GameKey KEY_NUM4;
    late GameKey KEY_NUM5;
    late GameKey KEY_NUM6;
    late GameKey KEY_NUM7;
    late GameKey KEY_NUM8;
    late GameKey KEY_NUM9;
    late GameKey GAME_A;
    late GameKey GAME_B;
    late GameKey GAME_C;
    late GameKey GAME_D;
    late GameKey FIRE;
    late GameKey LEVEL_DOWN;
    late GameKey LEVEL_UP;

    // Java field initializers run after the base constructor
    void initFieldsGameKeyFactory() {
    this.NONE = GameKey(InputFactory.getInstance().MAX - 1, "None");
    this.UP = GameKey(Canvas.UP, CommonPhoneStrings.getInstance().UP);
    this.DOWN = GameKey(Canvas.DOWN, CommonPhoneStrings.getInstance().DOWN);
    this.LEFT = GameKey(Canvas.LEFT, CommonPhoneStrings.getInstance().LEFT);
    this.RIGHT = GameKey(Canvas.RIGHT, CommonPhoneStrings.getInstance().RIGHT);
    this.KEY_POUND = GameKey(Canvas.KEY_POUND, "POUND");
    this.KEY_STAR = GameKey(Canvas.KEY_STAR, "STAR");
    this.KEY_NUM0 = GameKey(Canvas.KEY_NUM0, CommonPhoneStrings.getInstance().ZERO);
    this.KEY_NUM1 = GameKey(Canvas.KEY_NUM1, CommonPhoneStrings.getInstance().ONE);
    this.KEY_NUM2 = GameKey(Canvas.KEY_NUM2, CommonPhoneStrings.getInstance().TWO);
    this.KEY_NUM3 = GameKey(Canvas.KEY_NUM3, CommonPhoneStrings.getInstance().THREE);
    this.KEY_NUM4 = GameKey(Canvas.KEY_NUM4, CommonPhoneStrings.getInstance().FOUR);
    this.KEY_NUM5 = GameKey(Canvas.KEY_NUM5, CommonPhoneStrings.getInstance().FIVE);
    this.KEY_NUM6 = GameKey(Canvas.KEY_NUM6, CommonPhoneStrings.getInstance().SIX);
    this.KEY_NUM7 = GameKey(Canvas.KEY_NUM7, CommonPhoneStrings.getInstance().SEVEN);
    this.KEY_NUM8 = GameKey(Canvas.KEY_NUM8, CommonPhoneStrings.getInstance().EIGHT);
    this.KEY_NUM9 = GameKey(Canvas.KEY_NUM9, CommonPhoneStrings.getInstance().NINE);
    this.GAME_A = GameKey(Canvas.GAME_A, "Game A");
    this.GAME_B = GameKey(Canvas.GAME_B, "Game B");
    this.GAME_C = GameKey(Canvas.GAME_C, "Game C");
    this.GAME_D = GameKey(Canvas.GAME_D, "Game D");
    this.FIRE = GameKey(Canvas.FIRE, CommonPhoneStrings.getInstance().FIRE);
    this.LEVEL_DOWN = GameKey(Canvas.KEY_NUM9 + 1, "Cheat Level Up");
    this.LEVEL_UP = GameKey(Canvas.KEY_NUM9 + 2, "Cheat Level Down");
    }

    GameKeyFactory() {
        this.initFieldsGameKeyFactory();
    }
    

    static GameKeyFactory getInstance() {
        if (GameKeyFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            GameKeyFactory.instance = GameKeyFactory();
        }
        return (GameKeyFactory.instance as GameKeyFactory);
    }
}

