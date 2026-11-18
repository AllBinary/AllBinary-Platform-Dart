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
// package org.allbinary.input.motion.button

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/graphics/CellPosition.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButton.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonInput.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonResource.dart';

class FullTouchButton extends TouchButton {
    

    static FullTouchButton createButton(TouchButtonInput touchButtonInput, TouchButtonResource touchButtonResource, Rectangle rawRectangle, CellPosition cellPosition, int xBorder, int yBorder) {
        return FullTouchButton(touchButtonInput, FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(touchButtonResource.RESOURCE).getInstance1(0), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(touchButtonResource.HINT).getInstance1(0), rawRectangle, cellPosition, xBorder, yBorder);
    }
    

    FullTouchButton(TouchButtonInput touchButtonInput, Animation animationInterface, Animation hintAnimationInterface, Rectangle rawRectangle, CellPosition cellPosition, int xBorder, int yBorder) : super(touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder) {
        
    }
    

    @override
    void updateRectangle() {
        try {
            final PointFactory pointFactory = PointFactory.getInstance();
            final int x = this.rawRectangle.getWidth() * this.cellPositionP.getColumn();
            final int y = this.rawRectangle.getHeight() * this.cellPositionP.getRow();
            this.rectangleP = Rectangle(pointFactory.createXY(x, y), this.rawRectangle.getWidth() + (2 * this.xBorder), this.rawRectangle.getHeight() + (2 * this.yBorder));
            final GPoint point = this.rectangleP.getPoint();
            this.animationX = point.getX() + this.xBorder;
            this.animationY = point.getY() + this.yBorder;
            this.hintAnimationY = this.animationY - this.rectangleP.getHeight() >> 1;
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "updateRectangle", e);
            }
        }
    }
}

