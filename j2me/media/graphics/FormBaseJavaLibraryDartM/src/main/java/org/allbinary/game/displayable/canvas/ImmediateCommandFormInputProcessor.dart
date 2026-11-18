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
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScrollSelectionForm.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/MotionGestureEvent.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/CommandFormInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameCommandCanvas.dart';

class ImmediateCommandFormInputProcessor extends CommandFormInputProcessor {
    late TimeDelayHelper timeHelper;
    late GameCommandCanvas gameCommandCanvas;

    // Java field initializers run after the base constructor
    void initFieldsImmediateCommandFormInputProcessor() {
    this.timeHelper = TimeDelayHelper(25);
    
    }
    

    ImmediateCommandFormInputProcessor(BasicArrayList gameKeyEventList, int playerInputId, GameCommandCanvas gameCommandCanvas, ScrollSelectionForm form) : super(gameKeyEventList, playerInputId, gameCommandCanvas, form) {
        this.initFieldsImmediateCommandFormInputProcessor();
        
        this.gameCommandCanvas = gameCommandCanvas;
    }
    

    @override
    void onPressGameKeyEvent(GameKeyEvent gameKeyEvent) {
        try {
            super.onPressGameKeyEvent(gameKeyEvent);
            if (this.timeHelper.isTimeTNT()) {
                this.processInputList();
                this.gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas());
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ON_PRESS_GAME_KEY, e);
            }
        }
    }
    

    @override
    void onDownGameKeyEvent(GameKeyEvent gameKeyEvent) {
        try {
            super.onDownGameKeyEvent(gameKeyEvent);
            if (this.timeHelper.isTimeTNT()) {
                this.processInputList();
                this.gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas());
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ON_DOWN_GAME_KEY, e);
            }
        }
    }
    

    @override
    void onUpGameKeyEvent(GameKeyEvent gameKeyEvent) {
        try {
            super.onUpGameKeyEvent(gameKeyEvent);
            if (this.timeHelper.isTimeTNT()) {
                this.processInputList();
                this.gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas());
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ON_UP_GAME_KEY, e);
            }
        }
    }
    

    @override
    void onMotionGestureEvent(MotionGestureEvent motionGestureEvent) {
        try {
            super.onMotionGestureEvent(motionGestureEvent);
            if (this.timeHelper.isTimeTNT()) {
                this.processInputList();
                this.gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas());
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "onMotionGestureEvent", e);
            }
        }
    }
}

