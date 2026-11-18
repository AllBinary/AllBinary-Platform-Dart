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
// package org.allbinary.image

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/org/allbinary/animation/image/AnimationFactoryInitializationVisitor.dart';
import 'package:allbinary/org/allbinary/animation/image/BaseImageAnimationFactory.dart';
import 'package:allbinary/org/allbinary/media/ScaleProperties.dart';
import 'package:allbinary/org/allbinary/media/image/ImageJ2MEScaleUtil.dart';

class AnimationFactoryImageScaleUtil {
    static final AnimationFactoryImageScaleUtil instance = AnimationFactoryImageScaleUtil();
    late ImageJ2MEScaleUtil imageScaleUtil;

    // Java field initializers run after the base constructor
    void initFieldsAnimationFactoryImageScaleUtil() {
    this.imageScaleUtil = ImageJ2MEScaleUtil.getInstance();
    }

    AnimationFactoryImageScaleUtil() {
        this.initFieldsAnimationFactoryImageScaleUtil();
    }
    

    static AnimationFactoryImageScaleUtil getInstance() {
        return AnimationFactoryImageScaleUtil.instance;
    }
    

    Image createImage(Image image, int width, int height, int scaleWidth, int scaleHeight) {
        late Image scaledImage;
        if (scaleWidth != 0 && scaleHeight != 0) {
            final double scaleX = ((scaleWidth).toDouble()) / ((width).toDouble());
            final double scaleY = ((scaleHeight).toDouble()) / ((height).toDouble());
            if ((scaleX == 1.0 && scaleY == 1.0) || (scaleX == 0.0 || scaleY == 0.0)) {
                scaledImage = image;
            } else {
                final int scaledWidth = JMath.toInt32((scaleX * (width).toDouble()));
                final int scaledHeight = JMath.toInt32((scaleY * (height).toDouble()));
                scaledImage = this.imageScaleUtil.scale(image, scaledWidth, scaledHeight);
            }
        } else {
            scaledImage = image;
        }
        return scaledImage;
    }
    

    void processAdjust(BaseImageAnimationFactory baseImageAnimationFactory) {
        final ScaleProperties scaleProperties = baseImageAnimationFactory.getScalePropertiesP();
        if (scaleProperties.scaleWidth != 0 && scaleProperties.scaleHeight != 0) {
            final AnimationFactoryInitializationVisitor animationFactoryInitializationVisitor = baseImageAnimationFactory.getAnimationFactoryInitializationVisitorP();
            final double scaleX = ((scaleProperties.scaleWidth).toDouble()) / ((animationFactoryInitializationVisitor.width).toDouble());
            final double scaleY = ((scaleProperties.scaleHeight).toDouble()) / ((animationFactoryInitializationVisitor.height).toDouble());
            if ((scaleX == 1.0 && scaleY == 1.0) || (scaleX == 0.0 || scaleY == 0.0)) {
            } else {
                animationFactoryInitializationVisitor.dx = JMath.toInt32(((animationFactoryInitializationVisitor.originalDx).toDouble() * scaleX));
                animationFactoryInitializationVisitor.dy = JMath.toInt32(((animationFactoryInitializationVisitor.originalDy).toDouble() * scaleY));
            }
        } else {
        }
    }
}

