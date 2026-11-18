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
// package org.allbinary.thread

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/thread/ThreadPool.dart';
import 'package:allbinary/org/allbinary/thread/PriorityRunnable.dart';

//This is mainly for network communications.
class PathFindingThreadPool extends ThreadPool {
    static final ThreadPool instance = PathFindingThreadPool("PathFinding", 1, 1);
    

    static ThreadPool getInstance() {
        return PathFindingThreadPool.instance;
    }
    

    PathFindingThreadPool(String poolName, int numThreads, int priority) : super(poolName, numThreads, ThreadPool.NORMAL_PRIORITY) {
        
    }
    

    @override
    void runTaskWithPriority(PriorityRunnable task) {
        super.runTaskWithPriority(task);
    }
    

    @override
    void runTask(Runnable task) {
        super.runTask(task);
    }
    

    @override
    void startTask(Runnable task) {
    }
    

    @override
    void completedTask(Runnable task) {
    }
}

