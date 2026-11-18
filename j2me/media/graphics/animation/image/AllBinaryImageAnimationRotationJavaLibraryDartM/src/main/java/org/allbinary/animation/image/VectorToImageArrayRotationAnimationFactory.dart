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
import 'package:allbinary/org/allbinary/animation/VectorAnimation.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationCentral.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/image/AnimationFrameToImageUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';
import 'package:allbinary/org/allbinary/math/AngleFactory.dart';
import 'package:allbinary/org/allbinary/math/AngleInfo.dart';
import 'package:allbinary/org/allbinary/media/ScaleProperties.dart';
import 'package:allbinary/org/allbinary/media/image/ImageToRotationImageArrayUtil.dart';
import 'package:allbinary/org/allbinary/vector/VectorInfo.dart';
import 'package:allbinary/org/allbinary/animation/image/BaseImageAnimationFactory.dart';
import 'package:allbinary/org/allbinary/animation/image/AdjustedImageArrayRotationAnimation.dart';

class VectorToImageArrayRotationAnimationFactory extends BaseImageAnimationFactory {
    late List<Image?> imageArray;
    int angleIncrement = 0;

    // Java field initializers run after the base constructor
    void initFieldsVectorToImageArrayRotationAnimationFactory() {
    this.imageArray = NullImage.NULL_IMAGE_ARRAY;
    this.angleIncrement = 0;
    }
    

    VectorToImageArrayRotationAnimationFactory(VectorInfo vectorInfo, BasicColor basicColor, AnimationBehaviorFactory animationBehaviorFactory) : super(AnimationFrameToImageUtil.getInstance().getInstanceTranslate(vectorInfo.getWidth(), vectorInfo.getHeight(), VectorAnimation.createVectorAnimation(vectorInfo.getPoints(), basicColor, animationBehaviorFactory.getOrCreateInstance())), PrimitiveIntUtil.getArrayInstance(), 0, 0, 0, 0, animationBehaviorFactory) {
        this.initFieldsVectorToImageArrayRotationAnimationFactory();
        
        this.init();
    }
    

    void init() {
        final AngleFactory angleFactory = AngleFactory.getInstance();
        this.angleIncrement = angleFactory.TOTAL_ANGLE ~/ GameConfigurationCentral.getInstance().getGameControlFidelity();
        this.imageArray = ImageToRotationImageArrayUtil.getInstance().generate(this.getImage(), this.getAngleIncrement(), angleFactory.TOTAL_ANGLE);
    }
    

    @override
    Animation getInstance1(int instanceId) {
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            return AdjustedImageArrayRotationAnimation(this.imageArray, AngleInfo.getInstance1((this.getAngleIncrement()).toSigned(16)), AngleFactory.getInstance().TOTAL_ANGLE, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return AdjustedImageArrayRotationAnimation.createAnimation(this.imageArray, AngleInfo.getInstance1((this.angleIncrement).toSigned(16)), AngleFactory.getInstance().TOTAL_ANGLE, this.animationBehaviorFactory.getOrCreateInstance());
        }
    }
    

    int getAngleIncrement() {
        return this.angleIncrement;
    }
    

    @override
    void setInitialScale(ScaleProperties scaleProperties) {
    }
}

