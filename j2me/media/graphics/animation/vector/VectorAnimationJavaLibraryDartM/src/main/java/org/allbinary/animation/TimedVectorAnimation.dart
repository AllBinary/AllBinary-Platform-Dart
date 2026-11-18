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
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelperFactory.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/animation/VectorAnimation.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';

class TimedVectorAnimation extends VectorAnimation {
    late TimeDelayHelper timeElapsedHelper;

    // Java field initializers run after the base constructor
    void initFieldsTimedVectorAnimation() {
    this.timeElapsedHelper = TimeDelayHelper(200);
    }
    

    TimedVectorAnimation(List<List<List<int>?>?> currentPoints, BasicColor basicColor, AnimationBehavior animationBehavior) : super(currentPoints, basicColor, animationBehavior) {
        this.initFieldsTimedVectorAnimation();
        
    }
    

    @override
    void nextFrame() {
        if (this.timeElapsedHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            super.nextFrame();
        }
    }
}

