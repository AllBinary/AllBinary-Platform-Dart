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
// package org.allbinary.game.ag.ai

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/bounds/BoundsVisitorInterface.dart';
import 'package:allbinary/org/allbinary/bounds/LayerBounds.dart';
import 'package:allbinary/org/allbinary/game/ai/BasicAI.dart';
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';

class BoundBounceAI extends BasicAI {
    int currentRelativeAngle = 0;
    late LayerBounds layerBounds;
    late BoundsVisitorInterface boundsVisitorInterface;

    // Java field initializers run after the base constructor
    void initFieldsBoundBounceAI() {
    this.currentRelativeAngle = 0;
    
    
    }
    

    BoundBounceAI(AllBinaryLayer ownerLayerInterface, GameInput gameInput, LayerBounds layerBounds, BoundsVisitorInterface boundsVisitorInterface) : super(ownerLayerInterface, gameInput) {
        this.initFieldsBoundBounceAI();
        
        this.layerBounds = layerBounds;
        this.boundsVisitorInterface = boundsVisitorInterface;
    }
    

    void paint(Graphics graphics) {
        final Rectangle rectange = this.layerBounds.getRectangleP();
        graphics.drawRect(rectange.getPoint().getX(), rectange.getPoint().getY(), rectange.getWidth(), rectange.getHeight());
    }
    

    @override
    void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        this.layerBounds.visit(this.boundsVisitorInterface);
    }
}

