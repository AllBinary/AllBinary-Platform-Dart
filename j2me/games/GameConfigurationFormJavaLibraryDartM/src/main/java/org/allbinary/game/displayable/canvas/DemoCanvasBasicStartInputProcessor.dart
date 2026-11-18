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
import 'package:allbinary/javax/microedition/lcdui/NullCanvas.dart';
import 'package:allbinary/org/allbinary/canvas/RunnableCanvas.dart';
import 'package:allbinary/org/allbinary/game/commands/GameCommandsFactory.dart';
import 'package:allbinary/org/allbinary/game/input/GameInputStrings.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.dart';

class DemoCanvasBasicStartInputProcessor extends BasicMenuInputProcessor {
    

    DemoCanvasBasicStartInputProcessor(BasicArrayList gameKeyEventList, RunnableCanvas gameCanvas) : super(gameKeyEventList, -1, gameCanvas) {
        
    }
    

    @override
    int processInputList() {
        BasicArrayList list = this.getGameKeyEventList();
        int size = list.size();
        late GameKeyEvent gameKeyEvent;
        for (int index = 0; index < size; index++) {
            gameKeyEvent = (list.objectArray[index]! as GameKeyEvent);
            this.logUtil.putF(StringMaker().append("Start GameKey: ").append(StringUtil.getInstance().toString1(gameKeyEvent)).toString(), this, GameInputStrings.getInstance().PROCESS_INPUT);
        }
        this.getCanvas().getCustomCommandListener().commandAction(GameCommandsFactory.getInstance().START_COMMAND, NullCanvas.NULL_CANVAS);
        return size;
    }
}

