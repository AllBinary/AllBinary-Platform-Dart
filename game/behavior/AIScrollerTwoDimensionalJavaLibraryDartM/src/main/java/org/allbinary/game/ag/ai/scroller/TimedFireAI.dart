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
// package org.allbinary.game.ag.ai.scroller

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/org/allbinary/game/ai/BasicAI.dart';
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelperFactory.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/scroller/TimeFiredInterface.dart';

class TimedFireAI extends BasicAI {
    static final int TIME = SmallIntegerSingletonFactory.getInstance().getAt(1);
    late TimeDelayHelper maxFireDelayTimeHelper;
    int delay = 0;

    // Java field initializers run after the base constructor
    void initFieldsTimedFireAI() {
    this.maxFireDelayTimeHelper = TimeDelayHelper(0);
    
    }
    

    TimedFireAI(int delay, AllBinaryLayer ownerLayerInterface, GameInput gameInput) : super(ownerLayerInterface, gameInput) {
        this.initFieldsTimedFireAI();
        
        this.delay = delay;
    }
    

    @override
    void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        TimeFiredInterface timeFiredInterface = (this.getOwnerLayerInterface() as TimeFiredInterface);
        if (this.maxFireDelayTimeHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime) && timeFiredInterface.getLastFireTime() + this.maxFireDelayTimeHelper.delay < this.maxFireDelayTimeHelper.getStartTime()) {
            super.processKeyAI(Canvas.KEY_NUM1);
            this.maxFireDelayTimeHelper.delay = this.delay;
        }
    }
}

