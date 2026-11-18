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
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/media/ScaleProperties.dart';
import 'package:allbinary/org/allbinary/animation/compound/SimultaneousCompoundIndexAnimation.dart';

class SimultaneousCompoundIndexAnimationInterfaceFactory implements AnimationInterfaceFactoryInterface {
    late List<AnimationInterfaceFactoryInterface?> basicAnimationInterfaceFactoryInterfaceArray;
    late AnimationBehaviorFactory animationBehaviorFactory;

    // Java field initializers run after the base constructor
    void initFieldsSimultaneousCompoundIndexAnimationInterfaceFactory() {
    
    
    }
    

    SimultaneousCompoundIndexAnimationInterfaceFactory(List<AnimationInterfaceFactoryInterface?> basicAnimationInterfaceFactoryInterfaceArray, AnimationBehaviorFactory animationBehaviorFactory) {
        this.initFieldsSimultaneousCompoundIndexAnimationInterfaceFactory();
        this.basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray;
        this.animationBehaviorFactory = animationBehaviorFactory;
    }
    

    @override
    Animation getInstance1(int instanceId) {
        final int size = this.basicAnimationInterfaceFactoryInterfaceArray.length;
        final List<IndexedAnimation?> animationInterfaceArray = List<IndexedAnimation?>.filled(size, null);
        for (int index = 0; index < size; index++) {
            animationInterfaceArray[index] = (this.basicAnimationInterfaceFactoryInterfaceArray[index]!.getInstance1(instanceId) as IndexedAnimation);
        }
        return this.getOrCreate(animationInterfaceArray);
    }
    

    Animation getOrCreate(List<IndexedAnimation?> animationInterfaceArray) {
        return SimultaneousCompoundIndexAnimation(animationInterfaceArray, this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    List<AnimationInterfaceFactoryInterface?> getBasicAnimationInterfaceFactoryInterfaceArray() {
        return this.basicAnimationInterfaceFactoryInterfaceArray;
    }
    

    @override
    void setInitialScale(ScaleProperties scaleProperties) {
    }
}

