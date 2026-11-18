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
// package org.allbinary.input.motion

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class CompleteMotionGestureInputToGameMotionGestureInput {
    static final CompleteMotionGestureInputToGameMotionGestureInput instance = CompleteMotionGestureInputToGameMotionGestureInput();
    late CommonStrings commonStrings;

    // Java field initializers run after the base constructor
    void initFieldsCompleteMotionGestureInputToGameMotionGestureInput() {
    this.commonStrings = CommonStrings.getInstance();
    }

    CompleteMotionGestureInputToGameMotionGestureInput() {
        this.initFieldsCompleteMotionGestureInputToGameMotionGestureInput();
    }
    

    static CompleteMotionGestureInputToGameMotionGestureInput getInstance() {
        return CompleteMotionGestureInputToGameMotionGestureInput.instance;
    }
    

    void init() {
        PreLogUtil.put("No Touch Button = No Compound Motion Gestures", this, this.commonStrings.INIT);
    }
}

