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
// package org.allbinary.game.displayable.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/org/allbinary/game/input/GameInputStrings.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/MyCanvas.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/MotionGestureInput.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/TouchMotionGestureFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/MotionGestureEvent.dart';
import 'package:allbinary/org/allbinary/math/RectangleCollisionUtil.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.dart';

class PopupMenuInputProcessor extends BasicMenuInputProcessor {
    late RectangleCollisionUtil rectangleCollisionUtil;
    int CLICK_DELAY = 0;
    late TimeDelayHelper clickTimeHelper;
    late Rectangle rectangle;

    // Java field initializers run after the base constructor
    void initFieldsPopupMenuInputProcessor() {
    this.rectangleCollisionUtil = RectangleCollisionUtil.getInstance();
    this.CLICK_DELAY = 120;
    this.clickTimeHelper = TimeDelayHelper(this.CLICK_DELAY);
    
    }
    

    PopupMenuInputProcessor(BasicArrayList gameKeyEventList, int playerInputId, MyCanvas gameCanvas, Rectangle rectangle) : super(gameKeyEventList, playerInputId, gameCanvas) {
        this.initFieldsPopupMenuInputProcessor();
        
        this.rectangle = rectangle;
    }
    

    void init(Rectangle rectangle) {
        this.rectangle = rectangle;
    }
    

    int processInput(int key) {
        if (key == Canvas.KEY_STAR) {
            final AllBinaryGameCanvas gameCanvas = (this.getCanvas() as AllBinaryGameCanvas);
            gameCanvas.toggleMenu();
            return 1;
        }
        return 0;
    }
    

    @override
    int processInputList() {
        try {
            final int motionInputsIndex = this.processMotionInputs();
            final BasicArrayList list = this.getGameKeyEventList();
            final int size = list.size();
            int key = 0;
            late GameKeyEvent gameKeyEvent;
            for (int index = 0; index < size; index++) {
                gameKeyEvent = (list.objectArray[index]! as GameKeyEvent);
                if (gameKeyEvent != null) {
                    key = gameKeyEvent.getKey();
                    if (this.processInput(key) == 1) {
                        break;
                    }
                }
            }
            this.clear();
            if (size > 0 || motionInputsIndex >= 0) {
                return 1;
            } else {
                return -1;
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, GameInputStrings.getInstance().PROCESS_INPUT, e);
            return -1;
            }
        }
    }
    

    int processMotionInputs() {
        final int lastIndex = this.motionGestureEventList.size() - 1;
        if (lastIndex >= 0) {
            final MotionGestureEvent motionGestureEvent = (this.motionGestureEventList.objectArray[lastIndex]! as MotionGestureEvent);
            this.processMotionInput(motionGestureEvent);
        }
        this.motionGestureEventList.clear();
        return lastIndex;
    }
    

    void processMotionInput(MotionGestureEvent motionGestureEvent) {
        if (motionGestureEvent == null) {
            this.logUtil.putF("Exception: Bug", this, this.gameInputStrings.PROCESS_MOTION_INPUT);
            return;
        }
        final TouchMotionGestureFactory touchMotionGestureFactory = TouchMotionGestureFactory.getInstance();
        final MotionGestureInput motionGestureInput = motionGestureEvent.getMotionGesture();
        if (motionGestureInput == touchMotionGestureFactory.RELEASED) {
            GPoint point = motionGestureEvent.getCurrentPoint();
            GPoint rectPoint = this.rectangle.getPoint();
            if (this.rectangleCollisionUtil.isInside(rectPoint.getX(), rectPoint.getY(), this.rectangle.getMaxX() + 20, this.rectangle.getMaxY(), point.getX(), point.getY())) {
                if (this.clickTimeHelper.isTimeTNT()) {
                    final AllBinaryGameCanvas gameCanvas = (this.getCanvas() as AllBinaryGameCanvas);
                    gameCanvas.toggleMenu();
                }
            }
        }
    }
}

