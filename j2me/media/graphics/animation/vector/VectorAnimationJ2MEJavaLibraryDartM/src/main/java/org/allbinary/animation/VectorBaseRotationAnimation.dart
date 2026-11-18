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
import 'package:allbinary/org/allbinary/math/AngleInfo.dart';
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';
import 'package:allbinary/org/allbinary/animation/RotationAnimation.dart';
import 'package:allbinary/org/allbinary/animation/VectorAnimationInterface.dart';
import 'package:allbinary/org/allbinary/animation/AnimationBehavior.dart';

class VectorBaseRotationAnimation extends RotationAnimation implements VectorAnimationInterface {
    late List<List<List<int>?>?> currentPoints;

    // Java field initializers run after the base constructor
    void initFieldsVectorBaseRotationAnimation() {
    this.currentPoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
    }
    

    VectorBaseRotationAnimation(AngleInfo angleInfo, List<List<List<int>?>?> currentPoints, BasicColor basicColor, AnimationBehavior animationBehavior) : super(angleInfo, CircularIndexUtil.createInstance(360 ~/ angleInfo.getAngleIncrementInfo().getAngleIncrement()), animationBehavior) {
        this.initFieldsVectorBaseRotationAnimation();
        
        this.setPoints(currentPoints);
        this.setBasicColorP(basicColor);
    }
    

    @override
    int getAnimationSize() {
        return this.getSize();
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
    void nextFrame() {
        this.circularIndexUtil.next();
    }
    

    @override
    void previousFrame() {
        this.circularIndexUtil.previous();
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
    void paintXY(Graphics graphics, int x, int y) {
        this.basicSetColorUtil.setBasicColorP(graphics, this.basicColor);
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
    List<List<int>?> getPoints(int frame) {
        return this.currentPoints[frame]!;
    }
    

    void setPoints(List<List<List<int>?>?> currentPoints) {
        this.currentPoints = currentPoints;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.currentPoints.length);
    }
    

    @override
    BasicColor getBasicColorP() {
        return super.getBasicColorP();
    }
    

    @override
    void setBasicColorP(BasicColor basicColor) {
        super.setBasicColorP(basicColor);
    }
}

