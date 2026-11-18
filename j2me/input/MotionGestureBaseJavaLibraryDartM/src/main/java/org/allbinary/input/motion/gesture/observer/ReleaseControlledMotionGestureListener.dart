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
import 'package:allbinary/org/allbinary/input/motion/gesture/MotionGestureInput.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/TouchMotionGestureFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/MotionGestureEventListener.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/MotionGestureEvent.dart';

class ReleaseControlledMotionGestureListener implements MotionGestureEventListener {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late MotionGestureInput currentMotionGesture;
    bool isMouseGestureOccurring = false;
    late BasicArrayList motionGestureCollection;
    late CompleteMotionGestureListenerInterface signed;

    // Java field initializers run after the base constructor
    void initFieldsReleaseControlledMotionGestureListener() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.currentMotionGesture = TouchMotionGestureFactory.getInstance().NO_MOTION;
    this.isMouseGestureOccurring = false;
    this.motionGestureCollection = BasicArrayListD();
    
    }
    

    ReleaseControlledMotionGestureListener(CompleteMotionGestureListenerInterface signed) {
        this.initFieldsReleaseControlledMotionGestureListener();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.signed = signed;
    }
    

    @override
    void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
    

    @override
    void onUpMotionGestureEvent(MotionGestureEvent ev) {
        this.onMotionGestureEvent(ev);
    }
    

    @override
    void onDownMotionGestureEvent(MotionGestureEvent ev) {
        this.onMotionGestureEvent(ev);
    }
    

    @override
    void onLeftMotionGestureEvent(MotionGestureEvent ev) {
        this.onMotionGestureEvent(ev);
    }
    

    @override
    void onRightMotionGestureEvent(MotionGestureEvent ev) {
        this.onMotionGestureEvent(ev);
    }
    

    @override
    void onDiagonalDownRightMotionGestureEvent(MotionGestureEvent ev) {
        this.onMotionGestureEvent(ev);
    }
    

    @override
    void onDiagonalDownLeftMotionGestureEvent(MotionGestureEvent ev) {
        this.onMotionGestureEvent(ev);
    }
    

    @override
    void onDiagonalUpRightMotionGestureEvent(MotionGestureEvent ev) {
        this.onMotionGestureEvent(ev);
    }
    

    @override
    void onDiagonalUpLeftMotionGestureEvent(MotionGestureEvent ev) {
        this.onMotionGestureEvent(ev);
    }
    

    @override
    void onPressedMotionGestureEvent(MotionGestureEvent ev) {
        this.isMouseGestureOccurring = true;
        this.currentMotionGesture = TouchMotionGestureFactory.getInstance().NO_MOTION;
        this.onMotionGestureEvent(ev);
    }
    

    @override
    void onScrolledMotionGestureEvent(MotionGestureEvent motionGestureEvent) {
    }
    

    @override
    void released(MotionGestureEvent ev) {
        try {
            if (this.isMouseGestureOccurring == false) {
                return;
            }
            this.isMouseGestureOccurring = false;
            this.signed.onMotionGestureCompleted(this.motionGestureCollection);
            this.motionGestureCollection.clear();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(StringMaker().append(this.commonStrings.EXCEPTION_LABEL).append(StringUtil.getInstance().toString1(ev.getMotionGesture())).toString(), this, "release", e);
            }
        }
    }
    

    @override
    void onMotionGestureEvent(MotionGestureEvent ev) {
        if (this.isMouseGestureOccurring == false) {
            return;
        }
        MotionGestureInput motionGestureInput = ev.getMotionGesture();
        if (motionGestureInput == TouchMotionGestureFactory.getInstance().PRESSED) {
            this.onPressedMotionGestureEvent(ev);
        } else if (motionGestureInput == TouchMotionGestureFactory.getInstance().RELEASED) {
            this.released(ev);
        } else {
            if (!identical(this.currentMotionGesture, motionGestureInput)) {
                this.currentMotionGesture = motionGestureInput;
                this.motionGestureCollection.add(ev.getMotionGesture());
            }
        }
    }
}

