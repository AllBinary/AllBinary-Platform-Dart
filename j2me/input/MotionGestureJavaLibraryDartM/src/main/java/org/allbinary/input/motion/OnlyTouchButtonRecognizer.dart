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
// package org.allbinary.input.motion

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonRecognizer.dart';
import 'package:allbinary/org/allbinary/input/motion/MotionRecognizer.dart';

class OnlyTouchButtonRecognizer extends MotionRecognizer {
    late TouchButtonRecognizer touchButtonRecognizer;
    bool touchButtonProcessing = false;

    // Java field initializers run after the base constructor
    void initFieldsOnlyTouchButtonRecognizer() {
    
    this.touchButtonProcessing = false;
    }
    

    OnlyTouchButtonRecognizer() {
        this.initFieldsOnlyTouchButtonRecognizer();
        this.touchButtonRecognizer = TouchButtonRecognizer();
    }
    

    @override
    void processStartMotionEvent(int x, int y, int deviceId, int modifiers) {
        if (this.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)) {
            this.touchButtonProcessing = true;
        }
    }
    

    @override
    void processEndMotionEvent(int x, int y, int deviceId, int modifiers) {
        if (this.touchButtonProcessing) {
            this.touchButtonProcessing = false;
        }
        if (this.touchButtonRecognizer.releaseTouchButtonInput(x, y, deviceId)) {
            return;
        }
    }
    

    @override
    void processDraggedMotionEvent(int x, int y, int deviceId, int modifiers) {
        if (this.touchButtonProcessing) {
            this.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId);
        }
    }
}

