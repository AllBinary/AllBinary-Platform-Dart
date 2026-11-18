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
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';
import 'package:allbinary/org/allbinary/direction/Direction.dart';
import 'package:allbinary/org/allbinary/math/Angle.dart';
import 'package:allbinary/org/allbinary/math/AngleFactory.dart';
import 'package:allbinary/org/allbinary/math/AngleInfo.dart';
import 'package:allbinary/org/allbinary/animation/image/sprite/HackRotationSpriteIndexedAnimation.dart';

class AllBinarySpriteRotationAnimation extends HackRotationSpriteIndexedAnimation {
    

    AllBinarySpriteRotationAnimation(Sprite sprite, Image image, AnimationBehavior animationBehavior) : super(sprite, image, AngleInfo.getInstance1(((AngleFactory.getInstance().TOTAL_ANGLE ~/ sprite.getRawFrameCount())).toSigned(16)), animationBehavior) {
        
        this.angleInfo.adjustAngle(this.sprite.getFrame());
    }
    

    @override
    void nextRotation() {
        this.sprite.nextFrame();
        this.angleInfo.adjustAngle(this.sprite.getFrame());
    }
    

    @override
    void previousRotation() {
        this.sprite.prevFrame();
        this.angleInfo.adjustAngle(this.sprite.getFrame());
    }
    

    @override
    void setFrameByDirection(Direction direction) {
        Angle angle = this.directionUtil.getFrameAngle(direction);
        this.adjustFrameToAngle(angle);
    }
    

    @override
    void setFrameToAngle(Angle angle) {
        this.adjustFrameToAngle(angle);
    }
    

    @override
    void setFrame(int index) {
        this.sprite.setFrame(index);
        this.angleInfo.adjustAngle(this.getFrame());
    }
    

    @override
    void adjustFrameToAngle(Angle angle) {
        this.adjustFrame(angle.getValue());
    }
    

    @override
    void adjustFrame(int angle) {
        this.setFrame(this.frameUtil.getFrameForAngle(angle, this.angleInfo.getAngleIncrementInfo().getAngleIncrement()));
    }
}

