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
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';
import 'package:allbinary/org/allbinary/animation/special/SpecialAnimationInterface.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelperFactory.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/animation/image/ImageArrayAnimation.dart';

class ImageArraySpecialAnimation extends ImageArrayAnimation implements SpecialAnimationInterface {
    late TimeDelayHelper timeDelayHelper;
    int loopCount = 0;
    int loopCountTotal = 0;

    // Java field initializers run after the base constructor
    void initFieldsImageArraySpecialAnimation() {
    this.timeDelayHelper = TimeDelayHelper(270);
    this.loopCount = 0;
    this.loopCountTotal = 1;
    }
    

    ImageArraySpecialAnimation(List<Image?> imageArray, AnimationBehavior animationBehavior) : super(imageArray, animationBehavior) {
        this.initFieldsImageArraySpecialAnimation();
        
        this.reset();
    }
    

    int getLoopCount() {
        return this.loopCount;
    }
    

    @override
    void setLastFrame() {
        this.circularIndexUtil.setIndex(this.circularIndexUtil.getSize() - 1);
    }
    

    @override
    void reset() {
        this.setFrame(this.getSize() - 1);
        this.loopCount = 0;
    }
    

    @override
    void nextFrame() {
        if (this.getFrame() > 0) {
            if (this.timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
                this.previousFrame();
                if (this.getFrame() == 0) {
                    this.loopCount++;
                }
            }
        }
    }
    

    @override
    bool isComplete() {
        if (this.loopCount < this.loopCountTotal || this.getFrame() != 0) {
            return false;
        } else {
            return true;
        }
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        x = DisplayInfoSingleton.getInstance().getLastHalfWidth() - (this.getImage(this.circularIndexUtil.getIndex()).getWidth() >> 1);
        y = 5;
        super.paintXY(graphics, x, y);
    }
}

