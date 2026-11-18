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
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonInput.dart';

class CurrentlyPressedTouchButtonSingleton {
    static final CurrentlyPressedTouchButtonSingleton instance = CurrentlyPressedTouchButtonSingleton();
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsCurrentlyPressedTouchButtonSingleton() {
    this.list = BasicArrayListD();
    }
    

    static CurrentlyPressedTouchButtonSingleton getInstance() {
        return CurrentlyPressedTouchButtonSingleton.instance;
    }
    

    CurrentlyPressedTouchButtonSingleton() {
        this.initFieldsCurrentlyPressedTouchButtonSingleton();
    }
    

    int size() {
        return this.list.size();
    }
    

    TouchButtonInput removeAt(int index) {
        return (this.list.removeAt(index) as TouchButtonInput);
    }
    

    bool remove(TouchButtonInput touchButtonInput) {
        return this.list.remove(touchButtonInput);
    }
    

    TouchButtonInput get(int index) {
        return (this.list.objectArray[index]! as TouchButtonInput);
    }
    

    bool contains(TouchButtonInput touchButtonInput) {
        return this.list.contains(touchButtonInput);
    }
    

    void add(TouchButtonInput touchButtonInput) {
        this.list.add(touchButtonInput);
    }
}

