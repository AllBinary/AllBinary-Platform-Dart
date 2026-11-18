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
import 'package:allbinary/org/allbinary/graphics/Line.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/MotionEventCircularPool.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/MotionGestureEvent.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/MovedMotionGesturesHandler.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/observer/ScrolledMotionGesturesHandler.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/J2SEMath.dart';
import 'package:allbinary/org/allbinary/logic/util/event/handler/BasicEventHandler.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/TouchMotionGestureFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/gesture/MotionGestureInput.dart';

class MotionGestureRecognizer {
    late LogUtil logUtil;
    late J2SEMath j2seMath;
    late GPoint origin;
    late GPoint previous;
    late GPoint intermediate;
    late Line line;
    late BasicMotionGesturesHandler motionGesturesHandler;
    late BasicEventHandler movedMotionGesturesHandler;
    late BasicEventHandler scrolledMotionGesturesHandler;
    late MotionEventCircularPool motionEventCircularPool;

    // Java field initializers run after the base constructor
    void initFieldsMotionGestureRecognizer() {
    this.logUtil = LogUtil.getInstance();
    this.j2seMath = J2SEMath.getInstance();
    this.origin = PointFactory.getInstance().ZERO_ZERO;
    this.previous = this.origin;
    this.intermediate = this.origin;
    this.line = Line(this.origin, this.origin);
    
    
    
    
    }
    

    MotionGestureRecognizer(int id) {
        this.initFieldsMotionGestureRecognizer();
        this.motionEventCircularPool = MotionEventCircularPool.createPool(id);
        BasicEventHandler motionGesturesHandler = BasicEventHandler();
        BasicEventHandler movedMotionGesturesHandler = motionGesturesHandler;
        BasicEventHandler scrolledMotionGesturesHandler = motionGesturesHandler;
        try {
            motionGesturesHandler = BasicMotionGesturesHandler.getInstance();
            movedMotionGesturesHandler = MovedMotionGesturesHandler.getInstance();
            scrolledMotionGesturesHandler = ScrolledMotionGesturesHandler.getInstance();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
            }
        }
        this.motionGesturesHandler = (motionGesturesHandler as BasicMotionGesturesHandler);
        this.movedMotionGesturesHandler = movedMotionGesturesHandler;
        this.scrolledMotionGesturesHandler = scrolledMotionGesturesHandler;
    }
    

    bool processPressedMotionEvent(GPoint current, int deviceId, int button) {
        this.intermediate = this.origin;
        this.previous = this.origin;
        final MotionGestureEvent event = this.motionEventCircularPool.getInstance1(TouchMotionGestureFactory.getInstance().PRESSED);
        event.setPreviousPoint(this.previous);
        event.setCurrentPoint(current);
        this.motionGesturesHandler.fireEvent(event);
        return true;
    }
    

    bool processReleasedMotionEvent(GPoint current, int deviceId, int button) {
        final MotionGestureEvent event = this.motionEventCircularPool.getInstance1(TouchMotionGestureFactory.getInstance().RELEASED);
        event.setPreviousPoint(this.previous);
        event.setCurrentPoint(current);
        this.motionGesturesHandler.fireEvent(event);
        return true;
    }
    

    void processDraggedMotionEvent(GPoint current, int deviceId, int buttonMask) {
        if (identical(this.previous, this.origin) || identical(this.intermediate, this.origin)) {
            this.previous = current;
            this.intermediate = current;
            return;
        }
        this.line.setP1(this.previous);
        this.line.setP2(current);
        int minimumMotionGesture = MotionGestureConfigurationFactory.getInstance().getMinimumMotionGesture();
        if (this.j2seMath.abs(this.line.getDeltaX()) < (minimumMotionGesture).toDouble() && this.j2seMath.abs(this.line.getDeltaY()) < (minimumMotionGesture).toDouble()) {
            this.intermediate = current;
            return;
        }
        double gradient = this.line.getGradient();
        double absGradient = this.j2seMath.abs(gradient);
        final MotionGestureConfiguration conf = MotionGestureConfigurationFactory.getInstance();
        final TouchMotionGestureFactory touchMotionGestureFactory = TouchMotionGestureFactory.getInstance();
        MotionGestureInput newMotionGesture = touchMotionGestureFactory.NO_MOTION;
        double diagonalToleranceHigher = 12.0;
        double diagonalToleranceLower = 12.0;
        if (conf.isDiagonalMotionGestureAllowed()) {
            diagonalToleranceHigher = ((90 - conf.getDiagonalTolerance())).toDouble();
            diagonalToleranceLower = (conf.getDiagonalTolerance()).toDouble();
        }
        if (absGradient > JMath.tan(JMath.toRadians(diagonalToleranceHigher))) {
            if (this.line.getDeltaY() > 0.0) {
                newMotionGesture = touchMotionGestureFactory.UP;
            } else {
                newMotionGesture = touchMotionGestureFactory.DOWN;
            }
        } else {
            if (absGradient < JMath.tan(JMath.toRadians(diagonalToleranceLower))) {
                if (this.line.getDeltaX() > 0.0) {
                    newMotionGesture = touchMotionGestureFactory.LEFT;
                } else {
                    newMotionGesture = touchMotionGestureFactory.RIGHT;
                }
            } else {
                if (gradient > 0.0) {
                    if (this.line.getDeltaX() > 0.0) {
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_UP_LEFT;
                    } else {
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT;
                    }
                } else {
                    if (this.line.getDeltaX() > 0.0) {
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_DOWN_LEFT;
                    } else {
                        newMotionGesture = touchMotionGestureFactory.DIAGONAL_UP_RIGHT;
                    }
                }
            }
        }
        this.previous = current;
        this.intermediate = current;
        final MotionGestureEvent event = this.motionEventCircularPool.getInstance1(newMotionGesture);
        event.setPreviousPoint(this.previous);
        event.setCurrentPoint(current);
        this.motionGesturesHandler.fireEvent(event);
        return;
    }
    

    bool processMovedMotionEvent(GPoint current, int deviceId, int button) {
        final MotionGestureEvent event = this.motionEventCircularPool.getInstance1(TouchMotionGestureFactory.getInstance().NO_MOTION);
        event.setPreviousPoint(this.previous);
        event.setCurrentPoint(current);
        this.movedMotionGesturesHandler.fireEvent(event);
        return true;
    }
    

    bool processScrolledMotionEvent(GPoint current, int deviceId, int button) {
        final TouchMotionGestureFactory touchMotionGestureFactory = TouchMotionGestureFactory.getInstance();
        MotionGestureInput newMotionGesture = touchMotionGestureFactory.NO_MOTION;
        if (button > 0) {
            newMotionGesture = touchMotionGestureFactory.SCROLL_UP;
        } else if (button < 0) {
            newMotionGesture = touchMotionGestureFactory.SCROLL_DOWN;
        }
        final MotionGestureEvent event = this.motionEventCircularPool.getInstance1(newMotionGesture);
        event.setPreviousPoint(this.previous);
        event.setCurrentPoint(current);
        this.scrolledMotionGesturesHandler.fireEvent(event);
        return true;
    }
    

    BasicMotionGesturesHandler getMotionGesturesHandler() {
        return this.motionGesturesHandler;
    }
}

