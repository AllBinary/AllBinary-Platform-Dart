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
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';
import 'package:allbinary/org/allbinary/animation/SingletonAnimationInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/image/AnimationFrameToImageUtil.dart';
import 'package:allbinary/org/allbinary/animation/image/ImageAnimation.dart';

class ImageAnimationSingletonInterfaceFactory extends SingletonAnimationInterfaceFactory {
    

    ImageAnimationSingletonInterfaceFactory(Animation animationInterface, int width, int height) : super(ImageAnimation(AnimationFrameToImageUtil.getInstance().getInstanceWH(width, height, animationInterface), AnimationBehavior.getInstance())) {
        
    }
}

