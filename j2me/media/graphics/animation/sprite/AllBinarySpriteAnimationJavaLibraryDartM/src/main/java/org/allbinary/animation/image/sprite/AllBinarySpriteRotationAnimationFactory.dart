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
// package org.allbinary.animation.image.sprite

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/javax/microedition/lcdui/game/Sprite.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehaviorFactory.dart';
import 'package:allbinary/org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/animation/image/BaseImageAnimationFactory.dart';
import 'package:allbinary/org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';
import 'package:allbinary/org/allbinary/animation/image/sprite/AllBinarySpriteRotationAnimation.dart';
import 'package:allbinary/org/allbinary/animation/image/sprite/AllBinaryAdjustedSpriteRotationAnimation.dart';

class AllBinarySpriteRotationAnimationFactory extends BaseImageAnimationFactory implements ProceduralAnimationInterfaceFactoryInterface {
    late AnimationFactorySpriteScaleUtil animationFactorySpriteScaleUtil;

    // Java field initializers run after the base constructor
    void initFieldsAllBinarySpriteRotationAnimationFactory() {
    this.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance();
    }
    

    static AllBinarySpriteRotationAnimationFactory createWHDY(Image image, int dx, int dy, AnimationBehaviorFactory animationBehaviorFactory) {
        final AllBinarySpriteRotationAnimationFactory spriteRotationAnimationFactory = AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), (image.getHeight() >> 2), (image.getHeight() >> 2), 0, 0, animationBehaviorFactory);
        spriteRotationAnimationFactory.initWH(dx, dy);
        return spriteRotationAnimationFactory;
    }
    

    static AllBinarySpriteRotationAnimationFactory createWH(Image image, AnimationBehaviorFactory animationBehaviorFactory) {
        return AllBinarySpriteRotationAnimationFactory.createWHDY(image, 0, 0, animationBehaviorFactory);
    }
    

    static AllBinarySpriteRotationAnimationFactory createDXY(Image image, int dx, int dy, AnimationBehaviorFactory animationBehaviorFactory) {
        final AllBinarySpriteRotationAnimationFactory spriteRotationAnimationFactory = AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory);
        spriteRotationAnimationFactory.init(dx, dy);
        return spriteRotationAnimationFactory;
    }
    

    static AllBinarySpriteRotationAnimationFactory createDXYQ(Image image, int dx, int dy, AnimationBehaviorFactory animationBehaviorFactory) {
        final AllBinarySpriteRotationAnimationFactory spriteRotationAnimationFactory = AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), (image.getHeight() >> 2), (image.getHeight() >> 2), 0, 0, animationBehaviorFactory);
        spriteRotationAnimationFactory.init(dx, dy);
        return spriteRotationAnimationFactory;
    }
    

    static AllBinarySpriteRotationAnimationFactory createQ(Image image, AnimationBehaviorFactory animationBehaviorFactory) {
        return AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), (image.getHeight() >> 2), (image.getHeight() >> 2), 0, 0, animationBehaviorFactory);
    }
    

    static AllBinarySpriteRotationAnimationFactory createWHF(Image image, AnimationBehaviorFactory animationBehaviorFactory) {
        return AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory);
    }
    

    AllBinarySpriteRotationAnimationFactory(Image image, List<int> sequenceArray, int width, int height, int dx, int dy, AnimationBehaviorFactory animationBehaviorFactory) : super(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory) {
        this.initFieldsAllBinarySpriteRotationAnimationFactory();
        
        if (animationBehaviorFactory == AnimationBehaviorFactory.getInstance()) {
            ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", this);
        }
    }
    

    void init(int dx, int dy) {
        this.animationFactoryInitializationVisitor.dx = dx;
        this.animationFactoryInitializationVisitor.dy = dy;
    }
    

    void initWH(int dx, int dy) {
        this.init(dx, dy);
        this.animationFactoryInitializationVisitor.dx += -this.animationFactoryInitializationVisitor.width ~/ 5;
        this.animationFactoryInitializationVisitor.dy += -this.animationFactoryInitializationVisitor.height ~/ 5;
    }
    

    @override
    Animation getInstance1(int instanceId) {
        final Sprite sprite = this.animationFactorySpriteScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            return AllBinaryAdjustedSpriteRotationAnimation(sprite, this.getImage(), this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return AllBinarySpriteRotationAnimation(sprite, this.getImage(), this.animationBehaviorFactory.getOrCreateInstance());
        }
    }
    

    @override
    Animation getInstanceAnimation(Animation animationInterface) {
        return this.getInstance1(0);
    }
}

