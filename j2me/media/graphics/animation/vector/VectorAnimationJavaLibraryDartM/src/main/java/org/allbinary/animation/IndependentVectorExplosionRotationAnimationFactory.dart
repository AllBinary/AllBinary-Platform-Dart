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
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/vector/VectorInfo.dart';
import 'package:allbinary/org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/animation/VectorAnimationFactoryInterface.dart';
import 'package:allbinary/org/allbinary/animation/VectorRotationGenerator.dart';
import 'package:allbinary/org/allbinary/animation/VectorExplosionGenerator.dart';
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';

class IndependentVectorExplosionRotationAnimationFactory implements ProceduralAnimationInterfaceFactoryInterface {
    late List<List<List<int>?>?> framePoints;
    late VectorInfo vectorInfo;
    late BasicColor basicColor;
    late VectorAnimationFactoryInterface vectorAnimationFactoryInterface;
    late VectorExplosionGenerator vectorExplosionGenerator;

    // Java field initializers run after the base constructor
    void initFieldsIndependentVectorExplosionRotationAnimationFactory() {
    this.framePoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
    
    
    
    this.vectorExplosionGenerator = VectorExplosionGenerator.getInstance();
    }
    

    IndependentVectorExplosionRotationAnimationFactory(VectorInfo vectorInfo, BasicColor basicColor, VectorAnimationFactoryInterface vectorAnimationFactoryInterface) {
        this.initFieldsIndependentVectorExplosionRotationAnimationFactory();
        this.vectorInfo = vectorInfo;
        this.basicColor = basicColor;
        this.vectorAnimationFactoryInterface = vectorAnimationFactoryInterface;
        this.init();
    }
    

    void init() {
        this.framePoints = VectorRotationGenerator.getInstance().getInstance1(this.vectorInfo);
    }
    

    @override
    Animation getInstanceAnimation(Animation animationInterface) {
        int frame = 0;
        if (animationInterface != null) {
            IndexedAnimation rotationAnimationInterface = (animationInterface as IndexedAnimation);
            frame = rotationAnimationInterface.getFrame();
        }
        List<List<List<int>?>?> points = this.vectorExplosionGenerator.getInstance3(this.framePoints[frame]!, 6, this.vectorExplosionGenerator.ROTATION);
        return this.vectorAnimationFactoryInterface.getInstance2(points, this.basicColor);
    }
}

