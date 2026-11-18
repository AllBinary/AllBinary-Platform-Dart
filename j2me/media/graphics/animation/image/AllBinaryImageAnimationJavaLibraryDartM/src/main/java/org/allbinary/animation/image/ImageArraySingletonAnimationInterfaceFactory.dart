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
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';
import 'package:allbinary/org/allbinary/animation/SingletonAnimationInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/animation/image/ImageArrayAnimation.dart';

class ImageArraySingletonAnimationInterfaceFactory extends SingletonAnimationInterfaceFactory {
    

    ImageArraySingletonAnimationInterfaceFactory(List<Image?> imageArray) : super(ImageArrayAnimation(imageArray, AnimationBehavior.getInstance())) {
        
    }
}

