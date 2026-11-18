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
// package org.allbinary.game.ag.layer.hud.basic.life

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/game/ag/life/Life.dart';
import 'package:allbinary/org/allbinary/game/graphics/hud/BasicHud.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/event/DisplayChangeEvent.dart';
import 'package:allbinary/org/allbinary/graphics/paint/PaintableInterface.dart';

class LivesHudWidget extends BasicHud implements PaintableInterface {
    late Life lifeInterface;
    late List<int> xArray;
    late Animation animationInterface;

    // Java field initializers run after the base constructor
    void initFieldsLivesHudWidget() {
    
    
    
    }
    

    LivesHudWidget(Animation animationInterface, Life lifeInterface, int location, int direction) : super(location, direction, 2, BasicColorFactory.getInstance().WHITE) {
        this.initFieldsLivesHudWidget();
        
        this.lifeInterface = lifeInterface;
        final int size = this.getLifeInterface().getMaxlives();
        this.xArray = List<int>.filled(size, 0);
        this.animationInterface = animationInterface;
        this.updateMaxWidth = this.lifeInterface.getMaxlives() * 16;
        this.updateMaxHeight = 16;
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        super.updateMeasurement(graphics);
        int maxLives = this.getLifeInterface().getMaxlives();
        for (int index = 0; index < maxLives; index++) {
            this.xArray[index] = this.getX() + (index * 16);
        }
    }
    

    @override
    void onDisplayChangeEvent(DisplayChangeEvent displayChangeEvent) {
        super.onDisplayChangeEvent(displayChangeEvent);
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    @override
    void setX(int x) {
        super.setX(x);
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    @override
    void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        for (int index = this.getLifeInterface().get(); --index >= 0; ) {
            this.animationInterface.paintXY(graphics, this.xArray[index], this.getY());
        }
    }
    

    @override
    void paintThreed(Graphics graphics) {
    }
    

    Life getLifeInterface() {
        return this.lifeInterface;
    }
}

