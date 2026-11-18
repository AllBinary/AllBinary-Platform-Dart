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
// package org.allbinary.animation.image

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehaviorFactory.dart';
import 'package:allbinary/org/allbinary/animation/AnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/media/ScaleProperties.dart';
import 'package:allbinary/org/allbinary/animation/image/ImageArrayAnimation.dart';
import 'package:allbinary/org/allbinary/animation/image/AdjustedImageArrayAnimation.dart';

class ImageArrayAnimationFactory implements AnimationInterfaceFactoryInterface {
    int dx = 0;
    int dy = 0;
    late List<Image?> imageArray;
    late AnimationBehaviorFactory animationBehaviorFactory;

    // Java field initializers run after the base constructor
    void initFieldsImageArrayAnimationFactory() {
    this.dx = 0;
    this.dy = 0;
    
    
    }
    

    ImageArrayAnimationFactory(List<Image?> imageArray, int dx, int dy, AnimationBehaviorFactory animationBehaviorFactory) {
        this.initFieldsImageArrayAnimationFactory();
        this.imageArray = imageArray;
        this.animationBehaviorFactory = animationBehaviorFactory;
        this.dx = dx;
        this.dy = dy;
    }
    

    @override
    Animation getInstance1(int instanceId) {
        if (this.dx != 0 || this.dy != 0) {
            return AdjustedImageArrayAnimation(this.imageArray, this.dx, this.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return ImageArrayAnimation(this.imageArray, AnimationBehavior.getInstance());
        }
    }
    

    @override
    void setInitialScale(ScaleProperties scaleProperties) {
    }
}

