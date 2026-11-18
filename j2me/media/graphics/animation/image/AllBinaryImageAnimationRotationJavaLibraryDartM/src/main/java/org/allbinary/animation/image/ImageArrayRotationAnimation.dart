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
import 'package:allbinary/org/allbinary/math/AngleInfo.dart';
import 'package:allbinary/org/allbinary/animation/image/ImageArrayBaseRotationAnimation.dart';
import 'package:allbinary/org/allbinary/animation/image/ImageArrayRotationAnimationInfo.dart';

class ImageArrayRotationAnimation extends ImageArrayBaseRotationAnimation {
    int expectedTotalFrames = 0;

    // Java field initializers run after the base constructor
    void initFieldsImageArrayRotationAnimation() {
    this.expectedTotalFrames = 0;
    }
    

    static ImageArrayRotationAnimation createAnimation(Object anyType, AnimationBehavior animationBehavior) {
        final ImageArrayRotationAnimationInfo imageRotationAnimationInfo = (anyType as ImageArrayRotationAnimationInfo);
        return ImageArrayRotationAnimation(imageRotationAnimationInfo.getImageArray(), imageRotationAnimationInfo.getAngleInfoP(), imageRotationAnimationInfo.getTotalAngle(), animationBehavior);
    }
    

    ImageArrayRotationAnimation(List<Image?> imageArray, AngleInfo angleInfo, int totalAngle, AnimationBehavior animationBehavior) : super(imageArray, angleInfo, animationBehavior) {
        this.initFieldsImageArrayRotationAnimation();
        
        this.initImageArray(imageArray, angleInfo, totalAngle);
    }
    

    void initImageArray(List<Image?> imageArray, AngleInfo angleInfo, int totalAngle) {
        this.expectedTotalFrames = totalAngle ~/ this.angleInfo.getAngleIncrementInfo().getAngleIncrement();
        this.angleInfo.adjustAngle(0);
        if (this.expectedTotalFrames != this.getSize()) {
            throw JException('Exception', "Wrong Number of Frames");
        }
    }
    

    @override
    void setImageArray(List<Image?> imageArray) {
        super.setImageArray(imageArray);
        this.angleInfo.adjustAngle(0);
    }
}

