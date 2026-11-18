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
// package org.allbinary.animation.text

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehaviorFactory.dart';
import 'package:allbinary/org/allbinary/animation/AnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/media/ScaleProperties.dart';
import 'package:allbinary/org/allbinary/animation/text/CustomTextAnimation.dart';
import 'package:allbinary/org/allbinary/animation/text/AdjustCustomTextAnimation.dart';

class CustomTextAnimationFactory implements AnimationInterfaceFactoryInterface {
    late LogUtil logUtil;
    late AnimationBehaviorFactory animationBehaviorFactory;
    late BasicColor basicColor;
    late String text;
    int initScaleHeight = 0;
    int dx = 0;
    int dy = 0;
    late Font font;
    late ScaleProperties scaleProperties;

    // Java field initializers run after the base constructor
    void initFieldsCustomTextAnimationFactory() {
    this.logUtil = LogUtil.getInstance();
    
    this.basicColor = BasicColorFactory.getInstance().BLACK;
    
    
    this.dx = 0;
    this.dy = 0;
    
    
    }
    

    static CustomTextAnimationFactory createDXY(String text, int fontSize, int dx, int dy, AnimationBehaviorFactory animationBehaviorFactory) {
        final CustomTextAnimationFactory customTextAnimationFactory = CustomTextAnimationFactory(text, fontSize, animationBehaviorFactory);
        customTextAnimationFactory.dx = dx;
        customTextAnimationFactory.dy = dy;
        return customTextAnimationFactory;
    }
    

    CustomTextAnimationFactory(String text, int fontSize, AnimationBehaviorFactory animationBehaviorFactory) {
        this.initFieldsCustomTextAnimationFactory();
        this.scaleProperties = ScaleProperties();
        this.text = text;
        this.scaleProperties.scaleHeight = fontSize - (fontSize ~/ 4);
        this.initScaleHeight = this.scaleProperties.scaleHeight;
        this.animationBehaviorFactory = animationBehaviorFactory;
        this.font = Font.getFont(Font.FACE_SYSTEM, Font.STYLE_PLAIN, this.initScaleHeight);
    }
    

    @override
    Animation getInstance1(int instanceId) {
        late CustomTextAnimation customTextAnimation;
        if (this.dx != 0 || this.dy != 0) {
            customTextAnimation = AdjustCustomTextAnimation(this.text, this.scaleProperties.scaleHeight, this.dx, this.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            customTextAnimation = CustomTextAnimation(this.text, this.scaleProperties.scaleHeight, this.animationBehaviorFactory.getOrCreateInstance());
        }
        customTextAnimation.setBasicColorP(this.basicColor);
        return customTextAnimation;
    }
    

    @override
    void setInitialScale(ScaleProperties scaleProperties) {
    }
    

    int getWidth() {
        return this.font.stringWidth(this.text);
    }
    

    int getHeight() {
        return this.font.getHeight();
    }
}

