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
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';
import 'package:allbinary/org/allbinary/animation/image/sprite/SpriteIndexedAnimation.dart';

class ColorCompositeSpriteIndexedAnimationFactory extends BaseImageAnimationFactory implements ProceduralAnimationInterfaceFactoryInterface {
    late AnimationFactorySpriteScaleUtil animationFactorySpriteScaleUtil;
    late List<BasicColor?> basicColorArray;

    // Java field initializers run after the base constructor
    void initFieldsColorCompositeSpriteIndexedAnimationFactory() {
    this.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance();
    
    }
    

    ColorCompositeSpriteIndexedAnimationFactory(Image image, List<BasicColor?> basicColorArray, int width, int height, AnimationBehaviorFactory animationBehaviorFactory) : super(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory) {
        this.initFieldsColorCompositeSpriteIndexedAnimationFactory();
        
        this.basicColorArray = basicColorArray;
    }
    

    @override
    Animation getInstance1(int instanceId) {
        final Sprite sprite = this.animationFactorySpriteScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        return SpriteIndexedAnimation(sprite, this.getImage(), this.basicColorArray, this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    @override
    Animation getInstanceAnimation(Animation animationInterface) {
        return this.getInstance1(0);
    }
}

