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
import 'package:allbinary/org/allbinary/AndroidUtil.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehaviorFactory.dart';
import 'package:allbinary/org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/animation/image/BaseImageAnimationFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorUtil.dart';
import 'package:allbinary/org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';
import 'package:allbinary/org/allbinary/animation/image/sprite/SpriteIndexedAnimation.dart';
import 'package:allbinary/org/allbinary/animation/image/sprite/AdjustedSpriteIndexedAnimation.dart';

class SpriteIndexedAnimationFactory extends BaseImageAnimationFactory implements ProceduralAnimationInterfaceFactoryInterface {
    late AnimationFactorySpriteScaleUtil animationFactorySpriteScaleUtil;
    late List<BasicColor?> basicColorArray;

    // Java field initializers run after the base constructor
    void initFieldsSpriteIndexedAnimationFactory() {
    this.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance();
    this.basicColorArray = BasicColorUtil.getInstance().ZERO_ARRAY;
    }
    

    static SpriteIndexedAnimationFactory createCWHDXY(Image image, List<BasicColor?> basicColorArray, int width, int height, int dx, int dy, AnimationBehaviorFactory animationBehaviorFactory) {
        return SpriteIndexedAnimationFactory(image, basicColorArray, PrimitiveIntUtil.getArrayInstance(), width, height, dx, dy, animationBehaviorFactory);
    }
    

    static SpriteIndexedAnimationFactory createCWH(Image image, List<BasicColor?> basicColorArray, int width, int height, AnimationBehaviorFactory animationBehaviorFactory) {
        final SpriteIndexedAnimationFactory spriteIndexedAnimationFactory = SpriteIndexedAnimationFactory(image, basicColorArray, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory);
        spriteIndexedAnimationFactory.initHWH();
        return spriteIndexedAnimationFactory;
    }
    

    static SpriteIndexedAnimationFactory createWH(Image image, int width, int height, AnimationBehaviorFactory animationBehaviorFactory) {
        return SpriteIndexedAnimationFactory(image, BasicColorUtil.getInstance().ZERO_ARRAY, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory);
    }
    

    SpriteIndexedAnimationFactory(Image image, List<BasicColor?> basicColorArray, List<int> sequenceArray, int width, int height, int dx, int dy, AnimationBehaviorFactory animationBehaviorFactory) : super(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory) {
        this.initFieldsSpriteIndexedAnimationFactory();
        
        this.basicColorArray = basicColorArray;
    }
    

    void initHWH() {
        this.animationFactoryInitializationVisitor.dx = -(this.animationFactoryInitializationVisitor.width >> 2);
        this.animationFactoryInitializationVisitor.dy = -(this.animationFactoryInitializationVisitor.height >> 2);
        if (AndroidUtil.isAndroid()) {
            this.animationFactoryInitializationVisitor.dx += 3;
        }
    }
    

    @override
    Animation getInstance1(int instanceId) {
        final Sprite sprite = this.animationFactorySpriteScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            return AdjustedSpriteIndexedAnimation(sprite, this.getImage(), this.basicColorArray, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return SpriteIndexedAnimation(sprite, this.getImage(), this.basicColorArray, this.animationBehaviorFactory.getOrCreateInstance());
        }
    }
    

    @override
    Animation getInstanceAnimation(Animation animationInterface) {
        return this.getInstance1(0);
    }
}

