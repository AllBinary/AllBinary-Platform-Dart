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
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/MotionEventCircularPool.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/MotionGestureEvent.dart';

class MirrorMotionGestureEventUtil {
    static final MirrorMotionGestureEventUtil instance = MirrorMotionGestureEventUtil();
    late MotionEventCircularPool motionEventCircularPool;

    // Java field initializers run after the base constructor
    void initFieldsMirrorMotionGestureEventUtil() {
    
    }
    

    MirrorMotionGestureEventUtil() {
        this.initFieldsMirrorMotionGestureEventUtil();
        this.motionEventCircularPool = MotionEventCircularPool.createPool(Integer.MAX_VALUE);
    }
    

    MotionGestureEvent mirrorVerticle(MotionGestureEvent motionGestureEvent, int halfWidth) {
        final MotionGestureEvent event = this.motionEventCircularPool.getInstance1(motionGestureEvent.getMotionGesture());
        final int previousNewX = this.getNewX(motionGestureEvent.getPreviousPoint().getX(), halfWidth);
        final int currentNewX = this.getNewX(motionGestureEvent.getCurrentPoint().getX(), halfWidth);
        final PointFactory pointFactory = PointFactory.getInstance();
        final GPoint mirroredPreviousPoint = pointFactory.createXY(previousNewX, motionGestureEvent.getPreviousPoint().getY());
        final GPoint mirroredCurrentPoint = pointFactory.createXY(currentNewX, motionGestureEvent.getCurrentPoint().getY());
        event.setPreviousPoint(mirroredPreviousPoint);
        event.setCurrentPoint(mirroredCurrentPoint);
        return event;
    }
    

    int getNewX(int x, int halfWidth) {
        int newX = 0;
        if (x > halfWidth) {
            newX = halfWidth - (x - halfWidth);
        } else {
            newX = halfWidth + (halfWidth - x);
        }
        return newX;
    }
    

    static MirrorMotionGestureEventUtil getInstance() {
        return MirrorMotionGestureEventUtil.instance;
    }
}

