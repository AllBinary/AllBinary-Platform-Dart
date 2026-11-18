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
// package org.allbinary.game.displayable.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/GameTickDisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelperFactory.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameRunnable.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.dart';

class GameFrameRunnable extends GameRunnable {
    late LogUtil logUtil;
    late GameTickDisplayInfoSingleton gameTickDisplayInfoSingleton;
    late AllBinaryGameCanvas allBinaryGameCanvas;
    late GameTickTimeDelayHelper gameTickTimeDelayHelper;

    // Java field initializers run after the base constructor
    void initFieldsGameFrameRunnable() {
    this.logUtil = LogUtil.getInstance();
    this.gameTickDisplayInfoSingleton = GameTickDisplayInfoSingleton.getInstance();
    
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    }
    

    GameFrameRunnable(AllBinaryGameCanvas allBinaryGameCanvas) {
        this.initFieldsGameFrameRunnable();
        this.allBinaryGameCanvas = allBinaryGameCanvas;
    }
    

    @override
    void run() {
        try {
            final AllBinaryGameCanvas allBinaryGameCanvas = this.allBinaryGameCanvas;
            allBinaryGameCanvas.getLoopTimeHelperP().setStartTime(this.gameTickTimeDelayHelper.setStartTime());
            this.gameTickDisplayInfoSingleton.update();
            allBinaryGameCanvas.processGame();
            if (!allBinaryGameCanvas.isRunning() || allBinaryGameCanvas.isPaused()) {
                allBinaryGameCanvas.notifyDonePainting();
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e);
            }
        }
    }
}

