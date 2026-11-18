/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.image.sprite

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/javax/microedition/lcdui/game/Sprite.dart';
import 'package:allbinary/org/allbinary/game/layer/SpriteFactory.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLUtil.dart';
import 'package:allbinary/org/allbinary/image/ImageCache.dart';
import 'package:allbinary/org/allbinary/image/ImageCacheFactory.dart';
import 'package:allbinary/org/allbinary/image/opengles/OpenGLESImageExclusionUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/J2SEMath.dart';
import 'package:allbinary/org/allbinary/media/image/ImageScaleUtil.dart';

class AnimationFactorySpriteScaleUtil {
    static final AnimationFactorySpriteScaleUtil instance = AnimationFactorySpriteScaleUtil();
    late ImageCache imageCache;
    late ImageScaleUtil imageScaleUtil;
    late OpenGLUtil openGLUtil;
    late J2SEMath j2seMath;
    late OpenGLESImageExclusionUtil openGLESImageExclusionUtil;

    // Java field initializers run after the base constructor
    void initFieldsAnimationFactorySpriteScaleUtil() {
    this.imageCache = ImageCacheFactory.getInstance();
    this.imageScaleUtil = ImageScaleUtil.getInstance();
    this.openGLUtil = OpenGLUtil.getInstance();
    this.j2seMath = J2SEMath.getInstance();
    this.openGLESImageExclusionUtil = OpenGLESImageExclusionUtil.getInstance();
    }

    AnimationFactorySpriteScaleUtil() {
        this.initFieldsAnimationFactorySpriteScaleUtil();
    }
    

    static AnimationFactorySpriteScaleUtil getInstance() {
        return AnimationFactorySpriteScaleUtil.instance;
    }
    

    Sprite createImage(Image image, int width, int height, int scaleWidth, int scaleHeight) {
        final SpriteFactory spriteFactory = SpriteFactory.getInstance();
        late Sprite sprite;
        late Image scaledImage;
        if (scaleWidth != 0 && scaleHeight != 0) {
            double scaleX = ((scaleWidth).toDouble()) / ((width).toDouble());
            double scaleY = ((scaleHeight).toDouble()) / ((height).toDouble());
            if ((scaleX == 1.0 && scaleY == 1.0) || (scaleX == 0.0 || scaleY == 0.0)) {
                scaledImage = this.openGLUtil.addImage(image);
                sprite = spriteFactory.createSprite(scaledImage, width, height);
            } else {
                if (this.openGLESImageExclusionUtil.isCustomScaling(image)) {
                    final int width2 = this.j2seMath.round(((scaleWidth)).toDouble() - 0.5);
                    final int height2 = this.j2seMath.round(((scaleHeight)).toDouble() - 0.5);
                    final int multiplesOf16Width = width2 ~/ 16;
                    final int by16Width = multiplesOf16Width * 16;
                    scaleX = ((by16Width).toDouble()) / (width).toDouble();
                    final int multiplesOf16Height = height2 ~/ 16;
                    final int by16Height = multiplesOf16Height * 16;
                    scaleY = ((by16Height).toDouble()) / (height).toDouble();
                    if (scaleWidth < width) {
                        scaleX = scaleX * 2.35;
                    }
                    if (scaleHeight < height) {
                        scaleY = scaleY * 2.35;
                    }
                }
                scaledImage = this.imageScaleUtil.createImage2(this.imageCache, image, scaleX, 1.0, scaleY, 1.0, true);
                sprite = spriteFactory.createSprite(scaledImage, JMath.toInt32(((width).toDouble() * scaleX)), JMath.toInt32(((height).toDouble() * scaleY)));
            }
        } else {
            scaledImage = this.openGLUtil.addImage(image);
            sprite = spriteFactory.createSprite(scaledImage, width, height);
        }
        return sprite;
    }
}

