/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';

class IndexedAnimationBehavior extends AnimationBehavior {
    int frameDelayTime = 0;
    int loopTotal = 0;
    int elapsedTime = 0;
    int loopIndex = 0;

    // Java field initializers run after the base constructor
    void initFieldsIndexedAnimationBehavior() {
    
    
    this.elapsedTime = 0;
    this.loopIndex = 0;
    }
    

    IndexedAnimationBehavior(int loopTotal, int frameDelayTime) {
        this.initFieldsIndexedAnimationBehavior();
        this.loopTotal = loopTotal;
        this.frameDelayTime = frameDelayTime;
    }
    

    @override
    void reset() {
        this.loopIndex = 0;
    }
}

