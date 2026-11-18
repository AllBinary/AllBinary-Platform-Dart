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
import 'package:allbinary/org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/animation/VectorExplosionGenerator.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehaviorFactory.dart';
import 'package:allbinary/org/allbinary/animation/VectorAnimationInterface.dart';
import 'package:allbinary/org/allbinary/animation/VectorRotationAnimation.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';

class VectorExplosionAnimationFactory implements ProceduralAnimationInterfaceFactoryInterface {
    late VectorExplosionGenerator vectorExplosionGenerator;
    late BasicColor basicColor;
    late AnimationBehaviorFactory animationBehaviorFactory;

    // Java field initializers run after the base constructor
    void initFieldsVectorExplosionAnimationFactory() {
    this.vectorExplosionGenerator = VectorExplosionGenerator.getInstance();
    this.basicColor = BasicColorFactory.getInstance().WHITE;
    
    }
    

    VectorExplosionAnimationFactory(BasicColor basicColor, AnimationBehaviorFactory animationBehaviorFactory) {
        this.initFieldsVectorExplosionAnimationFactory();
        this.animationBehaviorFactory = animationBehaviorFactory;
        this.setBasicColorP(basicColor);
    }
    

    @override
    Animation getInstanceAnimation(Animation animationInterface) {
        final VectorAnimationInterface vectorRotationAnimationInterface = (animationInterface as VectorAnimationInterface);
        final int frame = vectorRotationAnimationInterface.getFrame();
        final List<List<int>?> framePoints = vectorRotationAnimationInterface.getPoints(frame);
        final List<List<List<int>?>?> points = this.vectorExplosionGenerator.getInstance3(framePoints, 6, this.vectorExplosionGenerator.ROTATION);
        return VectorRotationAnimation(points, this.getBasicColorP(), this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    void setBasicColorP(BasicColor basicColor) {
        this.basicColor = basicColor;
    }
    

    BasicColor getBasicColorP() {
        return this.basicColor;
    }
}

