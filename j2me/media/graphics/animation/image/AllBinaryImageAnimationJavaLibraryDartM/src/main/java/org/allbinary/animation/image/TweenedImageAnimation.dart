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
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/graphics/Anchor.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';

class TweenedImageAnimation extends IndexedAnimation {
    late Image image;
    int dx = 0;
    int dy = 0;
    int totalFrames = 0;
    late CircularIndexUtil circularIndexUtil;
    int anchor = 0;

    // Java field initializers run after the base constructor
    void initFieldsTweenedImageAnimation() {
    
    
    
    
    
    this.anchor = Anchor.TOP_LEFT;
    }
    

    TweenedImageAnimation(Image image, int dx, int dy, int totalFrames, AnimationBehavior animationBehavior) : super(animationBehavior) {
        this.initFieldsTweenedImageAnimation();
        
        this.image = image;
        this.dx = dx;
        this.dy = dy;
        this.totalFrames = totalFrames;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.totalFrames);
    }
    

    @override
    int getAnimationSize() {
        return this.getSize();
    }
    

    @override
    void nextFrame() {
        this.circularIndexUtil.next();
    }
    

    @override
    void previousFrame() {
        this.circularIndexUtil.previous();
    }
    

    @override
    void setFrame(int index) {
        this.circularIndexUtil.setIndex(index);
    }
    

    @override
    int getFrame() {
        return this.circularIndexUtil.getIndex();
    }
    

    @override
    int getSize() {
        return this.totalFrames;
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
        int frame = this.getFrame();
        int currentX = this.dx * frame;
        int currentY = this.dy * frame;
        graphics.drawImage(this.image, x + currentX, y + currentY, this.anchor);
    }
    

    void close() {
        DisposalUtil.getInstance().disposeImage(this.image);
    }
    

    void finalize() {
        DisposalUtil.getInstance().disposeImage(this.image);
    }
}

