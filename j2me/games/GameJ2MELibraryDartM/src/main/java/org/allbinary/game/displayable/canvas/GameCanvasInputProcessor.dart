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
import 'package:allbinary/org/allbinary/game/input/GameKey.dart';
import 'package:allbinary/org/allbinary/game/input/GameKeyEventSourceInterface.dart';
import 'package:allbinary/org/allbinary/game/input/GameKeyFactory.dart';
import 'package:allbinary/org/allbinary/game/input/InputProcessor.dart';
import 'package:allbinary/org/allbinary/game/input/PlatformInputMappingFactory.dart';
import 'package:allbinary/org/allbinary/game/input/event/DownGameKeyEventHandler.dart';
import 'package:allbinary/org/allbinary/game/input/event/DownKeyEventHandler.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEventFactory.dart';
import 'package:allbinary/org/allbinary/game/input/event/UpGameKeyEventHandler.dart';
import 'package:allbinary/org/allbinary/game/input/mapping/InputToGameKeyMapping.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.dart';

class GameCanvasInputProcessor extends InputProcessor {
    late LogUtil logUtil;
    late AllBinaryGameCanvas allBinaryGameCanvas;
    late DownGameKeyEventHandler downGameKeyEventHandler;
    late UpGameKeyEventHandler upGameKeyEventHandler;
    late DownKeyEventHandler downKeyEventHandler;
    late SmallIntegerSingletonFactory smallIntegerSingletonFactory;
    late InputToGameKeyMapping inputToGameKeyMapping;
    late GameKey NONE;
    late GameKeyEventFactory gameKeyEventFactory;

    // Java field initializers run after the base constructor
    void initFieldsGameCanvasInputProcessor() {
    this.logUtil = LogUtil.getInstance();
    
    this.downGameKeyEventHandler = DownGameKeyEventHandler.getInstance();
    this.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance();
    this.downKeyEventHandler = DownKeyEventHandler.getInstance();
    this.smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
    this.inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping();
    this.NONE = GameKeyFactory.getInstance().NONE;
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance();
    }
    

    GameCanvasInputProcessor(AllBinaryGameCanvas allBinaryGameCanvas) {
        this.initFieldsGameCanvasInputProcessor();
        this.allBinaryGameCanvas = allBinaryGameCanvas;
        this.inputToGameKeyMapping.init(this.allBinaryGameCanvas);
    }
    

    @override
    void keyPressedByDevice(int keyCode, int deviceId) {
        try {
            final GameKey gameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this.allBinaryGameCanvas, keyCode);
            if (!identical(gameKey, this.NONE)) {
                final GameKeyEvent gameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this.allBinaryGameCanvas, gameKey);
                this.downGameKeyEventHandler.fireEvent(gameKeyEvent);
                this.downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            } else {
                this.logUtil.putF(StringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.ADD_KEY_EVENT);
            }
            final int keyCodeAsInteger = this.smallIntegerSingletonFactory.getAtNoThrow(keyCode);
            this.downKeyEventHandler.fireEventI(keyCodeAsInteger);
            this.downKeyEventHandler.getInstanceForDevice(deviceId).fireEventI(keyCodeAsInteger);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.ADD_KEY_EVENT, e);
            }
        }
    }
    

    @override
    void keyReleasedByDevice(Canvas canvas, int keyCode, int deviceId) {
        this.removeGameKeyEvent(canvas, keyCode, deviceId, false);
    }
    

    void removeGameKeyEvent(Canvas canvas, int keyCode, int deviceId, bool repeated) {
        try {
            final GameKey gameKey = this.inputToGameKeyMapping.getInstanceForCanvas(canvas, keyCode);
            if (!identical(gameKey, this.NONE)) {
                final GameKeyEventSourceInterface gameKeyEventSourceInterface = (canvas as GameKeyEventSourceInterface);
                final GameKeyEvent gameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(gameKeyEventSourceInterface, gameKey);
                this.upGameKeyEventHandler.fireEvent(gameKeyEvent);
                this.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            } else {
                this.logUtil.putF(StringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.REMOVE_KEY_EVENT);
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.REMOVE_KEY_EVENT, e);
            }
        }
    }
}

