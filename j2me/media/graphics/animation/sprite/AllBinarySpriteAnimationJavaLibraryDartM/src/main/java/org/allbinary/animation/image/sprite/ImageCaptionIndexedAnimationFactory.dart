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
import 'package:allbinary/javax/microedition/media/Player.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehaviorFactory.dart';
import 'package:allbinary/org/allbinary/animation/AnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/animation/caption/CaptionIndexedAnimation.dart';
import 'package:allbinary/org/allbinary/animation/image/ImageAnimation.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorUtil.dart';
import 'package:allbinary/org/allbinary/image/AnimationFactoryImageScaleUtil.dart';
import 'package:allbinary/org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/media/ScaleProperties.dart';
import 'package:allbinary/org/allbinary/media/audio/Sound.dart';
import 'package:allbinary/org/allbinary/animation/image/sprite/SpriteIndexedAnimation.dart';

class ImageCaptionIndexedAnimationFactory implements AnimationInterfaceFactoryInterface {
    late AnimationFactoryImageScaleUtil animationFactoryImageScaleUtil;
    late AnimationFactorySpriteScaleUtil animationFactorySpriteScaleUtil;
    late Image captionImage;
    late Image spriteMovieImage;
    int frameWidth = 0;
    int frameHeight = 0;
    int captionDx = 0;
    int captionDy = 0;
    int dx = 0;
    int dy = 0;
    int time = 0;
    late Sound soundInterface;
    late ScaleProperties scaleProperties;
    late AnimationBehaviorFactory animationBehaviorFactory;

    // Java field initializers run after the base constructor
    void initFieldsImageCaptionIndexedAnimationFactory() {
    this.animationFactoryImageScaleUtil = AnimationFactoryImageScaleUtil.getInstance();
    this.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance();
    
    
    
    
    
    
    
    
    
    
    this.scaleProperties = ScaleProperties.instance;
    
    }
    

    ImageCaptionIndexedAnimationFactory(Image captionImage, Image spriteMovieImage, Sound soundInterface, int frameWidth, int frameHeight, int captionDx, int captionDy, int dx, int dy, int time, AnimationBehaviorFactory animationBehaviorFactory) {
        this.initFieldsImageCaptionIndexedAnimationFactory();
        if (animationBehaviorFactory == AnimationBehaviorFactory.getInstance()) {
            ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", this);
        }
        this.captionImage = captionImage;
        this.spriteMovieImage = spriteMovieImage;
        this.frameWidth = frameWidth;
        this.frameHeight = frameHeight;
        this.captionDx = captionDx;
        this.captionDy = captionDy;
        this.dx = dx;
        this.dy = dy;
        this.time = time;
        this.soundInterface = soundInterface;
        this.animationBehaviorFactory = animationBehaviorFactory;
    }
    

    @override
    Animation getInstance1(int instanceId) {
        final Image scaledImage = this.animationFactoryImageScaleUtil.createImage(this.captionImage, this.captionImage.getWidth(), this.captionImage.getHeight(), this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        final Animation animationInterface = ImageAnimation(scaledImage, this.animationBehaviorFactory.getOrCreateInstance());
        final Sprite sprite = this.animationFactorySpriteScaleUtil.createImage(this.spriteMovieImage, this.frameWidth, this.frameHeight, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        final IndexedAnimation movieIndexedAnimationInterface = SpriteIndexedAnimation(sprite, this.spriteMovieImage, BasicColorUtil.getInstance().ZERO_ARRAY, this.animationBehaviorFactory.getOrCreateInstance());
        Player player = this.soundInterface.getPlayerP();
        if (player == null) {
            throw JException('Exception', "Sound Was not Initialized");
        }
        return CaptionIndexedAnimation(animationInterface, movieIndexedAnimationInterface, player, this.captionDx, this.captionDy, this.dx, this.dy, this.time, this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    @override
    void setInitialScale(ScaleProperties scaleProperties) {
        this.scaleProperties = scaleProperties;
    }
}

