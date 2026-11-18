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
// package org.allbinary.input

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/input/motion/AllMotionRecognizer.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/GameMotionGestureListener.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/MotionGestureReceiveInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

//TouchJ2ME
class TouchJ2ME {
    late LogUtil logUtil;
    int DEVICE_ID = 0;
    late AllMotionRecognizer motionRecognizer;

    // Java field initializers run after the base constructor
    void initFieldsTouchJ2ME() {
    this.logUtil = LogUtil.getInstance();
    this.DEVICE_ID = 0;
    this.motionRecognizer = AllMotionRecognizer();
    }
    

    TouchJ2ME() {
        this.initFieldsTouchJ2ME();
        BasicMotionGesturesHandler motionGesturesHandler = this.motionRecognizer.getMotionGestureRecognizer().getMotionGesturesHandler();
        motionGesturesHandler.addListenerInterface(GameMotionGestureListener(MotionGestureReceiveInterfaceFactory.getInstance()));
    }
    

    void pointerDragged(int x, int y) {
        try {
            this.motionRecognizer.processDraggedMotionEvent(x, y, this.DEVICE_ID, 0);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "pointerDragged", e);
            }
        }
    }
    

    void pointerPressed(int x, int y) {
        try {
            this.motionRecognizer.processStartMotionEvent(x, y, this.DEVICE_ID, 0);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "pointerPressed", e);
            }
        }
    }
    

    void pointerReleased(int x, int y) {
        try {
            this.motionRecognizer.processEndMotionEvent(x, y, this.DEVICE_ID, 0);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "pointerReleased", e);
            }
        }
    }
}

