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
import 'package:allbinary/org/allbinary/game/input/event/DownGameKeyEventHandler.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';
import 'package:allbinary/org/allbinary/game/input/event/UpGameKeyEventHandler.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/math/RectangleCollisionUtil.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/input/motion/button/BasicTouchInputFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonInput.dart';
import 'package:allbinary/org/allbinary/input/motion/button/CurrentlyPressedTouchButtonSingleton.dart';
import 'package:allbinary/org/allbinary/input/motion/button/ReleaseHelper.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchScreenFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/button/MultitouchReleaseHelper.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButton.dart';

class TouchButtonRecognizer {
    late LogUtil logUtil;
    late RectangleCollisionUtil rectangleCollisionUtil;
    late UpGameKeyEventHandler upGameKeyEventHandler;
    late DownGameKeyEventHandler downGameKeyEventHandler;
    late TouchButtonInput lastPressedTouchButtonInput;
    late CurrentlyPressedTouchButtonSingleton currentlyPressedTouchButtonSingleton;
    late ReleaseHelper releaseHelper;

    // Java field initializers run after the base constructor
    void initFieldsTouchButtonRecognizer() {
    this.logUtil = LogUtil.getInstance();
    this.rectangleCollisionUtil = RectangleCollisionUtil.getInstance();
    this.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance();
    this.downGameKeyEventHandler = DownGameKeyEventHandler.getInstance();
    this.lastPressedTouchButtonInput = BasicTouchInputFactory.getInstance().NONE;
    this.currentlyPressedTouchButtonSingleton = CurrentlyPressedTouchButtonSingleton.getInstance();
    
    }
    

    TouchButtonRecognizer() {
        this.initFieldsTouchButtonRecognizer();
        if (TouchScreenFactory.getInstance().isMultiTouch()) {
            this.releaseHelper = MultitouchReleaseHelper(this);
        } else {
            this.releaseHelper = ReleaseHelper(this);
        }
    }
    

    void processRelease(TouchButtonInput touchButtonInput, int deviceId) {
        this.releaseHelper.release(touchButtonInput, deviceId);
        final GameKeyEvent gameKeyEvent = touchButtonInput.getGameKeyEvent();
        this.upGameKeyEventHandler.fireEvent(gameKeyEvent);
        this.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
        this.currentlyPressedTouchButtonSingleton.remove(touchButtonInput);
    }
    

    bool releaseTouchButtonInput(int x, int y, int deviceId) {
        TouchButtonInput touchButtonInput = this.lastPressedTouchButtonInput;
        if (this.currentlyPressedTouchButtonSingleton.contains(touchButtonInput)) {
            this.lastPressedTouchButtonInput = BasicTouchInputFactory.getInstance().NONE;
            this.processRelease(touchButtonInput, deviceId);
            return true;
        } else {
            final BasicArrayList list = TouchButtonFactory.getInstance().getList();
            late Rectangle rectangle;
            late GPoint point;
            late TouchButton touchButton;
            for (int index = list.size() - 1; index >= 0; index--) {
                touchButton = (list.objectArray[index]! as TouchButton);
                rectangle = touchButton.getRectangle();
                point = rectangle.getPoint();
                if (this.rectangleCollisionUtil.isInside(point.getX(), point.getY(), rectangle.getMaxX(), rectangle.getMaxY(), x, y)) {
                    touchButtonInput = touchButton.getTouchButtonInput();
                    this.processRelease(touchButtonInput, deviceId);
                    return true;
                }
            }
        }
        return false;
    }
    

    bool pressTouchButtonInput(int x, int y, int deviceId) {
        final BasicArrayList list = TouchButtonFactory.getInstance().getList();
        late Rectangle rectangle;
        late GPoint point;
        late TouchButton touchButton;
        late TouchButtonInput touchButtonInput;
        late GameKeyEvent gameKeyEvent;
        for (int index = list.size() - 1; index >= 0; index--) {
            touchButton = (list.objectArray[index]! as TouchButton);
            rectangle = touchButton.getRectangle();
            point = rectangle.getPoint();
            if (this.rectangleCollisionUtil.isInside(point.getX(), point.getY(), rectangle.getMaxX(), rectangle.getMaxY(), x, y)) {
                touchButtonInput = touchButton.getTouchButtonInput();
                if (!this.currentlyPressedTouchButtonSingleton.contains(touchButtonInput)) {
                    this.releaseHelper.release(touchButtonInput, deviceId);
                    this.lastPressedTouchButtonInput = touchButtonInput;
                    this.currentlyPressedTouchButtonSingleton.add(touchButtonInput);
                    gameKeyEvent = touchButtonInput.getGameKeyEvent();
                    this.downGameKeyEventHandler.fireEvent(gameKeyEvent);
                    this.downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
                }
                return true;
            }
        }
        return false;
    }
}

