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
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveIntUtil.dart';
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';
import 'package:allbinary/org/allbinary/animation/IndexedAnimation.dart';
import 'package:allbinary/org/allbinary/animation/VectorAnimationInterface.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';

class VectorAnimation extends IndexedAnimation implements VectorAnimationInterface {
    late List<List<List<int>?>?> currentPoints;
    late CircularIndexUtil circularIndexUtil;

    // Java field initializers run after the base constructor
    void initFieldsVectorAnimation() {
    this.currentPoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
    this.circularIndexUtil = CircularIndexUtil.createInstance(0);
    }
    

    static VectorAnimation createVectorAnimation(List<List<int>?> currentPoints2, BasicColor basicColor, AnimationBehavior animationBehavior) {
        final List<List<List<int>?>?> currentPoints = List<List<List<int>>>.generate(1, (_) => List<List<int>>.generate(currentPoints2.length, (_) => List<int>.filled(2, 0)));
        int size = currentPoints2.length;
        for (int index = 0; index < size; index++) {
            currentPoints[0]![index]![0] = currentPoints2[index]![0];
            currentPoints[0]![index]![1] = currentPoints2[index]![1];
        }
        return VectorAnimation(currentPoints, basicColor, animationBehavior);
    }
    

    VectorAnimation(List<List<List<int>?>?> currentPoints, BasicColor basicColor, AnimationBehavior animationBehavior) : super(animationBehavior) {
        this.initFieldsVectorAnimation();
        
        this.setPoints(currentPoints);
        this.setBasicColorP(basicColor);
    }
    

    @override
    void setBasicColorP(BasicColor basicColor) {
        bool changed = false;
        if (this.getBasicColorP() == null || this.getBasicColorP().intValue() != basicColor.intValue()) {
            changed = true;
        }
        super.setBasicColorP(basicColor);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    @override
    void changeBasicColor(BasicColor basicColor) {
        bool changed = false;
        if (this.getChangeBasicColor() == null || this.getChangeBasicColor().intValue() != basicColor.intValue()) {
            changed = true;
        }
        super.changeBasicColor(basicColor);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    @override
    void setAlpha(int alpha) {
        bool changed = false;
        if (this.alphaP != alpha) {
            changed = true;
        }
        super.setAlpha(alpha);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    @override
    void setScale(double scaleX, double scaleY) {
    }
    

    @override
    void setMaxScale(double maxScaleX, double maxScaleY) {
    }
    

    void updateModifiers() {
    }
    

    @override
    int getAnimationSize() {
        return this.getSize();
    }
    

    @override
    int getSize() {
        return this.currentPoints.length;
    }
    

    @override
    void setSequence(List<int> sequence) {
    }
    

    @override
    List<int> getSequence() {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    @override
    void nextFrame() {
        this.circularIndexUtil.next();
    }
    

    @override
    void previousFrame() {
        this.circularIndexUtil.previous();
    }
    

    void paintVectors(Graphics graphics, int x, int y) {
        try {
            int nextPointX = 0;
            int nextPointY = 0;
            late List<int> nextPoint;
            late List<int> point;
            final List<List<int>?> currentPointsFrame = this.currentPoints[this.circularIndexUtil.getIndex()]!;
            final int size = currentPointsFrame.length;
            int index = size - 2;
            while (--index >= 0) {
                nextPoint = currentPointsFrame[index]!;
                point = currentPointsFrame[index + 1]!;
                nextPointX = nextPoint[0];
                nextPointY = nextPoint[1];
                if (nextPointX != 1000) {
                    graphics.drawLine(point[0] + x, point[1] + y, nextPointX + x, nextPointY + y);
                } else {
                    index--;
                }
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "paintVectors", e);
            }
        }
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        this.basicSetColorUtil.setBasicColorP(graphics, this.basicColor);
        this.paintVectors(graphics, x, y);
    }
    

    @override
    int getFrame() {
        return this.circularIndexUtil.getIndex();
    }
    

    @override
    void setFrame(int index) {
        this.circularIndexUtil.setIndex(index);
    }
    

    @override
    List<List<int>?> getPoints(int frame) {
        return this.currentPoints[frame]!;
    }
    

    void setPoints(List<List<List<int>?>?> currentPoints) {
        this.currentPoints = currentPoints;
        this.circularIndexUtil = CircularIndexUtil.createInstance(currentPoints.length);
    }
    

    @override
    BasicColor getBasicColorP() {
        return super.getBasicColorP();
    }
}

