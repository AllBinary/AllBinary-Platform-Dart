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
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.dart';
import 'package:allbinary/org/allbinary/graphics/CellPosition.dart';
import 'package:allbinary/org/allbinary/graphics/GPoint.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/graphics/RectangleFactory.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonInput.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonResource.dart';

class TouchButton extends Paintable {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late TouchButtonInput touchButtonInput;
    late Animation animationInterface;
    late Animation hintAnimationInterface;
    late Rectangle rawRectangle;
    int xBorder = 0;
    int yBorder = 0;
    late Rectangle rectangleP;
    late CellPosition cellPositionP;
    int animationX = 0;
    int animationY = 0;
    int hintAnimationY = 0;

    // Java field initializers run after the base constructor
    void initFieldsTouchButton() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    
    
    
    
    this.rectangleP = RectangleFactory.SINGLETON;
    
    this.animationX = 0;
    this.animationY = 0;
    this.hintAnimationY = 0;
    }
    

    static TouchButton createButton(TouchButtonInput touchButtonInput, TouchButtonResource touchButtonResource, Rectangle rawRectangle, CellPosition cellPosition, int xBorder, int yBorder) {
        return TouchButton(touchButtonInput, FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(touchButtonResource.RESOURCE).getInstance1(0), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(touchButtonResource.HINT).getInstance1(0), rawRectangle, cellPosition, xBorder, yBorder);
    }
    

    TouchButton(TouchButtonInput touchButtonInput, Animation animationInterface, Animation hintAnimationInterface, Rectangle rawRectangle, CellPosition cellPosition, int xBorder, int yBorder) {
        this.initFieldsTouchButton();
        this.touchButtonInput = touchButtonInput;
        this.animationInterface = animationInterface;
        this.hintAnimationInterface = hintAnimationInterface;
        this.rawRectangle = rawRectangle;
        this.cellPositionP = cellPosition;
        this.xBorder = xBorder;
        this.yBorder = yBorder;
        this.updateRectangle();
        this.logUtil.putF(StringMaker().append("Created: ").append(this.toString()).toString(), this, this.commonStrings.CONSTRUCTOR);
    }
    

    void paintHint(Graphics graphics) {
        this.hintAnimationInterface.paintXY(graphics, this.animationX, this.hintAnimationY);
    }
    

    @override
    void paint(Graphics graphics) {
        this.animationInterface.paintXY(graphics, this.animationX, this.animationY);
    }
    

    void updateRectangle() {
        try {
            final PointFactory pointFactory = PointFactory.getInstance();
            final int x = this.rawRectangle.getWidth() * this.cellPositionP.getColumn();
            final int y = this.rawRectangle.getHeight() * this.cellPositionP.getRow();
            this.rectangleP = Rectangle(pointFactory.createXY(x + this.xBorder, y + this.yBorder), this.rawRectangle.getWidth(), this.rawRectangle.getHeight());
            final GPoint point = this.rectangleP.getPoint();
            this.animationX = point.getX();
            this.animationY = point.getY();
            this.hintAnimationY = this.animationY - 32;
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "updateRectangle", e);
            }
        }
    }
    

    CellPosition getCellPosition() {
        return this.cellPositionP;
    }
    

    Rectangle getRectangle() {
        return this.rectangleP;
    }
    

    TouchButtonInput getTouchButtonInput() {
        return this.touchButtonInput;
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        final StringUtil stringUtil = StringUtil.getInstance();
        stringBuffer.append("TouchButton: ");
        stringBuffer.append(stringUtil.toString1(this.getRectangle()));
        stringBuffer.append(" CellPosition: ");
        stringBuffer.append(stringUtil.toString1(this.cellPositionP));
        stringBuffer.append(" xBorder: ");
        stringBuffer.appendint(this.xBorder);
        stringBuffer.append(" yBorder: ");
        stringBuffer.appendint(this.yBorder);
        return stringBuffer.toString();
    }
}

