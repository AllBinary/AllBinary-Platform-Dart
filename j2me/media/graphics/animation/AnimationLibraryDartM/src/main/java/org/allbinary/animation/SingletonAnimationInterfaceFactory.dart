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
import 'package:allbinary/org/allbinary/animation/Animation.dart';

class SingletonAnimationInterfaceFactory implements AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface {
    late Animation animationInterface;

    // Java field initializers run after the base constructor
    void initFieldsSingletonAnimationInterfaceFactory() {
    
    }
    

    SingletonAnimationInterfaceFactory(Animation animationInterface) {
        this.initFieldsSingletonAnimationInterfaceFactory();
        this.animationInterface = animationInterface;
    }
    

    @override
    Animation getInstance1(int instanceId) {
        return this.animationInterface;
    }
    

    @override
    Animation getInstanceAnimation(Animation animationInterface) {
        return this.animationInterface;
    }
    

    @override
    void setInitialScale(ScaleProperties scaleProperties) {
    }
}

