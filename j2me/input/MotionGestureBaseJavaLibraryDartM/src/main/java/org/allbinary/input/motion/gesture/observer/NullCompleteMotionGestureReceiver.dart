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
// package org.allbinary.input.motion.gesture.observer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface.dart';

class NullCompleteMotionGestureReceiver implements CompleteMotionGestureListenerInterface {
    late LogUtil logUtil;

    // Java field initializers run after the base constructor
    void initFieldsNullCompleteMotionGestureReceiver() {
    this.logUtil = LogUtil.getInstance();
    }
    

    NullCompleteMotionGestureReceiver() {
        this.initFieldsNullCompleteMotionGestureReceiver();
        final CommonStrings commonStrings = CommonStrings.getInstance();
        this.logUtil.putF("Null Gesture Reciever", this, commonStrings.CONSTRUCTOR);
    }
    

    @override
    void onMotionGestureCompleted(BasicArrayList list) {
    }
}

