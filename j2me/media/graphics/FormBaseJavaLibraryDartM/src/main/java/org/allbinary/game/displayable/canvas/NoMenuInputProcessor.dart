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
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/MotionGestureEvent.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListUtil.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.dart';

class NoMenuInputProcessor extends BasicMenuInputProcessor {
    static final NoMenuInputProcessor SINGLETON = NoMenuInputProcessor();
    

    static NoMenuInputProcessor getInstance() {
        return NoMenuInputProcessor.SINGLETON;
    }
    

    NoMenuInputProcessor() : super(BasicArrayListUtil.getInstance().getImmutableInstance(), -1, NullCanvas.NULL_CANVAS) {
        
    }
    

    @override
    void onDownGameKeyEvent(GameKeyEvent gameKeyEvent) {
    }
    

    @override
    void onUpGameKeyEvent(GameKeyEvent gameKeyEvent) {
    }
    

    @override
    void onMotionGestureEvent(MotionGestureEvent motionGestureEvent) {
    }
}

