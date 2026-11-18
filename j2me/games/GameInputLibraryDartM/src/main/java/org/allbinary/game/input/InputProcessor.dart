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
// package org.allbinary.game.input

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/org/allbinary/game/input/GameInputStrings.dart';

class InputProcessor {
    late GameInputStrings gameInputStrings;

    // Java field initializers run after the base constructor
    void initFieldsInputProcessor() {
    this.gameInputStrings = GameInputStrings.getInstance();
    }

    InputProcessor() {
        this.initFieldsInputProcessor();
    }
    

    void keyPressedByDevice(int keyCode, int deviceId) {
    }
    

    void keyReleasedByDevice(Canvas canvas, int keyCode, int deviceId) {
    }
}

