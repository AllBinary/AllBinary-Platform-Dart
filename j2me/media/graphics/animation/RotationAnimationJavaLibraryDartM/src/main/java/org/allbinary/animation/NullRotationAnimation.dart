// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.animation

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/math/AngleFactory.dart';
import 'package:allbinary/org/allbinary/math/AngleInfo.dart';
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';
import 'package:allbinary/org/allbinary/animation/RotationAnimation.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';

class NullRotationAnimation extends RotationAnimation {
    

    static NullRotationAnimation createTotalAngle(AngleInfo angleInfo, int totalAngle, AnimationBehavior animationBehavior) {
        return NullRotationAnimation(angleInfo, CircularIndexUtil.createInstance(totalAngle ~/ angleInfo.getAngleIncrementInfo().getAngleIncrement()), animationBehavior);
    }
    

    static NullRotationAnimation createQuarter(AnimationBehavior animationBehavior) {
        return NullRotationAnimation(AngleInfo.getInstance1(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior);
    }
    

    NullRotationAnimation(AngleInfo angleInfo, CircularIndexUtil circularIndexUtil, AnimationBehavior animationBehavior) : super(angleInfo, circularIndexUtil, animationBehavior) {
        
    }
    

    @override
    int getAnimationSize() {
        return 0;
    }
}

