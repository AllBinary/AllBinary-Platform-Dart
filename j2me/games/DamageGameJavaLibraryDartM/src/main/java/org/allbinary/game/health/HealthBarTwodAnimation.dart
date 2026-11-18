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
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/game/health/HealthBarAnimation.dart';

class HealthBarTwodAnimation extends HealthBarAnimation {
    

    HealthBarTwodAnimation(AllBinaryLayer layerInterface, int location) : super(layerInterface, location) {
        
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        final int ax = this.allbinaryLayer.getViewPosition().getX();
        this.basicSetColorUtil.setBasicColorP3(graphics, this.basicColor, this.colorP);
        graphics.fillRect(ax, this.getY() - 1, this.x2, this.thickness);
    }
}

