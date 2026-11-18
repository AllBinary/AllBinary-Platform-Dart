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
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/ColorCompositeInterface.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';

class SpriteIndexedAnimation extends IndexedAnimation implements ColorCompositeInterface {
    late Sprite sprite;
    late Image image;
    late List<BasicColor?> basicColorArray;

    // Java field initializers run after the base constructor
    void initFieldsSpriteIndexedAnimation() {
    
    
    
    }
    

    SpriteIndexedAnimation(Sprite sprite, Image image, List<BasicColor?> basicColorArray, AnimationBehavior animationBehavior) : super(animationBehavior) {
        this.initFieldsSpriteIndexedAnimation();
        
        this.sprite = sprite;
        this.image = image;
        this.basicColorArray = basicColorArray;
        if (this.basicColorArray.length != 0 && this.getSize() != this.basicColorArray.length) {
            throw JException('Exception', StringMaker().append(CommonLabels.getInstance().TOTAL_LABEL).appendint(this.getSize()).append("!=").appendint(this.basicColorArray.length).toString());
        }
    }
    

    @override
    int getAnimationSize() {
        return this.getSize();
    }
    

    @override
    void setBasicColorP(BasicColor basicColor) {
        for (int index = 0; index < this.basicColorArray.length; index++) {
            if (identical(basicColor, this.basicColorArray[index]!)) {
                this.setFrame(index);
                break;
            }
        }
    }
    

    @override
    BasicColor getBasicColorP() {
        if (this.basicColorArray.length < this.getFrame()) {
            return this.basicColorArray[this.getFrame()]!;
        } else {
            return BasicColorFactory.getInstance().WHITE;
        }
    }
    

    void paintFrame(Graphics graphics, int frame, int x, int y) {
        this.setFrame(frame);
        this.sprite.setPosition(x, y);
        this.sprite.paint(graphics);
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        this.sprite.setPosition(x, y);
        this.sprite.paint(graphics);
    }
    

    void paint(Graphics graphics) {
        this.sprite.paint(graphics);
    }
    

    @override
    void nextFrame() {
        this.sprite.nextFrame();
    }
    

    @override
    void previousFrame() {
        this.sprite.prevFrame();
    }
    

    @override
    int getSize() {
        return this.sprite.getRawFrameCount();
    }
    

    @override
    void setFrame(int frame) {
        this.sprite.setFrame(frame);
    }
    

    @override
    int getFrame() {
        return this.sprite.getFrame();
    }
    

    @override
    bool isLastFrame() {
        if (this.sprite.getFrame() == this.getSize() - 1) {
            return true;
        } else {
            return false;
        }
    }
    

    int getLastFrame() {
        return this.getSize();
    }
    

    @override
    void setSequence(List<int> sequence) {
    }
    

    @override
    List<int> getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    void close() {
    }
    

    void finalize() {
    }
}

