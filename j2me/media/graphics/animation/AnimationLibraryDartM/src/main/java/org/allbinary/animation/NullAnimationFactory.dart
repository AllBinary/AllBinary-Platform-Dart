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
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/media/ScaleProperties.dart';
import 'package:allbinary/org/allbinary/animation/AnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';

class NullAnimationFactory implements AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface {
    static NullAnimationFactory NULL_NOT_FOR_USE_ANIMATION_FACTORY = NullAnimationFactory();
    static NullAnimationFactory NULL_ANIMATION_FACTORY = NullAnimationFactory();
    late Animation NULL_ANIMATION;
    late List<Animation?> EMPTY_ARRAY;

    // Java field initializers run after the base constructor
    void initFieldsNullAnimationFactory() {
    this.NULL_ANIMATION = Animation() /* Java anonymous class body: implement it as a named subclass
        

        void paintXY(Graphics graphics, int x, int y) {
        } */;
    this.EMPTY_ARRAY = List<Animation?>.filled(0, null);
    }
    

    NullAnimationFactory() {
        this.initFieldsNullAnimationFactory();
    }
    

    static NullAnimationFactory getFactoryInstance() {
        return NullAnimationFactory.NULL_ANIMATION_FACTORY;
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

