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
import 'package:allbinary/org/allbinary/input/motion/gesture/MotionGestureInput.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/TouchMotionGestureFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/input/CompleteMotionGestureInputInterface.dart';

class CompleteMotionGestureInputEvent extends AllBinaryEventObject implements CompleteMotionGestureInputInterface {
    late LogUtil logUtil;
    late String name;
    late MotionGestureInput motionGestureInput;

    // Java field initializers run after the base constructor
    void initFieldsCompleteMotionGestureInputEvent() {
    this.logUtil = LogUtil.getInstance();
    this.name = StringUtil.getInstance().EMPTY_STRING;
    this.motionGestureInput = TouchMotionGestureFactory.getInstance().NO_MOTION;
    }
    

    CompleteMotionGestureInputEvent(String name, MotionGestureInput motionGestureInput) : super(motionGestureInput) {
        this.initFieldsCompleteMotionGestureInputEvent();
        
        this.setName(name);
        try {
            this.setMotionGestureInput(motionGestureInput);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "InputToGameKeyEventAction", e);
            }
        }
    }
    

    void setName(String name) {
        this.name = name;
    }
    

    @override
    String getName() {
        return this.name;
    }
    

    void setMotionGestureInput(MotionGestureInput motionGestureInput) {
        this.motionGestureInput = motionGestureInput;
    }
    

    MotionGestureInput getMotionGestureInput() {
        return this.motionGestureInput;
    }
}

