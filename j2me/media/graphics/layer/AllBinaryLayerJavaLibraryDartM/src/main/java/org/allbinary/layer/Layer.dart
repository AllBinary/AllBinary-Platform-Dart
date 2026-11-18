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
// package org.allbinary.layer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/CanvasStrings.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class Layer {
    static final int ID = SmallIntegerSingletonFactory.getInstance().getAt(0);
    late LogUtil logUtil;
    int x = 0;
    int y = 0;
    int z = 0;
    int width = 0;
    int height = 0;
    bool visible = false;

    // Java field initializers run after the base constructor
    void initFieldsLayer() {
    this.logUtil = LogUtil.getInstance();
    this.x = 0;
    this.y = 0;
    this.z = 3;
    this.width = 0;
    this.height = 0;
    this.visible = true;
    }
    

    Layer(int width, int height) {
        this.initFieldsLayer();
        this.setLayerWidth(width);
        this.setLayerHeight(height);
    }
    

    void setPosition(int x, int y, int z) {
        this.x = x;
        this.y = y;
        this.z = z;
    }
    

    void moveDXY(int dx, int dy) {
        this.x += dx;
        this.y += dy;
    }
    

    void moveDXYZ(int dx, int dy, int dz) {
        this.x += dx;
        this.y += dy;
        this.z += dz;
    }
    

    int getXP() {
        return this.x;
    }
    

    int getYP() {
        return this.y;
    }
    

    int getZP() {
        return this.z;
    }
    

    int getWidth() {
        return this.width;
    }
    

    int getHeight() {
        return this.height;
    }
    

    int getDepth() {
        return 0;
    }
    

    void setVisible(bool visible) {
        this.visible = visible;
    }
    

    bool isVisible() {
        return this.visible;
    }
    

    void paint(Graphics graphics) {
        final CommonStrings commonStrings = CommonStrings.getInstance();
        final CanvasStrings canvasStrings = CanvasStrings.getInstance();
        this.logUtil.putF(commonStrings.NOT_IMPLEMENTED, this, canvasStrings.PAINT);
    }
    

    void setLayerWidth(int width) {
        if (width < 0) {
            throw JException('IllegalArgumentException', '');
        }
        this.width = width;
    }
    

    void setLayerHeight(int height) {
        if (height < 0) {
            throw JException('IllegalArgumentException', '');
        }
        this.height = height;
    }
    

    void toStringAppend(StringMaker stringBuffer) {
    }
}

