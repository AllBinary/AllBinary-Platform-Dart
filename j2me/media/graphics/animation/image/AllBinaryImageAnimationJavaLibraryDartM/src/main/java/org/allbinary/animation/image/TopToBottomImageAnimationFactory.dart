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
import 'package:allbinary/org/allbinary/animation/AnimationBehaviorFactory.dart';
import 'package:allbinary/org/allbinary/animation/image/BaseImageAnimationFactory.dart';
import 'package:allbinary/org/allbinary/animation/image/TopToBottomImageAnimation.dart';

class TopToBottomImageAnimationFactory extends BaseImageAnimationFactory {
    

    TopToBottomImageAnimationFactory(Image image, List<int> sequenceArray, AnimationBehaviorFactory animationBehaviorFactory) : super(image, sequenceArray, image.getWidth(), image.getHeight(), 0, 0, animationBehaviorFactory) {
        
    }
    

    @override
    Animation getInstance1(int instanceId) {
        final Image scaledImage = this.animationFactoryImageScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        return TopToBottomImageAnimation(scaledImage, this.getSequenceArray(), this.animationBehaviorFactory.getOrCreateInstance());
    }
}

