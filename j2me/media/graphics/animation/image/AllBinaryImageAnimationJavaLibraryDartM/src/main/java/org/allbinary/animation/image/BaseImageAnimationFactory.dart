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
import 'package:allbinary/org/allbinary/animation/AnimationInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/animation/NullAnimationFactory.dart';
import 'package:allbinary/org/allbinary/image/AnimationFactoryImageScaleUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/media/ScaleProperties.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/animation/image/AnimationFactoryInitializationVisitor.dart';

class BaseImageAnimationFactory implements AnimationInterfaceFactoryInterface {
    late AnimationFactoryImageScaleUtil animationFactoryImageScaleUtil;
    late Image image;
    late AnimationBehaviorFactory animationBehaviorFactory;
    late List<int> sequenceArray;
    late AnimationFactoryInitializationVisitor animationFactoryInitializationVisitor;
    late ScaleProperties scaleProperties;

    // Java field initializers run after the base constructor
    void initFieldsBaseImageAnimationFactory() {
    this.animationFactoryImageScaleUtil = AnimationFactoryImageScaleUtil.getInstance();
    
    
    
    
    this.scaleProperties = ScaleProperties.instance;
    }
    

    static BaseImageAnimationFactory createFactoryBase(Image image, List<int> sequenceArray, int width, int height, AnimationBehaviorFactory animationBehaviorFactory) {
        return BaseImageAnimationFactory(image, sequenceArray, width, height, 0, 0, animationBehaviorFactory);
    }
    

    BaseImageAnimationFactory(Image image, List<int> sequenceArray, int width, int height, int dx, int dy, AnimationBehaviorFactory animationBehaviorFactory) {
        this.initFieldsBaseImageAnimationFactory();
        this.animationFactoryInitializationVisitor = AnimationFactoryInitializationVisitor();
        this.image = image;
        this.animationFactoryInitializationVisitor.width = width;
        this.animationFactoryInitializationVisitor.height = height;
        this.animationBehaviorFactory = animationBehaviorFactory;
        this.sequenceArray = sequenceArray;
        this.animationFactoryInitializationVisitor.dx = dx;
        this.animationFactoryInitializationVisitor.dy = dy;
    }
    

    @override
    Animation getInstance1(int instanceId) {
        return NullAnimationFactory.getFactoryInstance().getInstance1(instanceId);
    }
    

    Image getImage() {
        return this.image;
    }
    

    List<int> getSequenceArray() {
        return this.sequenceArray;
    }
    

    @override
    void setInitialScale(ScaleProperties scaleProperties) {
        this.scaleProperties = scaleProperties;
        if (this.scaleProperties.shouldScale) {
            this.scaleProperties.scaleWidth = JMath.toInt32(((this.animationFactoryInitializationVisitor.width).toDouble() * this.scaleProperties.scaleX));
            this.scaleProperties.scaleHeight = JMath.toInt32(((this.animationFactoryInitializationVisitor.height).toDouble() * this.scaleProperties.scaleY));
        } else {
        }
    }
    

    AnimationFactoryInitializationVisitor getAnimationFactoryInitializationVisitorP() {
        return this.animationFactoryInitializationVisitor;
    }
    

    ScaleProperties getScalePropertiesP() {
        return this.scaleProperties;
    }
    

    @override
    String toString() {
        final CommonSeps commonSeps = CommonSeps.getInstance();
        final CommonLabels commonLabels = CommonLabels.getInstance();
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append(super.toString());
        stringBuffer.append(commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(this.image.getHeight());
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(this.animationFactoryInitializationVisitor.toString());
        return stringBuffer.toString();
    }
}

