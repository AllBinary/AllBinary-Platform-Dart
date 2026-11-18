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
import 'package:allbinary/org/allbinary/game/input/InputFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/MotionGestureInput.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/TouchMotionGestureFactory.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventCircularPool.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/MotionEventFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/MotionGestureEvent.dart';

class MotionEventCircularPool {
    int MIN = 0;
    late AllBinaryEventCircularPool eventPool;

    // Java field initializers run after the base constructor
    void initFieldsMotionEventCircularPool() {
    this.MIN = TouchMotionGestureFactory.getInstance().LAST_MOTION.getId();
    this.eventPool = AllBinaryEventCircularPool((InputFactory.getInstance().MAX - 1) - this.MIN);
    }
    

    static MotionEventCircularPool createPool(int id) {
        return MotionEventCircularPool(id);
    }
    

    MotionEventCircularPool(int id) {
        this.initFieldsMotionEventCircularPool();
        this.eventPool.initAllBinaryEventCircularPool(MotionEventFactory(this.eventPool, id));
    }
    

    MotionGestureEvent getInstance1(MotionGestureInput motionGestureInput) {
        return (this.eventPool.getInstance1(motionGestureInput.getId() - this.MIN) as MotionGestureEvent);
    }
}

