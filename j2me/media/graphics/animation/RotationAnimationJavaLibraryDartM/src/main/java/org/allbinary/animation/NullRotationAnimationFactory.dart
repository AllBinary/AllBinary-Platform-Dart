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
import 'package:allbinary/org/allbinary/media/ScaleProperties.dart';
import 'package:allbinary/org/allbinary/animation/AnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/animation/RotationAnimation.dart';
import 'package:allbinary/org/allbinary/animation/NullRotationAnimation2.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';

class NullRotationAnimationFactory implements AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface {
    static NullRotationAnimationFactory NULL_ROTATION_ANIMATION_FACTORY = NullRotationAnimationFactory();
    late List<RotationAnimation?> NULL_ROTATION_ANIMATION_ARRAY;
    late Animation NULL_ANIMATION;

    // Java field initializers run after the base constructor
    void initFieldsNullRotationAnimationFactory() {
    this.NULL_ROTATION_ANIMATION_ARRAY = List<RotationAnimation?>.filled(0, null);
    this.NULL_ANIMATION = NullRotationAnimation2();
    }
    

    NullRotationAnimationFactory() {
        this.initFieldsNullRotationAnimationFactory();
    }
    

    static NullRotationAnimationFactory getFactoryInstance() {
        return NullRotationAnimationFactory.NULL_ROTATION_ANIMATION_FACTORY;
    }
    

    @override
    Animation getInstance1(int instanceId) {
        return this.NULL_ANIMATION;
    }
    

    @override
    Animation getInstanceAnimation(Animation animationInterface) {
        return this.NULL_ANIMATION;
    }
    

    @override
    void setInitialScale(ScaleProperties scaleProperties) {
    }
}

