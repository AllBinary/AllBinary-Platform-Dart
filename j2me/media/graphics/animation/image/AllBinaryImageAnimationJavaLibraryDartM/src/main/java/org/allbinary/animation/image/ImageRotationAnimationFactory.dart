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
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';
import 'package:allbinary/org/allbinary/math/AngleFactory.dart';
import 'package:allbinary/org/allbinary/math/AngleInfo.dart';
import 'package:allbinary/org/allbinary/animation/image/BaseImageAnimationFactory.dart';
import 'package:allbinary/org/allbinary/animation/image/ImageBaseRotationAnimation.dart';
import 'package:allbinary/org/allbinary/animation/image/AdjustedImageBaseRotationAnimation.dart';

class ImageRotationAnimationFactory extends BaseImageAnimationFactory {
    int angleIncrement = 0;

    // Java field initializers run after the base constructor
    void initFieldsImageRotationAnimationFactory() {
    
    }
    

    ImageRotationAnimationFactory(Image image, int width, int height, int dx, int dy, int angleIncrement, AnimationBehaviorFactory animationBehaviorFactory) : super(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory) {
        this.initFieldsImageRotationAnimationFactory();
        
        this.angleIncrement = angleIncrement;
        this.animationFactoryInitializationVisitor.dx = dx;
        this.animationFactoryInitializationVisitor.dy = dy;
    }
    

    @override
    Animation getInstance1(int instanceId) {
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            this.animationFactoryImageScaleUtil.processAdjust(this);
            return AdjustedImageBaseRotationAnimation(this.getImage(), AngleInfo.getInstance1(this.angleIncrement), AngleFactory.getInstance().TOTAL_ANGLE, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return ImageBaseRotationAnimation(this.getImage(), AngleInfo.getInstance1(this.angleIncrement), AngleFactory.getInstance().TOTAL_ANGLE, this.animationBehaviorFactory.getOrCreateInstance());
        }
    }
    

    int getAngleIncrementP() {
        return this.angleIncrement;
    }
}

