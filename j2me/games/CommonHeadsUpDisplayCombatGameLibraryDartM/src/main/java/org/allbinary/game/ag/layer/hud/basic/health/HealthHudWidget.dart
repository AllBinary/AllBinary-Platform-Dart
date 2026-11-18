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
// package org.allbinary.game.ag.layer.hud.basic.health

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/animation/Animation.dart';
import 'package:allbinary/org/allbinary/game/graphics/hud/BasicHud.dart';
import 'package:allbinary/org/allbinary/game/health/Health.dart';
import 'package:allbinary/org/allbinary/game/health/HealthListenerInterface.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/paint/PaintableInterface.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelperFactory.dart';
import 'package:allbinary/org/allbinary/time/NoTimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';

class HealthHudWidget extends BasicHud implements PaintableInterface, HealthListenerInterface {
    int healthScale = 0;
    late Animation animationInterface;
    late Health healthInterface;
    int max = 0;
    late List<int> xArray;
    late GameTickTimeDelayHelper gameTickTimeDelayHelper;
    late TimeDelayHelper timeDelayHelper;
    late TimeDelayHelper slowBeatTimeDelayHelper;
    late TimeDelayHelper mediumBeatTimeDelayHelper;
    late TimeDelayHelper fastBeatTimeDelayHelper;

    // Java field initializers run after the base constructor
    void initFieldsHealthHudWidget() {
    
    
    
    this.max = 0;
    
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    this.timeDelayHelper = NoTimeDelayHelper.SINGLETON;
    this.slowBeatTimeDelayHelper = TimeDelayHelper(1280);
    this.mediumBeatTimeDelayHelper = TimeDelayHelper(640);
    this.fastBeatTimeDelayHelper = TimeDelayHelper(320);
    }
    

    HealthHudWidget(Animation animationInterface, Health healthInterface, int location, int direction) : super(location, direction, 2, BasicColorFactory.getInstance().WHITE) {
        this.initFieldsHealthHudWidget();
        
        this.animationInterface = animationInterface;
        this.healthInterface = healthInterface;
        this.healthInterface.addListener(this);
        this.healthScale = (this.healthInterface.getMaxHealth() ~/ 6) + 1;
        this.onHealthChange();
        this.updateMaxWidth = healthInterface.getMaxHealth() * 16;
        this.updateMaxHeight = 16;
        this.xArray = List<int>.filled(30, 0);
        this.update();
    }
    

    void update() {
        if (this.xArray != null) {
            for (int index = 0; index < this.xArray.length; index++) {
                this.xArray[index] = this.getX() + (index * 16);
            }
        }
    }
    

    @override
    void setX(int x) {
        super.setX(x);
        this.update();
    }
    

    @override
    void onHealthChange() {
        this.max = (this.healthInterface.getHealth() ~/ this.healthScale);
        this.timeDelayHelper = NoTimeDelayHelper.SINGLETON;
        if (this.max <= 1 && this.healthInterface.isAlive()) {
            this.max = 1;
            if (this.healthScale - this.healthInterface.getHealth() > (this.healthScale * 2) ~/ 3) {
                this.timeDelayHelper = this.slowBeatTimeDelayHelper;
            } else if (this.healthScale - this.healthInterface.getHealth() > this.healthScale ~/ 3) {
                this.timeDelayHelper = this.mediumBeatTimeDelayHelper;
            } else {
                this.timeDelayHelper = this.fastBeatTimeDelayHelper;
            }
        }
    }
    

    @override
    void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        for (int index = 0; index < this.max; index++) {
            if (this.timeDelayHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
                this.animationInterface.paintXY(graphics, this.xArray[index], this.getY());
            }
        }
    }
    

    @override
    void paintThreed(Graphics graphics) {
    }
}

