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
// ignore_for_file: unused_import, unused_local_variable, unnecessary_null_comparison
// package org.allbinary.thread

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/thread/ThreadPool.dart';

//This is mainly for network communications.
class SecondaryThreadPool extends ThreadPool {
    static final ThreadPool instance = SecondaryThreadPool("Secondary", 1, ThreadPool.NORMAL_PRIORITY);
    

    static ThreadPool getInstance() {
        return SecondaryThreadPool.instance;
    }
    

    SecondaryThreadPool(String poolName, int numThreads, int priority) : super(poolName, numThreads, priority) {
        
    }
    

    @override
    void runTask(Runnable task) {
        this.logUtil.putF(StringMaker().append(StringUtil.getInstance().toString1(task)).appendlong(JSystem.currentTimeMillis()).toString(), this, this.threadPoolStrings.ADD_TASK);
        super.runTask(task);
    }
    

    @override
    void startTask(Runnable task) {
        this.logUtil.putF(StringMaker().append(this.threadPoolStrings.START_TASK).append(StringUtil.getInstance().toString1(task)).appendlong(JSystem.currentTimeMillis()).toString(), this, this.commonStrings.RUN);
    }
    

    @override
    void completedTask(Runnable task) {
        this.logUtil.putF(StringMaker().append(this.threadPoolStrings.COMPLETE_TASK).append(StringUtil.getInstance().toString1(task)).appendlong(JSystem.currentTimeMillis()).toString(), this, this.commonStrings.RUN);
    }
}

