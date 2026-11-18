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
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/game/health/HealthListenerInterface.dart';
import 'package:allbinary/org/allbinary/game/health/HealthBarAnimation.dart';
import 'package:allbinary/org/allbinary/game/health/HealthInterface.dart';
import 'package:allbinary/org/allbinary/game/health/Health.dart';

class HealthBar extends Paintable implements HealthListenerInterface {
    late HealthBarAnimation animationInterface;
    late HealthInterface healthInterface;
    late AllBinaryLayer allbinaryLayer;

    // Java field initializers run after the base constructor
    void initFieldsHealthBar() {
    
    
    
    }
    

    HealthBar(AllBinaryLayer layerInterface, Health healthInterface, HealthBarAnimation animationInterface, int direction) {
        this.initFieldsHealthBar();
        this.allbinaryLayer = layerInterface;
        this.animationInterface = animationInterface;
        this.healthInterface = healthInterface;
        this.healthInterface.addListener(this);
        this.onHealthChange();
    }
    

    @override
    void onHealthChange() {
        this.animationInterface.onHealthChange(this.healthInterface.getHealth() * this.allbinaryLayer.getWidth() ~/ this.healthInterface.getMaxHealth());
    }
    

    @override
    void paint(Graphics graphics) {
        this.animationInterface.paintXY(graphics, 0, 0);
    }
    

    @override
    void paintThreed(Graphics graphics) {
        this.animationInterface.paintThreedXYZ(graphics, 0, 0, 0);
    }
}

