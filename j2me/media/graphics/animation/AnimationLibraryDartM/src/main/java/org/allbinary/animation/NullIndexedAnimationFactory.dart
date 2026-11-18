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
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/animation/NullIndexedAnimationInner.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';

class NullIndexedAnimationFactory implements AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface {
    static final List<IndexedAnimation?> NULL_INDEXED_ANIMATION_ARRAY = List<IndexedAnimation?>.filled(0, null);
    static NullIndexedAnimationFactory NULL_INDEXED_ANIMATION_FACTORY = NullIndexedAnimationFactory();
    late Animation NULL_ANIMATION;

    // Java field initializers run after the base constructor
    void initFieldsNullIndexedAnimationFactory() {
    this.NULL_ANIMATION = NullIndexedAnimationInner();
    }
    

    NullIndexedAnimationFactory() {
        this.initFieldsNullIndexedAnimationFactory();
    }
    

    static NullIndexedAnimationFactory getFactoryInstance() {
        return NullIndexedAnimationFactory.NULL_INDEXED_ANIMATION_FACTORY;
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

