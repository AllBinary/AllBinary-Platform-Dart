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
import 'package:allbinary/org/allbinary/animation/NullAnimationFactory.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';

class AnimationInterfaceFactoryInterfaceComposite implements AnimationInterfaceFactoryInterface {
    late List<AnimationInterfaceFactoryInterface?> animationInterfaceFactoryInterfaceArray;

    // Java field initializers run after the base constructor
    void initFieldsAnimationInterfaceFactoryInterfaceComposite() {
    
    }
    

    AnimationInterfaceFactoryInterfaceComposite(List<AnimationInterfaceFactoryInterface?> basicAnimationInterfaceFactoryInterfaceArray) {
        this.initFieldsAnimationInterfaceFactoryInterfaceComposite();
        this.animationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray;
    }
    

    @override
    Animation getInstance1(int instanceId) {
        return NullAnimationFactory.getFactoryInstance().getInstance1(0);
    }
    

    List<AnimationInterfaceFactoryInterface?> getAnimationInterfaceFactoryInterfaceArray() {
        return this.animationInterfaceFactoryInterfaceArray;
    }
    

    @override
    void setInitialScale(ScaleProperties scaleProperties) {
    }
}

