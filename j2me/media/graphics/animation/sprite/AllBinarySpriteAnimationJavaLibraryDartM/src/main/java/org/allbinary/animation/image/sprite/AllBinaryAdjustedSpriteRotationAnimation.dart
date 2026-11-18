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
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/javax/microedition/lcdui/game/Sprite.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';
import 'package:allbinary/org/allbinary/animation/image/sprite/AllBinarySpriteRotationAnimation.dart';

class AllBinaryAdjustedSpriteRotationAnimation extends AllBinarySpriteRotationAnimation {
    int dx = 0;
    int dy = 0;

    // Java field initializers run after the base constructor
    void initFieldsAllBinaryAdjustedSpriteRotationAnimation() {
    
    
    }
    

    AllBinaryAdjustedSpriteRotationAnimation(Sprite sprite, Image image, int dx, int dy, AnimationBehavior animationBehavior) : super(sprite, image, animationBehavior) {
        this.initFieldsAllBinaryAdjustedSpriteRotationAnimation();
        
        this.dx = dx;
        this.dy = dy;
    }
    

    @override
    void paintXY(Graphics g, int x, int y) {
        this.sprite.setPosition(x + this.dx, y + this.dy);
        this.paint(g);
    }
}

