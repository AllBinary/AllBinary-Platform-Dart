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
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/org/allbinary/DisposalUtil.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';
import 'package:allbinary/org/allbinary/animation/RotationAnimation.dart';
import 'package:allbinary/org/allbinary/graphics/Anchor.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';
import 'package:allbinary/org/allbinary/math/AngleInfo.dart';
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';

class ImageBaseRotationAnimation extends RotationAnimation {
    late Image image;
    int anchor = 0;

    // Java field initializers run after the base constructor
    void initFieldsImageBaseRotationAnimation() {
    
    this.anchor = Anchor.TOP_LEFT;
    }
    

    ImageBaseRotationAnimation(Image image, AngleInfo angleInfo, int totalAngle, AnimationBehavior animationBehavior) : super(angleInfo, CircularIndexUtil.createInstance(totalAngle ~/ angleInfo.getAngleIncrementInfo().getAngleIncrement()), animationBehavior) {
        this.initFieldsImageBaseRotationAnimation();
        
        this.image = image;
    }
    

    @override
    int getAnimationSize() {
        return this.getSize();
    }
    

    @override
    void setSequence(List<int> sequence) {
    }
    

    @override
    List<int> getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        graphics.drawImage(this.image, x, y, this.anchor);
    }
    

    Image getImage() {
        return this.image;
    }
    

    @override
    int getWidth() {
        return this.image.getWidth();
    }
    

    @override
    int getHeight() {
        return this.image.getHeight();
    }
    

    void close() {
        DisposalUtil.getInstance().disposeImage(this.image);
    }
    

    void finalize() {
        DisposalUtil.getInstance().disposeImage(this.image);
    }
}

