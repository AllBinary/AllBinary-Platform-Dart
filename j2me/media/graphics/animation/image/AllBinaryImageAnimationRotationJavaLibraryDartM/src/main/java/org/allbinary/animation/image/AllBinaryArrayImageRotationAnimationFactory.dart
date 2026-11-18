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
import 'package:allbinary/javax/microedition/lcdui/NullImage.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehaviorFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationCentral.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';
import 'package:allbinary/org/allbinary/math/AngleFactory.dart';
import 'package:allbinary/org/allbinary/math/AngleInfo.dart';
import 'package:allbinary/org/allbinary/media/image/ImageToRotationImageArrayUtil.dart';
import 'package:allbinary/org/allbinary/animation/image/BaseImageAnimationFactory.dart';
import 'package:allbinary/org/allbinary/animation/image/ImageArrayRotationAnimation.dart';
import 'package:allbinary/org/allbinary/animation/image/AdjustedImageArrayRotationAnimation.dart';

class AllBinaryArrayImageRotationAnimationFactory extends BaseImageAnimationFactory {
    late List<Image?> imageArray;
    int angleIncrement = 0;

    // Java field initializers run after the base constructor
    void initFieldsAllBinaryArrayImageRotationAnimationFactory() {
    this.imageArray = NullImage.NULL_IMAGE_ARRAY;
    
    }
    

    static AllBinaryArrayImageRotationAnimationFactory createFactory(Image image, int dx, int dy) {
        final AllBinaryArrayImageRotationAnimationFactory arrayImageRotationAnimationFactory = AllBinaryArrayImageRotationAnimationFactory(image, image.getWidth(), image.getHeight(), AngleFactory.getInstance().TOTAL_ANGLE ~/ GameConfigurationCentral.getInstance().getGameControlFidelity(), AnimationBehaviorFactory.getInstance());
        arrayImageRotationAnimationFactory.initDXY(dx, dy);
        return arrayImageRotationAnimationFactory;
    }
    

    static AllBinaryArrayImageRotationAnimationFactory createFactoryA(Image image, int dx, int dy, int angleIncrement) {
        final AllBinaryArrayImageRotationAnimationFactory arrayImageRotationAnimationFactory = AllBinaryArrayImageRotationAnimationFactory(image, image.getWidth(), image.getHeight(), angleIncrement, AnimationBehaviorFactory.getInstance());
        arrayImageRotationAnimationFactory.initDXY(dx, dy);
        return arrayImageRotationAnimationFactory;
    }
    

    AllBinaryArrayImageRotationAnimationFactory(Image image, int width, int height, int angleIncrement, AnimationBehaviorFactory animationBehaviorFactory) : super(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory) {
        this.initFieldsAllBinaryArrayImageRotationAnimationFactory();
        
        this.angleIncrement = angleIncrement;
        this.init();
    }
    

    void init() {
        this.setImageArray(ImageToRotationImageArrayUtil.getInstance().generate(this.getImage(), this.getAngleIncrement(), AngleFactory.getInstance().TOTAL_ANGLE));
    }
    

    void initDXY(int dx, int dy) {
        this.animationFactoryInitializationVisitor.dx = dx;
        this.animationFactoryInitializationVisitor.dy = dy;
        this.animationFactoryInitializationVisitor.originalDx = dx;
        this.animationFactoryInitializationVisitor.originalDy = dy;
    }
    

    @override
    Animation getInstance1(int instanceId) {
        final List<Image?> scaledImageArray = List<Image?>.filled(this.imageArray.length, null);
        final int size = scaledImageArray.length;
        final Image image = this.getImage();
        for (int index = 0; index < size; index++) {
            scaledImageArray[index] = this.animationFactoryImageScaleUtil.createImage(image, image.getWidth(), image.getHeight(), this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        }
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            this.animationFactoryImageScaleUtil.processAdjust(this);
            return AdjustedImageArrayRotationAnimation(scaledImageArray, AngleInfo.getInstance1((this.getAngleIncrement()).toSigned(16)), AngleFactory.getInstance().TOTAL_ANGLE, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return ImageArrayRotationAnimation(scaledImageArray, AngleInfo.getInstance1((this.getAngleIncrement()).toSigned(16)), AngleFactory.getInstance().TOTAL_ANGLE, this.animationBehaviorFactory.getOrCreateInstance());
        }
    }
    

    void setImageArray(List<Image?> imageArray) {
        this.imageArray = imageArray;
    }
    

    int getAngleIncrement() {
        return this.angleIncrement;
    }
}

