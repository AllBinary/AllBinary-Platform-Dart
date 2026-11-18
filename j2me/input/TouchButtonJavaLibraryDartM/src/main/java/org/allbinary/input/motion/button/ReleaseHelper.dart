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
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonRecognizer.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonInput.dart';

class ReleaseHelper {
    late TouchButtonRecognizer touchButtonRecognizer;

    // Java field initializers run after the base constructor
    void initFieldsReleaseHelper() {
    
    }
    

    ReleaseHelper(TouchButtonRecognizer touchButtonRecognizer) {
        this.initFieldsReleaseHelper();
        this.touchButtonRecognizer = touchButtonRecognizer;
    }
    

    void release(TouchButtonInput touchButtonInput, int deviceId) {
        late TouchButtonInput nextTouchButtonInput;
        late GameKeyEvent gameKeyEvent;
        for (int index = this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.size() - 1; index >= 0; index--) {
            nextTouchButtonInput = this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.get(index);
            gameKeyEvent = nextTouchButtonInput.getGameKeyEvent();
            this.touchButtonRecognizer.upGameKeyEventHandler.fireEvent(gameKeyEvent);
            this.touchButtonRecognizer.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.removeAt(index);
        }
    }
}

