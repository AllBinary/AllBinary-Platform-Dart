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
import 'package:allbinary/javax/microedition/lcdui/NullCanvas.dart';
import 'package:allbinary/org/allbinary/game/input/PlayerGameInput.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/MyCanvas.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/MotionGestureEvent.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class BasicMenuInputProcessor extends PlayerGameInput implements BaseMotionGestureEventListener {
    late BasicArrayList motionGestureEventList;
    late Canvas canvas;

    // Java field initializers run after the base constructor
    void initFieldsBasicMenuInputProcessor() {
    this.motionGestureEventList = BasicArrayListD();
    this.canvas = NullCanvas.NULL_CANVAS;
    }
    

    BasicMenuInputProcessor(BasicArrayList gameKeyEventList, int playerInputId, Canvas gameCanvas) : super(gameKeyEventList, BasicArrayListD(), playerInputId) {
        this.initFieldsBasicMenuInputProcessor();
        
        this.canvas = gameCanvas;
    }
    

    @override
    void onMotionGestureEvent(MotionGestureEvent motionGestureEvent) {
        this.motionGestureEventList.add(motionGestureEvent);
    }
    

    @override
    void onScrolledMotionGestureEvent(MotionGestureEvent motionGestureEvent) {
    }
    

    void setCanvas(MyCanvas canvas) {
        this.canvas = canvas;
    }
    

    MyCanvas getCanvas() {
        return (this.canvas as MyCanvas);
    }
    

    int processInputList() {
        return -1;
    }
}

