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
// package org.allbinary.game.health

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/game/graphics/hud/BasicHudFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';

class HealthBarAnimation extends Animation {
    late BasicColorFactory basicColorFactory;
    int x2 = 0;
    int thickness = 0;
    int location = 0;
    late AllBinaryLayer allbinaryLayer;

    // Java field initializers run after the base constructor
    void initFieldsHealthBarAnimation() {
    this.basicColorFactory = BasicColorFactory.getInstance();
    this.x2 = 0;
    this.thickness = 0;
    
    
    }
    

    HealthBarAnimation(AllBinaryLayer layerInterface, int location) {
        this.initFieldsHealthBarAnimation();
        this.allbinaryLayer = layerInterface;
        this.location = location;
        final BasicHudFactory basicHudFactory = BasicHudFactory.getInstance();
        if (this.location != basicHudFactory.TOPLEFT && this.location != basicHudFactory.BOTTOMLEFT) {
            throw JException('Exception', "Location Not Valid");
        }
        if (layerInterface.getWidth() > 40) {
            this.thickness = 3;
        } else if (layerInterface.getWidth() > 20) {
            this.thickness = 2;
        } else {
            this.thickness = 1;
        }
    }
    

    void onHealthChange(int newX2) {
        this.x2 = newX2;
        int quarter = (this.allbinaryLayer.getWidth() >> 2);
        if (this.x2 > quarter * 3) {
            this.basicColor = this.basicColorFactory.GREEN;
            this.colorP = this.basicColor.intValue();
        } else if (this.x2 > quarter * 2) {
            this.basicColor = this.basicColorFactory.YELLOW;
            this.colorP = this.basicColor.intValue();
        } else if (this.x2 > quarter) {
            this.basicColor = this.basicColorFactory.ORANGE;
            this.colorP = this.basicColor.intValue();
        } else {
            this.basicColor = this.basicColorFactory.RED;
            this.colorP = this.basicColor.intValue();
        }
    }
    

    int getY() {
        final BasicHudFactory basicHudFactory = BasicHudFactory.getInstance();
        if (this.location == basicHudFactory.TOPLEFT) {
            return this.allbinaryLayer.getViewPosition().getY() - 4;
        } else if (this.location == basicHudFactory.BOTTOMLEFT) {
            return this.allbinaryLayer.getViewPosition().getY2() + 4;
        }
        return -1;
    }
}

