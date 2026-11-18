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
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/input/Input.dart';

class InputFactory {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late String KEY_CODE_LABEL;
    late String DEVICE_ID_LABEL;
    int MAX = 0;
    late List<Input?> inputIntegerArray;
    late Input NO_INPUT;

    // Java field initializers run after the base constructor
    void initFieldsInputFactory() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.KEY_CODE_LABEL = "KeyCode: ";
    this.DEVICE_ID_LABEL = "DeviceId: ";
    this.MAX = SmallIntegerSingletonFactory.getInstance().getMin();
    this.inputIntegerArray = List<Input?>.filled(this.MAX, null);
    this.NO_INPUT = Input(0, this.commonStrings.UNKNOWN);
    }
    

    static InputFactory getInstance() {
        if (InputFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            InputFactory.instance = InputFactory();
        }
        return (InputFactory.instance as InputFactory);
    }
    

    InputFactory() {
        this.initFieldsInputFactory();
        final int size = this.inputIntegerArray.length;
        for (int index = 0; index < size; index++) {
            this.inputIntegerArray[index] = this.NO_INPUT;
        }
    }
    

    void add(int id, Input input) {
        this.inputIntegerArray[id] = input;
    }
    

    Input getInstanceById(int id) {
        if (id < 0) {
            id = -id;
        }
        if (id > this.inputIntegerArray.length) {
            this.logUtil.putF(StringMaker().append("Warning id: ").appendint(id).toString(), this, this.commonStrings.GET_INSTANCE);
            return this.NO_INPUT;
        }
        return this.inputIntegerArray[id]!;
    }
}

