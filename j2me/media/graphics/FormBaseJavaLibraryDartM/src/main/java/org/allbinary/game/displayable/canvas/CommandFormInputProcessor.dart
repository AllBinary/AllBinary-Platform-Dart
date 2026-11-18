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
import 'package:allbinary/javax/microedition/lcdui/Command.dart';
import 'package:allbinary/org/allbinary/game/commands/GameCommandsFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/InputFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEventFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/SWTUtil.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/MyCanvas.dart';
import 'package:allbinary/org/allbinary/graphics/form/CommandCurrentSelectionForm.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScrollSelectionForm.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLFeatureFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/MotionGestureInput.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/TouchMotionGestureFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/MotionGestureEvent.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/media/audio/PrimaryPlayerQueueFactory.dart';
import 'package:allbinary/org/allbinary/media/audio/SelectSound.dart';
import 'package:allbinary/org/allbinary/thread/PrimaryThreadPool.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/CommandRunnable.dart';

//In general allow scrolling of the menu and selection the center item
class CommandFormInputProcessor extends BasicMenuInputProcessor {
    int MOTION_GESTURE_SOURCE_ID = 0;
    int CLICK_DELAY = 0;
    late TimeDelayHelper clickTimeHelper;
    int DOUBLE_CLICK_DELAY = 0;
    late TimeDelayHelper doubleClickTimeHelper;
    bool isSingleKeyProcessing = false;
    late ScrollSelectionForm form;
    bool hasPressed = false;
    late String PROCESS_COMMAND;
    late String NAME_LABEL;

    // Java field initializers run after the base constructor
    void initFieldsCommandFormInputProcessor() {
    this.MOTION_GESTURE_SOURCE_ID = GameKeyEventFactory.getInstance().MOTION_GESTURE_SOURCE_ID;
    this.CLICK_DELAY = 150;
    this.clickTimeHelper = TimeDelayHelper(this.CLICK_DELAY);
    this.DOUBLE_CLICK_DELAY = 1200;
    this.doubleClickTimeHelper = TimeDelayHelper(this.DOUBLE_CLICK_DELAY);
    this.isSingleKeyProcessing = InputFeatureFactory.getInstance().isSingleKeyProcessing();
    
    this.hasPressed = false;
    this.PROCESS_COMMAND = "processCommand";
    this.NAME_LABEL = " ScrollSelectionForm: ";
    }
    

    CommandFormInputProcessor(BasicArrayList gameKeyEventList, int playerInputId, MyCanvas gameCanvas, ScrollSelectionForm form) : super(gameKeyEventList, playerInputId, gameCanvas) {
        this.initFieldsCommandFormInputProcessor();
        
        this.form = form;
    }
    

    int processInput(int key) {
        if (key == Canvas.LEFT || key == Canvas.RIGHT || key == Canvas.UP || key == Canvas.DOWN) {
            PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance());
            this.form.processInputKey(key);
            return 1;
        } else if (key == Canvas.FIRE) {
            PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance());
            return this.processCommand();
        }
        return 0;
    }
    

    int processCommand() {
        final CommandCurrentSelectionForm commandCurrentSelectionForm = (this.form as CommandCurrentSelectionForm);
        final Command command = commandCurrentSelectionForm.getSelectedCommand();
        this.logUtil.putF(command.toString(), this, this.PROCESS_COMMAND);
        final Features features = Features.getInstance();
        final OpenGLFeatureFactory openGLFeatureFactory = OpenGLFeatureFactory.getInstance();
        if (SWTUtil.isSWT && features.isFeature(openGLFeatureFactory.OPENGL) && command != GameCommandsFactory.getInstance().EXIT_COMMAND) {
            CommandRunnable(this, command).run();
        } else {
            PrimaryThreadPool.getInstance().runTask(CommandRunnable(this, command));
        }
        if (command == GameCommandsFactory.getInstance().QUIT_COMMAND) {
            return -1;
        } else {
            return 1;
        }
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
                key = gameKeyEvent.getKey();
                if (gameKeyEvent.getSourceId() != this.MOTION_GESTURE_SOURCE_ID) {
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
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.PROCESS_INPUT, e);
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
        final TouchMotionGestureFactory touchMotionGestureFactory = TouchMotionGestureFactory.getInstance();
        final MotionGestureInput motionGestureInput = motionGestureEvent.getMotionGesture();
        if (motionGestureInput == touchMotionGestureFactory.RELEASED) {
            final GPoint point = motionGestureEvent.getCurrentPoint();
            if (this.form.isInForm(point)) {
                final int index = this.form.getSelectedIndexForPoint(point);
                if (index != -1) {
                    PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance());
                    if (index == this.form.getSelectedIndex()) {
                        if (this.clickTimeHelper.isTimeTNT()) {
                            this.processCommand();
                        }
                    } else {
                        this.form.setSelectedIndex(index);
                    }
                } else {
                }
            }
            if (this.hasPressed) {
                if (!this.doubleClickTimeHelper.isTimeTNT()) {
                    this.logUtil.putF("Double Press", this, this.gameInputStrings.PROCESS_MOTION_INPUT);
                    this.processCommand();
                }
                this.doubleClickTimeHelper.delay = this.DOUBLE_CLICK_DELAY;
                this.doubleClickTimeHelper.setStartTimeTNT();
            }
            this.hasPressed = false;
        } else if (motionGestureInput == touchMotionGestureFactory.PRESSED) {
            this.doubleClickTimeHelper.delay = 0;
            this.hasPressed = true;
        }
    }
    

    @override
    String toString() {
        return StringMaker().append(super.toString()).append(this.NAME_LABEL).append(this.form.toString()).toString();
    }
}

