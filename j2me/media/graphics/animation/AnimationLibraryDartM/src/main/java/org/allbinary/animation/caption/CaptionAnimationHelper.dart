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
// package org.allbinary.animation.caption

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';
import 'package:allbinary/org/allbinary/animation/NullAnimationFactory.dart';
import 'package:allbinary/org/allbinary/animation/text/TextAnimation.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelperFactory.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/animation/caption/CaptionAnimationHelperBase.dart';
import 'package:allbinary/org/allbinary/animation/caption/CaptionAnimation.dart';

class CaptionAnimationHelper extends CaptionAnimationHelperBase {
    late TimeDelayHelper timeHelper;
    late TextAnimation textAnimation;
    late Animation captionAnimation;
    late Animation animation;

    // Java field initializers run after the base constructor
    void initFieldsCaptionAnimationHelper() {
    this.timeHelper = TimeDelayHelper(620);
    this.textAnimation = TextAnimation(StringUtil.getInstance().EMPTY_STRING, AnimationBehavior.getInstance());
    
    this.animation = NullAnimationFactory.getFactoryInstance().getInstance1(0);
    }
    

    CaptionAnimationHelper(Animation captionAnimation, int captionDx, int captionDy, int dx, int dy) {
        this.initFieldsCaptionAnimationHelper();
        this.captionAnimation = CaptionAnimation(captionAnimation, this.textAnimation, captionDx, captionDy, dx, dy);
    }
    

    @override
    bool isShowing() {
        if (identical(this.animation, this.captionAnimation)) {
            return true;
        } else {
            return false;
        }
    }
    

    @override
    void tick() {
        if (this.timeHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            this.animation = NullAnimationFactory.getFactoryInstance().getInstance1(0);
        }
    }
    

    @override
    void update(String message, BasicColor basicColor) {
        this.textAnimation.setBasicColorP(basicColor);
        this.textAnimation.setText(message);
        this.animation = this.captionAnimation;
        this.timeHelper.setStartTimeTNT();
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        this.animation.paintXY(graphics, x, y);
    }
}

