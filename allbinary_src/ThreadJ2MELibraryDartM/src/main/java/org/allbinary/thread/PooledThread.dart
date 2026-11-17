/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// ignore_for_file: unused_import, unused_local_variable, unnecessary_null_comparison
// package org.allbinary.thread

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/thread/ThreadObjectUtil.dart';
import 'package:allbinary/org/allbinary/thread/ThreadPool.dart';

class PooledThread extends Thread {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late ThreadObjectUtil threadObjectUtil;
    late ThreadPool threadPool;
    late String INTERRUPT_EXCEPTION;

    // Java field initializers run after the base constructor
    void initFieldsPooledThread() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.threadObjectUtil = ThreadObjectUtil.getInstance();
    
    this.INTERRUPT_EXCEPTION = "Exit InterruptedException";
    }
    

    PooledThread(ThreadPool threadPool) : super(threadPool.createName()) {
        this.initFieldsPooledThread();
        
        this.logUtil.putF(this.commonStrings.CONSTRUCTOR, this, this.commonStrings.CONSTRUCTOR);
        this.threadPool = threadPool;
    }
    

    @override
    void run() {
        this.threadPool.threadStarted();
        while (true) {
            Runnable task2 = this.threadObjectUtil.NULL_PRIORITY_RUNNABLE;
            try {
                task2 = this.threadPool.getTask();
                this.threadPool.runningTask = true;
                this.threadPool.startTask(task2);
            } catch (ex) {
                final LogUtil logUtil = LogUtil.getInstance();
                logUtil.putF(this.INTERRUPT_EXCEPTION, this, this.commonStrings.RUN);
                break;
            }
            if (task2 == this.threadObjectUtil.NULL_PRIORITY_RUNNABLE) {
                break;
            }
            try {
                task2.run();
                this.threadPool.completedTask(task2);
                this.threadPool.runningTask = false;
            } catch (e) {
                final LogUtil logUtil = LogUtil.getInstance();
                logUtil.put(StringMaker().append(this.commonStrings.EXCEPTION_LABEL).append(StringUtil.getInstance().toString1(task2)).toString(), this, this.commonStrings.RUN, e);
            }
        }
        this.threadPool.threadStopped();
    }
}

