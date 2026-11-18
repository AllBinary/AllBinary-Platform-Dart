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
import 'package:allbinary/org/allbinary/android/input/motion/AnalogLocationInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/input/GameInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/input/GameKeyEventSourceInterface.dart';
import 'package:allbinary/org/allbinary/game/input/GameKeyFactory.dart';
import 'package:allbinary/org/allbinary/game/input/analog/AnalogLocationInput.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEventFactory.dart';
import 'package:allbinary/org/allbinary/graphics/CustomGPoint.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class DirectionalAnalogLocationInputProcessor extends AnalogLocationInputProcessor implements GameKeyEventSourceInterface {
    late LogUtil logUtil;
    late List<GameInputProcessor?> inputProcessorArray;
    late GameKeyFactory gameKeyFactory;
    late GameKeyEvent leftGameKeyEvent;
    late GameKeyEvent rightGameKeyEvent;
    late GameKeyEvent upGameKeyEvent;
    late GameKeyEvent downGameKeyEvent;
    late GameKeyEvent leftTriggerGameKeyEvent;
    late GameKeyEvent rightTriggerGameKeyEvent;

    // Java field initializers run after the base constructor
    void initFieldsDirectionalAnalogLocationInputProcessor() {
    this.logUtil = LogUtil.getInstance();
    
    this.gameKeyFactory = GameKeyFactory.getInstance();
    this.leftGameKeyEvent = GameKeyEvent.NONE;
    this.rightGameKeyEvent = GameKeyEvent.NONE;
    this.upGameKeyEvent = GameKeyEvent.NONE;
    this.downGameKeyEvent = GameKeyEvent.NONE;
    this.leftTriggerGameKeyEvent = GameKeyEvent.NONE;
    this.rightTriggerGameKeyEvent = GameKeyEvent.NONE;
    }
    

    DirectionalAnalogLocationInputProcessor(List<GameInputProcessor?> inputProcessorArray) {
        this.initFieldsDirectionalAnalogLocationInputProcessor();
        this.inputProcessorArray = inputProcessorArray;
        try {
            this.leftGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.LEFT);
            this.rightGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.RIGHT);
            this.upGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.UP);
            this.downGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.DOWN);
            this.leftTriggerGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.KEY_NUM0);
            this.rightTriggerGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.KEY_NUM5);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
            }
        }
    }
    

    @override
    void process(AllBinaryLayerManager allbinaryLayerManager, AnalogLocationInput analogLocationInput) {
        try {
            late CustomGPoint customGPoint;
            customGPoint = analogLocationInput.getCustomGPoint();
            int x = customGPoint.getX();
            int y = customGPoint.getY();
            int leftTrigger = analogLocationInput.getLeftTrigger();
            int rightTrigger = analogLocationInput.getRightTrigger();
            if (x < 0) {
                this.inputProcessorArray[this.leftGameKeyEvent.getKey()]!.processAnalog(allbinaryLayerManager, this.leftGameKeyEvent, x);
            } else if (x > 0) {
                this.inputProcessorArray[this.rightGameKeyEvent.getKey()]!.processAnalog(allbinaryLayerManager, this.rightGameKeyEvent, x);
            }
            if (y < 0) {
                this.inputProcessorArray[this.downGameKeyEvent.getKey()]!.processAnalog(allbinaryLayerManager, this.downGameKeyEvent, y);
            } else if (y > 0) {
                this.inputProcessorArray[this.upGameKeyEvent.getKey()]!.processAnalog(allbinaryLayerManager, this.upGameKeyEvent, y);
            }
            if (leftTrigger > 0) {
                this.inputProcessorArray[this.leftTriggerGameKeyEvent.getKey()]!.processAnalog(allbinaryLayerManager, this.leftTriggerGameKeyEvent, leftTrigger);
            }
            if (rightTrigger > 0) {
                this.inputProcessorArray[this.rightTriggerGameKeyEvent.getKey()]!.processAnalog(allbinaryLayerManager, this.rightTriggerGameKeyEvent, rightTrigger);
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put("Unable to process analog input", this, commonStrings.PROCESS, e);
            }
        }
    }
    

    @override
    int getSourceId() {
        return 0;
    }
}

