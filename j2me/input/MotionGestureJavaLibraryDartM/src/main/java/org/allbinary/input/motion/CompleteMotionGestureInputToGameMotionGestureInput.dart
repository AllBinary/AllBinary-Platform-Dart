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
import 'package:allbinary/org/allbinary/input/motion/gesture/TouchMotionGestureFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/touch/action/DiagonalDownLeftTouchInputToGameKeyEventAction.dart';
import 'package:allbinary/org/allbinary/input/motion/touch/action/DiagonalDownRightTouchInputToGameKeyEventAction.dart';
import 'package:allbinary/org/allbinary/input/motion/touch/action/DiagonalUpLeftTouchInputToGameKeyEventAction.dart';
import 'package:allbinary/org/allbinary/input/motion/touch/action/DiagonalUpRightTouchInputToGameKeyEventAction.dart';
import 'package:allbinary/org/allbinary/input/motion/touch/action/DownTouchInputToGameKeyEventAction.dart';
import 'package:allbinary/org/allbinary/input/motion/touch/action/LeftTouchInputToGameKeyEventAction.dart';
import 'package:allbinary/org/allbinary/input/motion/touch/action/ReleaseTouchInputToGameKeyEventAction.dart';
import 'package:allbinary/org/allbinary/input/motion/touch/action/RightTouchInputToGameKeyEventAction.dart';
import 'package:allbinary/org/allbinary/input/motion/touch/action/UpTouchInputToGameKeyEventAction.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class CompleteMotionGestureInputToGameMotionGestureInput {
    static final CompleteMotionGestureInputToGameMotionGestureInput instance = CompleteMotionGestureInputToGameMotionGestureInput();
    late LogUtil logUtil;

    // Java field initializers run after the base constructor
    void initFieldsCompleteMotionGestureInputToGameMotionGestureInput() {
    this.logUtil = LogUtil.getInstance();
    }

    CompleteMotionGestureInputToGameMotionGestureInput() {
        this.initFieldsCompleteMotionGestureInputToGameMotionGestureInput();
    }
    

    static CompleteMotionGestureInputToGameMotionGestureInput getInstance() {
        return CompleteMotionGestureInputToGameMotionGestureInput.instance;
    }
    

    void init() {
        final CommonStrings commonStrings = CommonStrings.getInstance();
        try {
            PreLogUtil.put("Compound Motion Gestures", this, commonStrings.INIT);
            final MotionGestureConfiguration motionGestureConfiguration = MotionGestureConfigurationFactory.getInstance();
            final TouchMotionGestureFactory touchMotionGestureFactory = TouchMotionGestureFactory.getInstance();
            BasicArrayList list = BasicArrayListD();
            list.add(touchMotionGestureFactory.DIAGONAL_DOWN_LEFT);
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalDownLeftTouchInputToGameKeyEventAction.getInstance());
            list = BasicArrayListD();
            list.add(touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT);
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalDownRightTouchInputToGameKeyEventAction.getInstance());
            list = BasicArrayListD();
            list.add(touchMotionGestureFactory.DIAGONAL_UP_LEFT);
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalUpLeftTouchInputToGameKeyEventAction.getInstance());
            list = BasicArrayListD();
            list.add(touchMotionGestureFactory.DIAGONAL_UP_RIGHT);
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalUpRightTouchInputToGameKeyEventAction.getInstance());
            list = BasicArrayListD();
            list.add(touchMotionGestureFactory.LEFT);
            motionGestureConfiguration.addMotionGestureAction(list, LeftTouchInputToGameKeyEventAction.getInstance());
            list = BasicArrayListD();
            list.add(touchMotionGestureFactory.RIGHT);
            motionGestureConfiguration.addMotionGestureAction(list, RightTouchInputToGameKeyEventAction.getInstance());
            list = BasicArrayListD();
            list.add(touchMotionGestureFactory.DOWN);
            motionGestureConfiguration.addMotionGestureAction(list, DownTouchInputToGameKeyEventAction.getInstance());
            list = BasicArrayListD();
            list.add(touchMotionGestureFactory.UP);
            motionGestureConfiguration.addMotionGestureAction(list, UpTouchInputToGameKeyEventAction.getInstance());
            list = BasicArrayListD();
            list.add(touchMotionGestureFactory.RELEASED);
            motionGestureConfiguration.addMotionGestureAction(list, ReleaseTouchInputToGameKeyEventAction.getInstance());
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.INIT, e);
            }
        }
    }
}

