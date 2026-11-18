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

class CaptionAnimation extends Animation {
    late Animation animationInterface;
    late Animation overlayAnimationInterface;
    int captionDx = 0;
    int captionDy = 0;
    int dx = 0;
    int dy = 0;

    // Java field initializers run after the base constructor
    void initFieldsCaptionAnimation() {
    
    
    
    
    
    
    }
    

    CaptionAnimation(Animation animationInterface, Animation overlayAnimationInterface, int captionDx, int captionDy, int dx, int dy) {
        this.initFieldsCaptionAnimation();
        this.animationInterface = animationInterface;
        this.overlayAnimationInterface = overlayAnimationInterface;
        this.captionDx = captionDx;
        this.captionDy = captionDy;
        this.dx = dx;
        this.dy = dy;
    }
    

    @override
    void nextFrame() {
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        this.animationInterface.paintXY(graphics, x + this.captionDx, y + this.captionDy);
        this.overlayAnimationInterface.paintXY(graphics, x + this.captionDx + this.dx, y + this.captionDy + this.dy);
    }
    

    @override
    void paintThreedXYZ(Graphics graphics, int x, int y, int z) {
        this.animationInterface.paintThreedXYZ(graphics, x + this.captionDx, y + this.captionDy, z);
        this.overlayAnimationInterface.paintThreedXYZ(graphics, x + this.captionDx + this.dx, y + this.captionDy + this.dy, z);
    }
}

