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
// package org.allbinary.animation.compound

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehaviorFactory.dart';
import 'package:allbinary/org/allbinary/animation/AnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/animation/compound/CompoundAnimationInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/animation/compound/SimultaneousCompoundIndexedAnimation.dart';

class SimultaneousCompoundIndexedAnimationInterfaceFactory extends CompoundAnimationInterfaceFactory {
    

    SimultaneousCompoundIndexedAnimationInterfaceFactory(List<AnimationInterfaceFactoryInterface?> basicAnimationInterfaceFactoryInterfaceArray, AnimationBehaviorFactory animationBehaviorFactory) : super(basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory) {
        
    }
    

    @override
    List<Animation?> createArray(int size) {
        return List<Animation?>.filled(size, null);
    }
    

    @override
    Animation createAnimation(List<Animation?> animationArray) {
        return SimultaneousCompoundIndexedAnimation(animationArray, this.animationBehaviorFactory.getOrCreateInstance());
    }
}

