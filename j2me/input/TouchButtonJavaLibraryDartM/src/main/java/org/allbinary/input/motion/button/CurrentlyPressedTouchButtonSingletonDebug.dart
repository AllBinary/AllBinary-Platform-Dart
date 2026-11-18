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
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/input/motion/button/CurrentlyPressedTouchButtonSingleton.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonInput.dart';

class CurrentlyPressedTouchButtonSingletonDebug extends CurrentlyPressedTouchButtonSingleton {
    static final CurrentlyPressedTouchButtonSingletonDebug instanceC = CurrentlyPressedTouchButtonSingletonDebug();
    late String string;
    late String listString;
    late String appendText;
    late String PRESSED_AND_FIRED;
    late String PRESSED_AND_NOT_FIRED;
    late String ASSOCIATED_RELEASED_AND_FIRED;
    late String RELEASED_AND_FIRED;
    late String RELEASED_AND_FIRED_2;
    late String RELEASED_AND_NOT_FIRED;

    // Java field initializers run after the base constructor
    void initFieldsCurrentlyPressedTouchButtonSingletonDebug() {
    this.string = StringUtil.getInstance().EMPTY_STRING;
    this.listString = StringUtil.getInstance().EMPTY_STRING;
    this.appendText = StringUtil.getInstance().EMPTY_STRING;
    this.PRESSED_AND_FIRED = "pressed & fired";
    this.PRESSED_AND_NOT_FIRED = "pressed in button but not fired";
    this.ASSOCIATED_RELEASED_AND_FIRED = "assoc. rel & fired";
    this.RELEASED_AND_FIRED = "rel & fired 1";
    this.RELEASED_AND_FIRED_2 = "rel & fired 2";
    this.RELEASED_AND_NOT_FIRED = "rel & not fired";
    }

    CurrentlyPressedTouchButtonSingletonDebug() {
        this.initFieldsCurrentlyPressedTouchButtonSingletonDebug();
    }
    

    static CurrentlyPressedTouchButtonSingleton getInstance() {
        return CurrentlyPressedTouchButtonSingletonDebug.instanceC;
    }
    

    void appendTouchButtonInput(String append, TouchButtonInput touchButtonInput) {
        StringMaker stringBuffer = StringMaker();
        stringBuffer.append(touchButtonInput.toString());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(append);
        this.appendText = stringBuffer.toString();
        this.string = StringMaker().append(this.listString).append(this.appendText).toString();
    }
    

    void append(String append) {
        this.appendText = StringMaker().append(this.appendText).append(append).toString();
        this.string = StringMaker().append(this.listString).append(this.appendText).toString();
    }
    

    void clearLog(int x, int y) {
        this.appendText = StringMaker().append(GPoint.toStringStatic(x, y, 0)).append(CommonSeps.getInstance().SPACE).toString();
        this.string = StringMaker().append(this.listString).append(this.appendText).toString();
    }
    

    void releaseAndNotFired() {
        this.append(this.RELEASED_AND_NOT_FIRED);
    }
    

    void releaseAndFired(TouchButtonInput touchButtonInput) {
        this.appendTouchButtonInput(this.RELEASED_AND_FIRED, touchButtonInput);
    }
    

    void releaseAndFired2(TouchButtonInput touchButtonInput) {
        this.appendTouchButtonInput(this.RELEASED_AND_FIRED_2, touchButtonInput);
    }
    

    void releaseAndFiredAssociated(TouchButtonInput touchButtonInput) {
        this.appendTouchButtonInput(this.ASSOCIATED_RELEASED_AND_FIRED, touchButtonInput);
    }
    

    void pressedAndFired(TouchButtonInput touchButtonInput) {
        this.appendTouchButtonInput(this.PRESSED_AND_FIRED, touchButtonInput);
    }
    

    void pressedAndNotFired(TouchButtonInput touchButtonInput) {
        this.appendTouchButtonInput(this.PRESSED_AND_NOT_FIRED, touchButtonInput);
    }
    

    @override
    TouchButtonInput removeAt(int index) {
        TouchButtonInput touchButtonInput = super.removeAt(index);
        this.listString = this.list.toString();
        this.string = StringMaker().append(this.listString).append(this.appendText).toString();
        return touchButtonInput;
    }
    

    @override
    bool remove(TouchButtonInput touchButtonInput) {
        bool isRemoved = super.remove(touchButtonInput);
        this.listString = this.list.toString();
        this.string = StringMaker().append(this.listString).append(this.appendText).toString();
        return isRemoved;
    }
    

    @override
    void add(TouchButtonInput touchButtonInput) {
        super.add(touchButtonInput);
        this.listString = this.list.toString();
        this.string = StringMaker().append(this.listString).append(this.appendText).toString();
    }
    

    @override
    String toString() {
        return this.string;
    }
}

