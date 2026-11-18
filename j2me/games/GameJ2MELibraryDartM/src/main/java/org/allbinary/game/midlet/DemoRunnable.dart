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
// package org.allbinary.game.midlet

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/command/MyCommandsFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/midlet/DemoGameMidlet.dart';
import 'package:allbinary/org/allbinary/game/midlet/DemoGameMidletEvent.dart';
import 'package:allbinary/org/allbinary/game/midlet/DemoGameMidletStateFactory.dart';
import 'package:allbinary/org/allbinary/game/midlet/DemoGameMidletEventHandler.dart';

class DemoRunnable implements Runnable {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late DemoGameMidlet demoGameMidlet;
    late DemoGameMidletEvent startDemoGameMidletEvent;

    // Java field initializers run after the base constructor
    void initFieldsDemoRunnable() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    }
    

    DemoRunnable(DemoGameMidlet demoGameMidlet) {
        this.initFieldsDemoRunnable();
        this.demoGameMidlet = demoGameMidlet;
        this.startDemoGameMidletEvent = DemoGameMidletEvent(this.demoGameMidlet, DemoGameMidletStateFactory.getInstance().START_DEMO);
    }
    

    @override
    void run() {
        try {
            this.logUtil.putF(StringMaker().append(CommonLabels.getInstance().START_LABEL).append("GameCanvasRunnableInterface").toString(), this, this.commonStrings.RUN);
            this.demoGameMidlet.commandAction(MyCommandsFactory.getInstance().SET_DISPLAYABLE, ProgressCanvasFactory.getInstance());
            this.demoGameMidlet.setGameCanvasRunnableInterface(this.demoGameMidlet.createDemoGameCanvasRunnableInterface());
            this.demoGameMidlet.demoSetup();
            DemoGameMidletEventHandler.getInstance().fireEvent(this.startDemoGameMidletEvent);
            this.demoGameMidlet.startGameCanvasRunnableInterface();
            this.demoGameMidlet.postDemoSetup();
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e);
            }
        }
    }
}

