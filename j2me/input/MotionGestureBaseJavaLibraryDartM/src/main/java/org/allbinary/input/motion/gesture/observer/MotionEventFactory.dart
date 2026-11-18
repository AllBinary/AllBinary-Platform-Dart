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
// package org.allbinary.input.motion.gesture.observer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/input/Input.dart';
import 'package:allbinary/org/allbinary/game/input/InputFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/MotionGestureInput.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/TouchMotionGestureFactory.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/MotionGestureEvent.dart';

class MotionEventFactory implements AllBinaryEventObjectFactoryInterface {
    static int index = 0;
    late Object source;
    int id = 0;

    // Java field initializers run after the base constructor
    void initFieldsMotionEventFactory() {
    
    
    }
    

    MotionEventFactory(Object source, int id) {
        this.initFieldsMotionEventFactory();
        this.source = source;
        this.id = id;
        MotionEventFactory.index = TouchMotionGestureFactory.getInstance().LAST_MOTION.getId();
    }
    

    @override
    AllBinaryEventObject getInstance() {
        final InputFactory inputFactory = InputFactory.getInstance();
        final Input input = inputFactory.getInstanceById(MotionEventFactory.index++);
        if (input == inputFactory.NO_INPUT) {
            return MotionGestureEvent(this.source, this.id, (TouchMotionGestureFactory.getInstance().NO_MOTION as MotionGestureInput));
        } else {
            return MotionGestureEvent(this.source, this.id, (input as MotionGestureInput));
        }
    }
}

