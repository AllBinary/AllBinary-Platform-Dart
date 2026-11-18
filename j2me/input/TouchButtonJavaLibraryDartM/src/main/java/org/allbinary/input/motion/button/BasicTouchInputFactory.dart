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
// package org.allbinary.input.motion.button

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/input/InputFactory.dart';
import 'package:allbinary/org/allbinary/game/input/mapping/InputToGameKeyMapping.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonInput.dart';

class BasicTouchInputFactory {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    late LogUtil logUtil;
    late TouchButtonInput SPECIAL_BUTTON_SEVEN_TESTING_ONLY;
    late TouchButtonInput SPECIAL_BUTTON_EIGHT_TESTING_ONLY;
    late TouchButtonInput SPECIAL_BUTTON_SIX;
    late TouchButtonInput SPECIAL_BUTTON_FIVE;
    late TouchButtonInput SPECIAL_BUTTON_FOUR;
    late TouchButtonInput SPECIAL_BUTTON_THREE;
    late TouchButtonInput SPECIAL_BUTTON_TWO;
    late TouchButtonInput SPECIAL_BUTTON_ONE;
    late TouchButtonInput UP;
    late TouchButtonInput LEFT;
    late TouchButtonInput RIGHT;
    late TouchButtonInput DOWN;
    late TouchButtonInput NONE;
    bool initialized = false;
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsBasicTouchInputFactory() {
    this.logUtil = LogUtil.getInstance();
    
    
    
    
    
    
    
    
    
    
    
    
    
    this.initialized = false;
    this.list = BasicArrayListD();
    }
    

    static BasicTouchInputFactory getInstance() {
        if (BasicTouchInputFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            BasicTouchInputFactory.instance = BasicTouchInputFactory();
        }
        return (BasicTouchInputFactory.instance as BasicTouchInputFactory);
    }
    

    BasicTouchInputFactory() {
        this.initFieldsBasicTouchInputFactory();
        int MAX = InputFactory.getInstance().MAX;
        this.SPECIAL_BUTTON_SEVEN_TESTING_ONLY = TouchButtonInput(MAX - 41, "Button 7 - Testing Only May Cross Over Key Values");
        this.SPECIAL_BUTTON_EIGHT_TESTING_ONLY = TouchButtonInput(MAX - 42, "Button 8 - Testing Only May Cross Over Key Values");
        this.SPECIAL_BUTTON_SIX = TouchButtonInput(MAX - 30, "Button 6");
        this.SPECIAL_BUTTON_FIVE = TouchButtonInput(MAX - 31, "Button 5");
        this.SPECIAL_BUTTON_FOUR = TouchButtonInput(MAX - 32, "Button 4");
        this.SPECIAL_BUTTON_THREE = TouchButtonInput(MAX - 33, "Button 3");
        this.SPECIAL_BUTTON_TWO = TouchButtonInput(MAX - 34, "Button 2");
        this.SPECIAL_BUTTON_ONE = TouchButtonInput(MAX - 35, "Button 1");
        this.UP = TouchButtonInput(MAX - 36, "Up Button");
        this.LEFT = TouchButtonInput(MAX - 37, "Left Button");
        this.RIGHT = TouchButtonInput(MAX - 38, "Right Button");
        this.DOWN = TouchButtonInput(MAX - 39, "Down Button");
        this.NONE = TouchButtonInput(MAX - 40, "No Button");
    }
    

    void init(InputToGameKeyMapping inputToGameKeyMapping) {
        if (!this.initialized) {
            this.initialized = true;
            this.list.add(this.UP);
            this.list.add(this.LEFT);
            this.list.add(this.RIGHT);
            this.list.add(this.DOWN);
            this.list.add(this.SPECIAL_BUTTON_TWO);
            this.list.add(this.SPECIAL_BUTTON_FOUR);
            this.list.add(this.SPECIAL_BUTTON_THREE);
            this.list.add(this.SPECIAL_BUTTON_ONE);
            this.list.add(this.SPECIAL_BUTTON_FIVE);
            this.list.add(this.SPECIAL_BUTTON_SIX);
            this.list.add(this.SPECIAL_BUTTON_SIX);
            this.list.add(this.SPECIAL_BUTTON_SEVEN_TESTING_ONLY);
            this.list.add(this.SPECIAL_BUTTON_EIGHT_TESTING_ONLY);
            this.updateAllFromList(this.list, inputToGameKeyMapping);
        }
    }
    

    void updateAll(InputToGameKeyMapping inputToGameKeyMapping) {
        this.updateAllFromList(this.list, inputToGameKeyMapping);
    }
    

    void updateAllFromList(BasicArrayList list, InputToGameKeyMapping inputToGameKeyMapping) {
        this.logUtil.putF(StringMaker().append(CommonLabels.getInstance().START_LABEL).appendint(list.size()).toString(), this, "updateAll");
        late TouchButtonInput touchButtonInput;
        for (int index = list.size() - 1; index >= 0; index--) {
            touchButtonInput = (list.objectArray[index]! as TouchButtonInput);
            touchButtonInput.update(inputToGameKeyMapping);
        }
    }
    

    BasicArrayList getList() {
        return this.list;
    }
}

