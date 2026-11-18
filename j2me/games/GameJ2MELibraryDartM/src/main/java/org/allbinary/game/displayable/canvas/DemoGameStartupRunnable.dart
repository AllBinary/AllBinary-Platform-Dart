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
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/thread/ABRunnable.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/DemoCanvas.dart';

class DemoGameStartupRunnable extends ABRunnable {
    static const int TYPE = 4;
    late LogUtil logUtil;
    late DemoCanvas demoCanvas;

    // Java field initializers run after the base constructor
    void initFieldsDemoGameStartupRunnable() {
    this.logUtil = LogUtil.getInstance();
    
    }
    

    DemoGameStartupRunnable(DemoCanvas demoCanvas) {
        this.initFieldsDemoGameStartupRunnable();
        this.demoCanvas = demoCanvas;
    }
    

    @override
    void run() {
        try {
            this.setRunning(true);
            this.demoCanvas.stopGameDemo();
            this.demoCanvas.create();
            this.demoCanvas.start();
            this.setRunning(false);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.setRunning(false);
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e);
            }
        }
    }
    

    @override
    int getType() {
        return DemoGameStartupRunnable.TYPE;
    }
}

