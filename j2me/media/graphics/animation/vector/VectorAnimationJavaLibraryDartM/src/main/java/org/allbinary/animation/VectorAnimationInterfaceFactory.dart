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
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/media/ScaleProperties.dart';
import 'package:allbinary/org/allbinary/animation/AnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehaviorFactory.dart';
import 'package:allbinary/org/allbinary/animation/VectorAnimation.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';

class VectorAnimationInterfaceFactory implements AnimationInterfaceFactoryInterface {
    late List<List<List<int>?>?> currentPoints;
    late BasicColor basicColor;
    late AnimationBehaviorFactory animationBehaviorFactory;

    // Java field initializers run after the base constructor
    void initFieldsVectorAnimationInterfaceFactory() {
    
    this.basicColor = BasicColorFactory.getInstance().WHITE;
    
    }
    

    VectorAnimationInterfaceFactory(List<List<List<int>?>?> currentPoints, BasicColor basicColor, AnimationBehaviorFactory animationBehaviorFactory) {
        this.initFieldsVectorAnimationInterfaceFactory();
        this.currentPoints = currentPoints;
        this.setBasicColorP(basicColor);
        this.animationBehaviorFactory = animationBehaviorFactory;
    }
    

    @override
    Animation getInstance1(int instanceId) {
        return VectorAnimation(this.currentPoints, this.getBasicColorP(), this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    void setBasicColorP(BasicColor basicColor) {
        this.basicColor = basicColor;
    }
    

    BasicColor getBasicColorP() {
        return this.basicColor;
    }
    

    @override
    void setInitialScale(ScaleProperties scaleProperties) {
    }
}

