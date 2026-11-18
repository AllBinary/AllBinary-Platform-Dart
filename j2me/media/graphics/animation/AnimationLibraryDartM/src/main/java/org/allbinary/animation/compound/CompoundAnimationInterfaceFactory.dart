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
import 'package:allbinary/org/allbinary/animation/NullAnimationFactory.dart';
import 'package:allbinary/org/allbinary/media/ScaleProperties.dart';

class CompoundAnimationInterfaceFactory implements AnimationInterfaceFactoryInterface {
    late List<AnimationInterfaceFactoryInterface?> basicAnimationInterfaceFactoryInterfaceArrayP;
    late AnimationBehaviorFactory animationBehaviorFactory;

    // Java field initializers run after the base constructor
    void initFieldsCompoundAnimationInterfaceFactory() {
    
    
    }
    

    CompoundAnimationInterfaceFactory(List<AnimationInterfaceFactoryInterface?> basicAnimationInterfaceFactoryInterfaceArray, AnimationBehaviorFactory animationBehaviorFactory) {
        this.initFieldsCompoundAnimationInterfaceFactory();
        this.basicAnimationInterfaceFactoryInterfaceArrayP = basicAnimationInterfaceFactoryInterfaceArray;
        this.animationBehaviorFactory = animationBehaviorFactory;
    }
    

    @override
    Animation getInstance1(int instanceId) {
        final int size = this.basicAnimationInterfaceFactoryInterfaceArrayP.length;
        final List<Animation?> animationInterfaceArray = this.createArray(size);
        for (int index = 0; index < size; index++) {
            animationInterfaceArray[index] = this.basicAnimationInterfaceFactoryInterfaceArrayP[index]!.getInstance1(instanceId);
        }
        return this.createAnimation(animationInterfaceArray);
    }
    

    List<Animation?> createArray(int size) {
        return NullAnimationFactory.getFactoryInstance().EMPTY_ARRAY;
    }
    

    Animation createAnimation(List<Animation?> animationInterfaceArray) {
        return NullAnimationFactory.getFactoryInstance().getInstance1(0);
    }
    

    List<AnimationInterfaceFactoryInterface?> getBasicAnimationInterfaceFactoryInterfaceArray() {
        return this.basicAnimationInterfaceFactoryInterfaceArrayP;
    }
    

    @override
    void setInitialScale(ScaleProperties scaleProperties) {
        final int size = this.basicAnimationInterfaceFactoryInterfaceArrayP.length;
        for (int index = 0; index < size; index++) {
            this.basicAnimationInterfaceFactoryInterfaceArrayP[index]!.setInitialScale(scaleProperties);
        }
    }
}

