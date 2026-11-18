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
// package org.allbinary.business.advertisement

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/GameAdState.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/business/advertisement/GameAdStateFactory.dart';

class BottomLimiter {
    static final BottomLimiter instance = BottomLimiter();
    int bottom = 0;
    int deltaY = 0;
    int lower = 0;
    int higher = 0;

    // Java field initializers run after the base constructor
    void initFieldsBottomLimiter() {
    this.bottom = 0;
    this.deltaY = 0;
    this.lower = 0;
    this.higher = 0;
    }
    

    static BottomLimiter getInstance() {
        return BottomLimiter.instance;
    }
    

    BottomLimiter() {
        this.initFieldsBottomLimiter();
    }
    

    void init(int lower, int higher) {
        this.lower = lower;
        this.higher = higher;
    }
    

    void update() {
        DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        GameAdState gameAdState = GameAdStateFactory.getInstance().getCurrentInstance();
        if (gameAdState.isShowingAt()) {
            this.deltaY = this.higher;
        } else {
            this.deltaY = this.lower;
        }
        this.bottom = displayInfo.getLastHeight() - this.deltaY;
    }
    

    int getDeltaY() {
        return this.deltaY;
    }
    

    int getBottom() {
        return this.bottom;
    }
}

