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
import 'package:allbinary/javax/microedition/lcdui/NullImage.dart';
import 'package:allbinary/org/allbinary/DisposalUtil.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';
import 'package:allbinary/org/allbinary/animation/RotationAnimation.dart';
import 'package:allbinary/org/allbinary/graphics/Anchor.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';
import 'package:allbinary/org/allbinary/math/AngleInfo.dart';
import 'package:allbinary/org/allbinary/media/image/ImageModifierUtil.dart';
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';

class ImageArrayBaseRotationAnimation extends RotationAnimation {
    late ImageModifierUtil imageModifierUtil;
    late List<Image?> originalImageArray;
    late List<Image?> imageArray;
    late Image currentImage;
    int totalFrames = 0;
    int anchor = 0;

    // Java field initializers run after the base constructor
    void initFieldsImageArrayBaseRotationAnimation() {
    this.imageModifierUtil = ImageModifierUtil.getInstanceOrCreate();
    
    this.imageArray = NullImage.NULL_IMAGE_ARRAY;
    
    this.totalFrames = 0;
    this.anchor = Anchor.TOP_LEFT;
    }
    

    ImageArrayBaseRotationAnimation(List<Image?> originalImageArray, AngleInfo angleInfo, AnimationBehavior animationBehavior) : super(angleInfo, CircularIndexUtil.createInstance(360 ~/ angleInfo.getAngleIncrementInfo().getAngleIncrement()), animationBehavior) {
        this.initFieldsImageArrayBaseRotationAnimation();
        
        this.originalImageArray = originalImageArray;
        this.setImageArray(this.imageModifierUtil.getImageArray(originalImageArray));
        this.currentImage = this.imageArray[this.circularIndexUtil.getIndex()]!;
    }
    

    @override
    int getAnimationSize() {
        return this.getSize();
    }
    

    @override
    void setAlpha(int alpha) {
        if (this.alphaP != alpha) {
            super.setAlpha(alpha);
            this.imageModifierUtil.reset();
            final int index = this.circularIndexUtil.getIndex();
            this.imageModifierUtil.setAlpha(this.originalImageArray[index]!, this.imageArray[index]!, index, this.alphaP);
        }
    }
    

    @override
    void nextRotation() {
        super.nextRotation();
        final int index = this.circularIndexUtil.getIndex();
        this.imageModifierUtil.setAlpha(this.originalImageArray[index]!, this.imageArray[index]!, index, this.alphaP);
        this.currentImage = this.imageArray[index]!;
    }
    

    @override
    void previousRotation() {
        super.previousRotation();
        final int index = this.circularIndexUtil.getIndex();
        this.imageModifierUtil.setAlpha(this.originalImageArray[index]!, this.imageArray[index]!, index, this.alphaP);
        this.currentImage = this.imageArray[index]!;
    }
    

    @override
    void setFrame(int index2) {
        super.setFrame(index2);
        final int index = this.circularIndexUtil.getIndex();
        this.imageModifierUtil.setAlpha(this.originalImageArray[index]!, this.imageArray[index]!, index, this.alphaP);
        this.currentImage = this.imageArray[index]!;
    }
    

    @override
    void setSequence(List<int> sequence) {
    }
    

    @override
    List<int> getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    void setImageArray(List<Image?> imageArray) {
        this.imageArray = imageArray;
        this.totalFrames = imageArray.length;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.totalFrames);
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        graphics.drawImage(this.currentImage, x, y, this.anchor);
    }
    

    void close() {
        final DisposalUtil disposalUtil = DisposalUtil.getInstance();
        final int size2 = this.imageArray.length;
        for (int index = 0; index < size2; index++) {
            disposalUtil.disposeImage(this.imageArray[index]!);
        }
        final int size = this.originalImageArray.length;
        for (int index = 0; index < size; index++) {
            disposalUtil.disposeImage(this.originalImageArray[index]!);
        }
        disposalUtil.disposeImage(this.currentImage);
    }
    

    void finalize() {
        final DisposalUtil disposalUtil = DisposalUtil.getInstance();
        final int size2 = this.imageArray.length;
        for (int index = 0; index < size2; index++) {
            disposalUtil.disposeImage(this.imageArray[index]!);
        }
        final int size = this.originalImageArray.length;
        for (int index = 0; index < size; index++) {
            disposalUtil.disposeImage(this.originalImageArray[index]!);
        }
        disposalUtil.disposeImage(this.currentImage);
    }
}

