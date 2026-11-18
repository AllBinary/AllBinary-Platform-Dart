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
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonInput.dart';
import 'package:allbinary/org/allbinary/input/motion/button/BasicTouchInputFactory.dart';

class CancelTouchButtonInputFactory {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    late List<TouchButtonInput?> cancelInputArray;

    // Java field initializers run after the base constructor
    void initFieldsCancelTouchButtonInputFactory() {
    this.cancelInputArray = List<TouchButtonInput?>.filled(InputFactory.getInstance().MAX, null);
    }
    

    static CancelTouchButtonInputFactory getInstance() {
        if (CancelTouchButtonInputFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            CancelTouchButtonInputFactory.instance = CancelTouchButtonInputFactory();
        }
        return (CancelTouchButtonInputFactory.instance as CancelTouchButtonInputFactory);
    }
    

    CancelTouchButtonInputFactory() {
        this.initFieldsCancelTouchButtonInputFactory();
        final BasicTouchInputFactory basicTouchInputFactory = BasicTouchInputFactory.getInstance();
        for (int index = this.cancelInputArray.length - 1; index >= 0; index--) {
            this.cancelInputArray[index] = basicTouchInputFactory.NONE;
        }
        this.cancelInputArray[basicTouchInputFactory.UP.getId()] = basicTouchInputFactory.DOWN;
        this.cancelInputArray[basicTouchInputFactory.DOWN.getId()] = basicTouchInputFactory.UP;
        this.cancelInputArray[basicTouchInputFactory.LEFT.getId()] = basicTouchInputFactory.RIGHT;
        this.cancelInputArray[basicTouchInputFactory.RIGHT.getId()] = basicTouchInputFactory.LEFT;
    }
    

    TouchButtonInput getCancel(TouchButtonInput touchButtonInput) {
        return this.cancelInputArray[touchButtonInput.getId()]!;
    }
}

