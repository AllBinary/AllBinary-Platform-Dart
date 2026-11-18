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
import 'package:allbinary/org/allbinary/canvas/Processor.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/ClientInformationFactory.dart';
import 'package:allbinary/org/allbinary/thread/PrimaryThreadPool.dart';
import 'package:allbinary/org/allbinary/thread/ThreadPool.dart';
import 'package:allbinary/org/allbinary/midlet/AllBinaryMidlet.dart';
import 'package:allbinary/org/allbinary/midlet/MidletExitProcessorFactory.dart';
import 'package:allbinary/org/allbinary/midlet/ExitRunnable.dart';

//J2MEForJ2ME
class ProgressMidlet extends AllBinaryMidlet {
    late AbeClientInformationInterface abeClientInformation;

    // Java field initializers run after the base constructor
    void initFieldsProgressMidlet() {
    
    }
    

    ProgressMidlet(ClientInformationFactory clientInformationFactory) {
        this.initFieldsProgressMidlet();
        this.preInit();
        this.abeClientInformation = clientInformationFactory.getInstance();
    }
    

    void preInit() {
    }
    

    void exitProgress(bool isProgress) {
        final Processor processor = MidletExitProcessorFactory.getInstance().getExitInstance(this);
        try {
            ThreadPool primaryThreadPool = PrimaryThreadPool.getInstance();
            Runnable runnable = ExitRunnable(this, processor, isProgress);
            primaryThreadPool.runTask(runnable);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "exit", e);
            try {
                processor.process();
            } catch (jcaught) {
                {
                    final dynamic e2 = jcaught;
                this.logUtil.put(this.commonStrings.EXCEPTION, this, "exit", e);
                }
            }
            }
        }
    }
}

