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
import 'package:allbinary/org/allbinary/game/input/CompleteMotionGestureInputEvent.dart';
import 'package:allbinary/org/allbinary/game/input/CompleteMotionGestureInputEventHandler.dart';
import 'package:allbinary/org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface.dart';
import 'package:allbinary/org/allbinary/game/input/GameKey.dart';
import 'package:allbinary/org/allbinary/game/input/mapping/InputMappingInterface.dart';
import 'package:allbinary/org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/paint/ProcessPaintable.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/MotionGestureInput.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/TouchMotionGestureFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/EventStrings.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonsMappingPaintable.dart';

class TouchButtonsPaintableComposite extends ProcessPaintable implements CompleteMotionGestureInputEventListenerInterface {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late InputMappingInterface inputMappingInterface;
    late TouchButtonsMappingPaintable touchButtonsPaintable;
    late TimeDelayHelper timeHelper;
    bool released = false;
    late String METHOD_NAME;
    late String RELEASE;
    late String FAST_REPEAT;
    late String IGNORE;

    // Java field initializers run after the base constructor
    void initFieldsTouchButtonsPaintableComposite() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    this.timeHelper = TimeDelayHelper(250);
    this.released = true;
    this.METHOD_NAME = "onCompleteMotionGestureInputEvent";
    this.RELEASE = "Ignoring: MotionGestureInput Release";
    this.FAST_REPEAT = "Ignoring: MotionGestureInput Repeated To Quickly";
    this.IGNORE = "Ignoring: Until Released";
    }
    

    TouchButtonsPaintableComposite(InputMappingInterface inputMappingInterface, BasicColor basicColor) {
        this.initFieldsTouchButtonsPaintableComposite();
        this.inputMappingInterface = inputMappingInterface;
        CompleteMotionGestureInputEventHandler.getInstance().addListenerInterface(this);
        this.touchButtonsPaintable = TouchButtonsMappingPaintable(basicColor);
    }
    

    @override
    void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    @override
    void onCompleteMotionGestureInputEvent(CompleteMotionGestureInputEvent completeMotionGestureInputEvent) {
        try {
            this.logUtil.putF(this.commonStrings.START, this, "onCompleteMotionGestureInputEvent");
            final TouchMotionGestureFactory touchMotionGestureFactory = TouchMotionGestureFactory.getInstance();
            final GameKeyCompleteMotionGestureInputEvent gameKeyCompleteMotionGestureInputEvent = (completeMotionGestureInputEvent as GameKeyCompleteMotionGestureInputEvent);
            final GameKey gameKey = gameKeyCompleteMotionGestureInputEvent.getGameKey();
            final MotionGestureInput motionGestureInput = completeMotionGestureInputEvent.getMotionGestureInput();
            if (motionGestureInput == touchMotionGestureFactory.RELEASED) {
                this.logUtil.putF(this.RELEASE, this, this.METHOD_NAME);
                this.released = true;
                return;
            }
            if (motionGestureInput == TouchMotionGestureFactory.getInstance().NO_MOTION && !this.timeHelper.isTimeTNT()) {
                this.logUtil.putF(this.FAST_REPEAT, this, this.METHOD_NAME);
                return;
            }
            if (!this.released) {
                this.logUtil.putF(this.IGNORE, this, this.METHOD_NAME);
                return;
            }
            this.released = false;
            this.logUtil.putF(StringMaker().append("GameKey: ").append(StringUtil.getInstance().toString1(gameKey)).append(" MotionGestureInput: ").append(StringUtil.getInstance().toString1(motionGestureInput)).toString(), this, this.METHOD_NAME);
            this.inputMappingInterface.processInputMapping(gameKey, motionGestureInput);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.METHOD_NAME, e);
            }
        }
    }
    

    @override
    void process() {
        CompleteMotionGestureInputEventHandler.getInstance().removeListener(this);
    }
}

