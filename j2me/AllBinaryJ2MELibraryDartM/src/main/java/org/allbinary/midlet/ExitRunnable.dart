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
// package org.allbinary.midlet

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/NullCanvas.dart';
import 'package:allbinary/org/allbinary/canvas/Processor.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/midlet/AllBinaryMidlet.dart';

class ExitRunnable implements Runnable {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late AllBinaryMidlet midlet;
    late Processor processor;
    bool isProgress = false;

    // Java field initializers run after the base constructor
    void initFieldsExitRunnable() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    
    }
    

    ExitRunnable(AllBinaryMidlet midlet, Processor processor, bool isProgress) {
        this.initFieldsExitRunnable();
        this.midlet = midlet;
        this.isProgress = isProgress;
        this.processor = processor;
    }
    

    @override
    void run() {
        try {
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN);
            this.midlet.destroyAppInRunnable(false, this.isProgress);
            this.midlet.setDisplay(NullCanvas.NULL_CANVAS);
            this.midlet.notifyDestroyed();
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
            this.processor.process();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e);
            try {
                this.processor.process();
            } catch (jcaught) {
                {
                    final dynamic e2 = jcaught;
                this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e);
                }
            }
            }
        }
    }
}

