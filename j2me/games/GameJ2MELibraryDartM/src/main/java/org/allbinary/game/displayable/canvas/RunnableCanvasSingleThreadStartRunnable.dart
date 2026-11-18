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
import 'package:allbinary/org/allbinary/canvas/RunnableCanvas.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameRunnable.dart';

class RunnableCanvasSingleThreadStartRunnable extends GameRunnable {
    late LogUtil logUtil;
    late RunnableCanvas runnableCanvas;

    // Java field initializers run after the base constructor
    void initFieldsRunnableCanvasSingleThreadStartRunnable() {
    this.logUtil = LogUtil.getInstance();
    
    }
    

    RunnableCanvasSingleThreadStartRunnable(RunnableCanvas demoCanvas) {
        this.initFieldsRunnableCanvasSingleThreadStartRunnable();
        this.runnableCanvas = demoCanvas;
    }
    

    @override
    void run() {
        try {
            this.runnableCanvas.run();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e);
            }
        }
    }
    

    @override
    void processLoopSleep() {
        this.runnableCanvas.processLoopSleep();
    }
}

