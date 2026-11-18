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
// package org.allbinary.game.ag.layer.hud.basic.time

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveLongSingleton.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveLongUtil.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelperFactory.dart';

class HudTimer {
    int startTime = 0;
    int hundredthTime = 0;
    int maxTime = 0;
    int modifier = 0;
    late List<int> hundrethsString;
    int totalDigits = 0;
    late PrimitiveLongUtil primitiveLongUtil;
    late List<int> MAX;
    late GameTickTimeDelayHelper gameTickTimeDelayHelper;

    // Java field initializers run after the base constructor
    void initFieldsHudTimer() {
    this.startTime = -1;
    this.hundredthTime = 0;
    
    this.modifier = 0;
    this.hundrethsString = PrimitiveLongSingleton.getInstance().ZERO;
    this.totalDigits = 1;
    
    this.MAX = <int>["L".codeUnitAt(0), "O".codeUnitAt(0), "L".codeUnitAt(0)];
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    }
    

    HudTimer(int maxTime) {
        this.initFieldsHudTimer();
        this.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(maxTime);
        this.maxTime = maxTime;
    }
    

    void start() {
        this.hundredthTime = 0;
        this.startTime = this.gameTickTimeDelayHelper.startTime;
    }
    

    int get() {
        return this.hundredthTime;
    }
    

    void update() {
        int lastLowerTime = this.hundredthTime;
        int currentTime = ((this.modifier + this.gameTickTimeDelayHelper.startTime) - this.startTime);
        if (currentTime < 0) {
            currentTime = 0;
        }
        this.hundredthTime = currentTime ~/ 100;
        if (this.hundredthTime >= this.maxTime) {
            if (this.startTime > 0) {
                this.hundrethsString = this.MAX;
            }
        } else if (lastLowerTime != this.hundredthTime) {
            this.hundrethsString = this.primitiveLongUtil.getCharArray((this.hundredthTime).toSigned(32));
            this.totalDigits = this.primitiveLongUtil.getCurrentTotalDigits();
        }
    }
    

    void reduce(int value) {
        this.modifier -= value;
    }
    

    void add(int value) {
        this.modifier += value;
    }
    

    List<int> getTimeChars() {
        return this.hundrethsString;
    }
    

    int getCurrentTotalDigits() {
        return this.totalDigits;
    }
}

