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
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationCentral.dart';
import 'package:allbinary/org/allbinary/math/AngleFactory.dart';
import 'package:allbinary/org/allbinary/math/AngleInfo.dart';
import 'package:allbinary/org/allbinary/media/ScaleProperties.dart';
import 'package:allbinary/org/allbinary/animation/AnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/animation/NullRotationAnimation.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';

class RotationAnimationFactory implements AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface {
    int totalAngle = 0;
    int angleIncrement = 0;

    // Java field initializers run after the base constructor
    void initFieldsRotationAnimationFactory() {
    
    
    }
    

    static RotationAnimationFactory createFactory() {
        final int totalAngle = AngleFactory.getInstance().TOTAL_ANGLE;
        return RotationAnimationFactory(totalAngle, ((totalAngle ~/ GameConfigurationCentral.getInstance().getGameControlFidelity())).toSigned(16));
    }
    

    RotationAnimationFactory(int totalAngle, int angleIncrement) {
        this.initFieldsRotationAnimationFactory();
        this.totalAngle = totalAngle;
        this.angleIncrement = angleIncrement;
    }
    

    @override
    Animation getInstance1(int instanceId) {
        return NullRotationAnimation.createTotalAngle(AngleInfo.getInstance1(this.angleIncrement), this.totalAngle, AnimationBehavior.getInstance());
    }
    

    @override
    Animation getInstanceAnimation(Animation animationInterface) {
        return NullRotationAnimation.createTotalAngle(AngleInfo.getInstance1(this.angleIncrement), this.totalAngle, AnimationBehavior.getInstance());
    }
    

    @override
    void setInitialScale(ScaleProperties scaleProperties) {
    }
}

