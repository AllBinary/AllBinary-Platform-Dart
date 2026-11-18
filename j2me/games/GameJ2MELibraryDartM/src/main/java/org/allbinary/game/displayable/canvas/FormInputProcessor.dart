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
import 'package:allbinary/org/allbinary/game/input/Input.dart';
import 'package:allbinary/org/allbinary/game/input/InputFactory.dart';
import 'package:allbinary/org/allbinary/game/input/InputProcessor.dart';
import 'package:allbinary/org/allbinary/game/input/PlatformKeyFactory.dart';
import 'package:allbinary/org/allbinary/game/input/event/DownKeyEventHandler.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEventFactory.dart';
import 'package:allbinary/org/allbinary/game/input/event/UpGameKeyEventHandler.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.dart';

class FormInputProcessor extends InputProcessor {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late GameKeyEventFactory gameKeyEventFactory;
    late DownKeyEventHandler downKeyEventHandler;
    late UpGameKeyEventHandler upGameKeyEventHandler;
    late InputFactory inputFactory;
    late PlatformKeyFactory platformKeyFactory;
    late AllBinaryGameCanvas allBinaryGameCanvas;

    // Java field initializers run after the base constructor
    void initFieldsFormInputProcessor() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance();
    this.downKeyEventHandler = DownKeyEventHandler.getInstance();
    this.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance();
    this.inputFactory = InputFactory.getInstance();
    this.platformKeyFactory = PlatformKeyFactory.getInstance();
    
    }
    

    FormInputProcessor(AllBinaryGameCanvas allBinaryGameCanvas) {
        this.initFieldsFormInputProcessor();
        this.allBinaryGameCanvas = allBinaryGameCanvas;
    }
    

    @override
    void keyPressedByDevice(int keyCode, int deviceId) {
        try {
            PreLogUtil.put(StringMaker().append(this.inputFactory.KEY_CODE_LABEL).appendint(keyCode).append(CommonSeps.getInstance().SPACE).append(this.inputFactory.DEVICE_ID_LABEL).appendint(deviceId).toString(), this, this.gameInputStrings.KEY_PRESSED);
            final Input input = this.inputFactory.getInstanceById(keyCode);
            final GameKeyEvent gameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this.allBinaryGameCanvas, input);
            this.downKeyEventHandler.fireEventForGameKeyEvent(gameKeyEvent);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ADD_KEY_EVENT, e);
            }
        }
    }
    

    @override
    void keyReleasedByDevice(Canvas canvas, int keyCode, int deviceId) {
        try {
            final Input input = this.inputFactory.getInstanceById(keyCode);
            if (this.platformKeyFactory.isEnter(input)) {
                PreLogUtil.put(StringMaker().append(this.inputFactory.KEY_CODE_LABEL).appendint(keyCode).append(CommonSeps.getInstance().SPACE).append(this.inputFactory.DEVICE_ID_LABEL).appendint(deviceId).toString(), this, this.gameInputStrings.KEY_RELEASED);
                final GameKey gameKey = GameKeyFactory.getInstance().KEY_NUM0;
                final GameKeyEventSourceInterface gameKeyEventSourceInterface = (canvas as GameKeyEventSourceInterface);
                final GameKeyEvent gameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(gameKeyEventSourceInterface, gameKey);
                this.upGameKeyEventHandler.fireEvent(gameKeyEvent);
                this.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ADD_KEY_EVENT, e);
            }
        }
    }
}

