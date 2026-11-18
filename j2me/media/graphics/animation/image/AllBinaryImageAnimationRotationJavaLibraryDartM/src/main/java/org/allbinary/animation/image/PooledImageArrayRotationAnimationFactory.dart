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
import 'package:allbinary/org/allbinary/animation/AnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationCentral.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/math/AngleFactory.dart';
import 'package:allbinary/org/allbinary/media/ScaleProperties.dart';
import 'package:allbinary/org/allbinary/media/image/ImageToRotationImageArrayUtil.dart';
import 'package:allbinary/org/allbinary/animation/image/ImageArrayRotationAnimationInfo.dart';
import 'package:allbinary/org/allbinary/animation/image/AdjustedImageArrayRotationAnimation.dart';

//TWB - Adjustments should be done in the resource creation and not at the animation level
class PooledImageArrayRotationAnimationFactory implements AnimationInterfaceFactoryInterface {
    late Object allBinaryImageRotationAnimationInfo;
    late AnimationBehaviorFactory animationBehaviorFactory;

    // Java field initializers run after the base constructor
    void initFieldsPooledImageArrayRotationAnimationFactory() {
    this.allBinaryImageRotationAnimationInfo = NullUtil.getInstance().NULL_OBJECT;
    
    }
    

    static PooledImageArrayRotationAnimationFactory createFactory(Image image, AnimationBehaviorFactory animationBehaviorFactory) {
        final int totalAngle = AngleFactory.getInstance().TOTAL_ANGLE;
        final int angleIncrement = (totalAngle ~/ GameConfigurationCentral.getInstance().getGameControlFidelity());
        return PooledImageArrayRotationAnimationFactory(image, image.getWidth(), image.getHeight(), -(image.getWidth() >> 2), -(image.getHeight() >> 2), angleIncrement, animationBehaviorFactory);
    }
    

    static PooledImageArrayRotationAnimationFactory createDXY(Image image, int dx, int dy, AnimationBehaviorFactory animationBehaviorFactory) {
        final int totalAngle = AngleFactory.getInstance().TOTAL_ANGLE;
        final int angleIncrement = (totalAngle ~/ GameConfigurationCentral.getInstance().getGameControlFidelity());
        return PooledImageArrayRotationAnimationFactory(image, image.getWidth(), image.getHeight(), dx, dy, angleIncrement, animationBehaviorFactory);
    }
    

    PooledImageArrayRotationAnimationFactory(Image image, int width, int height, int dx, int dy, int angleIncrement, AnimationBehaviorFactory animationBehaviorFactory) {
        this.initFieldsPooledImageArrayRotationAnimationFactory();
        this.animationBehaviorFactory = animationBehaviorFactory;
        final int totalAngle = AngleFactory.getInstance().TOTAL_ANGLE;
        final List<Image?> imageArray = ImageToRotationImageArrayUtil.getInstance().generate(image, angleIncrement, totalAngle);
        this.allBinaryImageRotationAnimationInfo = ImageArrayRotationAnimationInfo(imageArray, angleIncrement, totalAngle, dx, dy);
    }
    

    @override
    Animation getInstance1(int instanceId) {
        return AdjustedImageArrayRotationAnimation.createAdjustedImageArrayRotationAnimationInfo(this.allBinaryImageRotationAnimationInfo, this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    @override
    void setInitialScale(ScaleProperties scaleProperties) {
    }
}

