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

class AllMotionRecognizer {
    static int index = 0;
    int id = 0;

    // Java field initializers run after the base constructor
    void initFieldsAllMotionRecognizer() {
    
    }
    

    AllMotionRecognizer() {
        this.initFieldsAllMotionRecognizer();
        this.id = AllMotionRecognizer.index++;
    }
    

    void processStartMotionEvent(int x, int y, int deviceId, int modifiers) {
    }
    

    void processEndMotionEvent(int x, int y, int deviceId, int modifiers) {
    }
    

    void processDraggedMotionEvent(int x, int y, int deviceId, int modifiers) {
    }
    

    void processMovedMotionEvent(int x, int y, int deviceId, int modifiers) {
    }
    

    void processScrolledMotionEvent(int x, int y, int deviceId, int modifiers) {
    }
    

    int getId() {
        return this.id;
    }
}

