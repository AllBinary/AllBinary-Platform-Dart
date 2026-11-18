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
// package org.allbinary.input.motion.gesture

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/input/CompleteMotionGestureInputEvent.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';

class MotionGestureToMotionGestureActionAssociation {
    late BasicArrayList list;
    late CompleteMotionGestureInputEvent motionGestureAction;

    // Java field initializers run after the base constructor
    void initFieldsMotionGestureToMotionGestureActionAssociation() {
    
    
    }
    

    MotionGestureToMotionGestureActionAssociation(BasicArrayList list, CompleteMotionGestureInputEvent commandAction) {
        this.initFieldsMotionGestureToMotionGestureActionAssociation();
        this.list = list;
        this.motionGestureAction = commandAction;
    }
    

    BasicArrayList getMotionGesture() {
        return this.list;
    }
    

    void setMotionGestures(BasicArrayList list) {
        this.list = list;
    }
    

    CompleteMotionGestureInputEvent getCommandAction() {
        return this.motionGestureAction;
    }
    

    void setMotionGestureAction(CompleteMotionGestureInputEvent commandAction) {
        this.motionGestureAction = commandAction;
    }
    

    bool isMotionGestureArrayEquals(BasicArrayList aList) {
        int size = aList.size();
        if (this.list.size() != size) {
            return false;
        }
        for (int i = size - 1; i >= 0; i--) {
            if (aList.objectArray[i]! != this.list.objectArray[i]!) {
                return false;
            }
        }
        return true;
    }
}

