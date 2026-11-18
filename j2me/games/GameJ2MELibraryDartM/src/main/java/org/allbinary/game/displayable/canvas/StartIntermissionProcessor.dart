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
import 'package:allbinary/org/allbinary/canvas/Processor.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.dart';

class StartIntermissionProcessor extends Processor {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late AllBinaryGameCanvas gameCanvas;
    int WAIT = 0;

    // Java field initializers run after the base constructor
    void initFieldsStartIntermissionProcessor() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    this.WAIT = 5000;
    }
    

    StartIntermissionProcessor(AllBinaryGameCanvas gameCanvas) {
        this.initFieldsStartIntermissionProcessor();
        this.gameCanvas = gameCanvas;
    }
    

    @override
    void process() {
        if (this.gameCanvas.getStartIntermissionInterface().getTimeDelayHelper().isElapsedTNT(this.WAIT)) {
            this.logUtil.putF("Intermission End", this, this.commonStrings.PROCESS);
            this.gameCanvas.getStartIntermissionInterface().setEnabled(false);
        }
    }
}

