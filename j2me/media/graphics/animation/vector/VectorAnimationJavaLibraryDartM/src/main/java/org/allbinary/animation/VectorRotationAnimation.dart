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
// package org.allbinary.animation

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/direction/Direction.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/math/Angle.dart';
import 'package:allbinary/org/allbinary/math/AngleFactory.dart';
import 'package:allbinary/org/allbinary/math/AngleInfo.dart';
import 'package:allbinary/org/allbinary/animation/VectorBaseRotationAnimation.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';

class VectorRotationAnimation extends VectorBaseRotationAnimation {
    

    VectorRotationAnimation(List<List<List<int>?>?> currentPoints, BasicColor basicColor, AnimationBehavior animationBehavior) : super(AngleInfo.getInstance1(((AngleFactory.getInstance().TOTAL_ANGLE ~/ currentPoints.length)).toSigned(16)), currentPoints, basicColor, animationBehavior) {
        
        this.angleInfo.adjustAngle(this.getFrame());
    }
    

    @override
    void setFrameByDirection(Direction direction) {
        Angle angle = this.directionUtil.getFrameAngle(direction);
        this.adjustFrameToAngle(angle);
    }
    

    @override
    void setFrameToAngle(Angle angle) {
        this.adjustFrameToAngle(angle);
    }
    

    @override
    void setFrame(int index) {
        super.setFrame(index);
        this.angleInfo.adjustAngle(this.getFrame());
    }
    

    @override
    void adjustFrame(int newAngle) {
        this.setFrame(this.frameUtil.getFrameForAngle(newAngle, this.angleInfo.getAngleIncrementInfo().getAngleIncrement()));
    }
    

    @override
    void adjustFrameToAngle(Angle newAngle) {
        this.adjustFrame(newAngle.getValue());
    }
}

