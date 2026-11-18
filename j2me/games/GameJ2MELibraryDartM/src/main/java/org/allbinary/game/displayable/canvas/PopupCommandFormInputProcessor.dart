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
import 'package:allbinary/org/allbinary/graphics/displayable/MyCanvas.dart';
import 'package:allbinary/org/allbinary/graphics/form/ScrollSelectionForm.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/MotionGestureEvent.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/CommandFormInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/PopupMenuInputProcessor.dart';

class PopupCommandFormInputProcessor extends CommandFormInputProcessor {
    

    PopupCommandFormInputProcessor(BasicArrayList gameKeyEventList, int playerInputId, MyCanvas gameCanvas, ScrollSelectionForm form, PopupMenuInputProcessor popupMenuInputProcessor) : super(gameKeyEventList, playerInputId, gameCanvas, form) {
        
    }
    

    @override
    int processInput(int key) {
        return super.processInput(key);
    }
    

    @override
    void processMotionInput(MotionGestureEvent motionGestureEvent) {
        super.processMotionInput(motionGestureEvent);
    }
}

