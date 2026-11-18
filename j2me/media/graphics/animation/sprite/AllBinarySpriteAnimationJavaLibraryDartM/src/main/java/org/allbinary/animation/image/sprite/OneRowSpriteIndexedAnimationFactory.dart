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
import 'package:allbinary/org/allbinary/animation/image/BaseImageAnimationFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorUtil.dart';
import 'package:allbinary/org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';
import 'package:allbinary/org/allbinary/animation/image/sprite/SpriteIndexedAnimation.dart';
import 'package:allbinary/org/allbinary/animation/image/sprite/AdjustedSpriteIndexedAnimation.dart';

class OneRowSpriteIndexedAnimationFactory extends BaseImageAnimationFactory {
    late AnimationFactorySpriteScaleUtil animationFactorySpriteScaleUtil;

    // Java field initializers run after the base constructor
    void initFieldsOneRowSpriteIndexedAnimationFactory() {
    this.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance();
    }
    

    static OneRowSpriteIndexedAnimationFactory createFactoryDX(Image image, int dx, AnimationBehaviorFactory animationBehaviorFactory) {
        final OneRowSpriteIndexedAnimationFactory oneRowSpriteIndexedAnimationFactory = OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory);
        oneRowSpriteIndexedAnimationFactory.initW(dx);
        return oneRowSpriteIndexedAnimationFactory;
    }
    

    static OneRowSpriteIndexedAnimationFactory createFactoryDXY(Image image, int dx, int dy, AnimationBehaviorFactory animationBehaviorFactory) {
        final OneRowSpriteIndexedAnimationFactory oneRowSpriteIndexedAnimationFactory = OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory);
        oneRowSpriteIndexedAnimationFactory.init(dx, dy);
        return oneRowSpriteIndexedAnimationFactory;
    }
    

    static OneRowSpriteIndexedAnimationFactory createFactoryWH(Image image, int width, int height, AnimationBehaviorFactory animationBehaviorFactory) {
        return OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory);
    }
    

    static OneRowSpriteIndexedAnimationFactory createFactory(Image image, AnimationBehaviorFactory animationBehaviorFactory) {
        return OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory);
    }
    

    OneRowSpriteIndexedAnimationFactory(Image image, List<int> sequenceArray, int width, int height, int dx, int dy, AnimationBehaviorFactory animationBehaviorFactory) : super(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory) {
        this.initFieldsOneRowSpriteIndexedAnimationFactory();
        
    }
    

    void init(int dx, int dy) {
        this.animationFactoryInitializationVisitor.dx = dx;
        this.animationFactoryInitializationVisitor.dy = dy;
    }
    

    void initW(int dx) {
        this.init(dx, 0);
        this.animationFactoryInitializationVisitor.dx += -(this.animationFactoryInitializationVisitor.width >> 2);
    }
    

    @override
    Animation getInstance1(int instanceId) {
        final Sprite sprite = this.animationFactorySpriteScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            return AdjustedSpriteIndexedAnimation(sprite, this.getImage(), BasicColorUtil.getInstance().ZERO_ARRAY, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return SpriteIndexedAnimation(sprite, this.getImage(), BasicColorUtil.getInstance().ZERO_ARRAY, this.animationBehaviorFactory.getOrCreateInstance());
        }
    }
}

