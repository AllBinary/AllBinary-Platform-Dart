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
import 'package:allbinary/org/allbinary/game/input/GameKey.dart';
import 'package:allbinary/org/allbinary/game/input/GameKeyEventSourceInterface.dart';
import 'package:allbinary/org/allbinary/game/input/Input.dart';
import 'package:allbinary/org/allbinary/game/input/InputFactory.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEventFactory.dart';
import 'package:allbinary/org/allbinary/game/input/mapping/InputToGameKeyMapping.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class TouchButtonInput extends Input implements GameKeyEventSourceInterface {
    late LogUtil logUtil;
    late GameKeyEventFactory gameKeyEventFactory;
    int TOUCH_BUTTON_SOURCE_ID = 0;
    late GameKeyEvent gameKeyEvent;

    // Java field initializers run after the base constructor
    void initFieldsTouchButtonInput() {
    this.logUtil = LogUtil.getInstance();
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance();
    this.TOUCH_BUTTON_SOURCE_ID = this.gameKeyEventFactory.TOUCH_BUTTON_SOURCE_ID;
    this.gameKeyEvent = GameKeyEvent.NONE;
    }
    

    TouchButtonInput(int id, String name) : super(id, name) {
        this.initFieldsTouchButtonInput();
        
        final InputFactory inputFactory = InputFactory.getInstance();
        inputFactory.add(this.getId(), this);
    }
    

    void update(InputToGameKeyMapping inputToGameKeyMapping) {
        try {
            GameKey gameKey = inputToGameKeyMapping.getInstance1(this.getId());
            this.gameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this, gameKey);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.UPDATE, e);
            }
        }
    }
    

    @override
    int getSourceId() {
        return this.TOUCH_BUTTON_SOURCE_ID;
    }
    

    GameKeyEvent getGameKeyEvent() {
        return this.gameKeyEvent;
    }
}

