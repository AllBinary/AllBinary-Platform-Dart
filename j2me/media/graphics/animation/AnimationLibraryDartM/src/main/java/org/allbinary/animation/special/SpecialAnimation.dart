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
// package org.allbinary.animation.special

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/animation/IndexedAnimationBehavior.dart';
import 'package:allbinary/org/allbinary/animation/special/SpecialAnimationInterface.dart';

class SpecialAnimation extends IndexedAnimation implements SpecialAnimationInterface {
    static final SpecialAnimation NULL_SPECIAL_ANIMATION = SpecialAnimation(IndexedAnimationBehavior(1, 250));
    

    static SpecialAnimation getInstance() {
        return SpecialAnimation.NULL_SPECIAL_ANIMATION;
    }
    

    SpecialAnimation(AnimationBehavior animationBehavior) : super(animationBehavior) {
        
    }
    

    @override
    void nextFrame() {
        final IndexedAnimationBehavior indexedAnimationBehavior = ((this.animationBehaviorP as IndexedAnimationBehavior));
        indexedAnimationBehavior.loopIndex++;
    }
    

    @override
    void setLastFrame() {
    }
    

    @override
    bool isComplete() {
        return false;
    }
    

    void open() {
    }
    

    void close() {
    }
    

    void process() {
    }
}

