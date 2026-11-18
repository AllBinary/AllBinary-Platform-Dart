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

class GameMotionGestureListener implements MotionGestureEventListener {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late BasicArrayList motionGestureCollection;
    late BasicArrayList touchGestureCollection;
    late CompleteMotionGestureListenerInterface signed;

    // Java field initializers run after the base constructor
    void initFieldsGameMotionGestureListener() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.motionGestureCollection = BasicArrayListD();
    this.touchGestureCollection = BasicArrayListD();
    
    }
    

    GameMotionGestureListener(CompleteMotionGestureListenerInterface signed) {
        this.initFieldsGameMotionGestureListener();
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
        this.touchGestureCollection.add(ev.getMotionGesture());
    }
    

    @override
    void released(MotionGestureEvent ev) {
        try {
            this.touchGestureCollection.add(ev.getMotionGesture());
            this.signed.onMotionGestureCompleted(this.touchGestureCollection);
            this.touchGestureCollection.clear();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final StringMaker stringBuffer = StringMaker();
            stringBuffer.append(this.commonStrings.EXCEPTION_LABEL);
            stringBuffer.append(StringUtil.getInstance().toString1(ev.getMotionGesture()));
            this.logUtil.put(stringBuffer.toString(), this, "release", e);
            }
        }
    }
    

    @override
    void onScrolledMotionGestureEvent(MotionGestureEvent motionGestureEvent) {
    }
    

    @override
    void onMotionGestureEvent(MotionGestureEvent ev) {
        try {
            MotionGestureInput motionGestureInput = ev.getMotionGesture();
            if (motionGestureInput == TouchMotionGestureFactory.getInstance().PRESSED) {
                this.onPressedMotionGestureEvent(ev);
            } else if (motionGestureInput == TouchMotionGestureFactory.getInstance().RELEASED) {
                this.released(ev);
            } else {
                this.motionGestureCollection.add(motionGestureInput);
                this.signed.onMotionGestureCompleted(this.motionGestureCollection);
                this.motionGestureCollection.clear();
                this.touchGestureCollection.clear();
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            StringMaker stringBuffer = StringMaker();
            stringBuffer.append(this.commonStrings.EXCEPTION_LABEL);
            stringBuffer.append(StringUtil.getInstance().toString1(ev.getMotionGesture()));
            this.logUtil.put(stringBuffer.toString(), this, "onMotionGestureEvent", e);
            }
        }
    }
}

