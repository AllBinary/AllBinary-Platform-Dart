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
// package org.allbinary.animation

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/IndexedAnimationInterface.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';

class IndexedAnimation extends Animation implements IndexedAnimationInterface {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late AnimationBehavior animationBehaviorP;

    // Java field initializers run after the base constructor
    void initFieldsIndexedAnimation() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    }
    

    IndexedAnimation(AnimationBehavior animationBehavior) {
        this.initFieldsIndexedAnimation();
        this.animationBehaviorP = animationBehavior;
    }
    

    AnimationBehavior getAnimationBehavior() {
        return this.animationBehaviorP;
    }
    

    @override
    void reset() {
        this.animationBehaviorP.reset();
        this.setFrame(0);
    }
    

    @override
    void setFrame(int index) {
    }
    

    @override
    int getFrame() {
        return 0;
    }
    

    int getAnimationSize() {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    @override
    int getSize() {
        return 0;
    }
    

    @override
    void previousFrame() {
    }
    

    bool isLastFrame() {
        if (this.getFrame() == this.getSize() - 1) {
            return true;
        } else {
            return false;
        }
    }
    

    @override
    void setSequence(List<int> sequence) {
    }
    

    @override
    List<int> getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    void setState(IndexedAnimation indexedAnimation) {
        this.setFrame(indexedAnimation.getFrame());
        this.setDx(indexedAnimation.getDx());
        this.setDy(indexedAnimation.getDy());
    }
    

    int getWidth() {
        return 0;
    }
    

    int getHeight() {
        return 0;
    }
}

