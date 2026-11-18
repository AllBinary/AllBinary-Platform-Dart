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
import 'package:allbinary/javax/microedition/media/Player.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';
import 'package:allbinary/org/allbinary/animation/AnimationEventHandler.dart';
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelperFactory.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';

class CaptionIndexedAnimation extends IndexedAnimation {
    late Animation animationInterface;
    late IndexedAnimation movieIndexedAnimationInterface;
    int captionDx = 0;
    int captionDy = 0;
    int dx = 0;
    int dy = 0;
    int time = 0;
    late AllBinaryEventObject END_EVENT;
    late TimeDelayHelper timeDelayHelper;
    late Player player;

    // Java field initializers run after the base constructor
    void initFieldsCaptionIndexedAnimation() {
    
    
    
    
    
    
    
    
    
    
    }
    

    CaptionIndexedAnimation(Animation animationInterface, IndexedAnimation movieIndexedAnimationInterface, Player player, int captionDx, int captionDy, int dx, int dy, int time, AnimationBehavior animationBehavior) : super(animationBehavior) {
        this.initFieldsCaptionIndexedAnimation();
        
        this.animationInterface = animationInterface;
        this.movieIndexedAnimationInterface = movieIndexedAnimationInterface;
        this.captionDx = captionDx;
        this.captionDy = captionDy;
        this.dx = dx;
        this.dy = dy;
        this.time = time;
        this.END_EVENT = AllBinaryEventObject(this);
        int timePerFrame = this.time ~/ this.getSize();
        this.timeDelayHelper = TimeDelayHelper(timePerFrame);
        this.player = player;
        this.player.start();
    }
    

    @override
    void nextFrame() {
        if (this.timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            this.movieIndexedAnimationInterface.nextFrame();
        }
        if (this.isLastFrame()) {
            AnimationEventHandler.getInstance().fireEvent(this.END_EVENT);
        }
    }
    

    @override
    bool isLastFrame() {
        if (this.movieIndexedAnimationInterface.getFrame() == this.getSize() - 1) {
            return true;
        } else {
            return false;
        }
    }
    

    @override
    void previousFrame() {
        this.movieIndexedAnimationInterface.previousFrame();
    }
    

    @override
    void setFrame(int index) {
        this.movieIndexedAnimationInterface.setFrame(index);
    }
    

    @override
    int getFrame() {
        return this.movieIndexedAnimationInterface.getFrame();
    }
    

    @override
    int getSize() {
        return this.movieIndexedAnimationInterface.getSize();
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
        this.animationInterface.paintXY(graphics, x + this.captionDx, y + this.captionDy);
        this.movieIndexedAnimationInterface.paintXY(graphics, x + this.captionDx + this.dx, y + this.captionDy + this.dy);
    }
    

    @override
    void paintThreedXYZ(Graphics graphics, int x, int y, int z) {
        this.animationInterface.paintThreedXYZ(graphics, x + this.captionDx, y + this.captionDy, z);
        this.movieIndexedAnimationInterface.paintThreedXYZ(graphics, x + this.captionDx + this.dx, y + this.captionDy + this.dy, z);
    }
}

