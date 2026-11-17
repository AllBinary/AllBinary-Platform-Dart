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
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListUtil.dart';
import 'package:allbinary/org/allbinary/thread/NullRunnable.dart';
import 'package:allbinary/org/allbinary/thread/ThreadPoolStrings.dart';
import 'package:allbinary/org/allbinary/thread/ThreadObjectUtil.dart';
import 'package:allbinary/org/allbinary/thread/PooledThread.dart';
import 'package:allbinary/org/allbinary/thread/PriorityRunnable.dart';

class ThreadPool {
    static final String ROOT_NAME = "-PooledThread-";
    static final int NORMAL_PRIORITY = Thread.NORM_PRIORITY;
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late NullRunnable NULL_RUNNABLE;
    late ThreadPoolStrings threadPoolStrings;
    late ThreadObjectUtil threadObjectUtil;
    late String poolName;
    int priority = 0;
    bool isAlive = false;
    late BasicArrayList taskQueue;
    int threadID = 0;
    int numThreads = 0;
    bool runningTask = false;

    // Java field initializers run after the base constructor
    void initFieldsThreadPool() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.NULL_RUNNABLE = NullRunnable.getInstance();
    this.threadPoolStrings = ThreadPoolStrings.getInstance();
    this.threadObjectUtil = ThreadObjectUtil.getInstance();
    
    
    this.isAlive = false;
    this.taskQueue = BasicArrayListUtil.getInstance().getImmutableInstance();
    this.threadID = 0;
    
    this.runningTask = false;
    }
    

    ThreadPool(String poolName, int numThreads, int priority) {
        this.initFieldsThreadPool();
        this.poolName = poolName;
        this.priority = priority;
        this.numThreads = numThreads;
    }
    

    void init() {
        if (!this.isAlive) {
            this.isAlive = true;
            this.taskQueue = BasicArrayListD();
            late PooledThread pooledThread;
            for (int i = 0; i < this.numThreads; i++) {
                pooledThread = PooledThread(this);
                pooledThread.setPriority(this.priority);
                pooledThread.start();
            }
        }
    }
    

    void runAPriorityTask() {
        throw JException('RuntimeException', '');
    }
    

    void runTaskWithPriority(PriorityRunnable task) {
        {
            if (!this.isAlive) {
                this.init();
            }
            if (task != null) {
                final int size = this.taskQueue.size();
                late PriorityRunnable runnable;
                PriorityRunnable lowerPriorityRunnable = this.threadObjectUtil.NULL_PRIORITY_RUNNABLE;
                for (int index = 0; index < size; index++) {
                    runnable = (this.taskQueue.get(index) as PriorityRunnable);
                    if (runnable.getPriority() > task.getPriority()) {
                        lowerPriorityRunnable = runnable;
                        break;
                    }
                }
                if (lowerPriorityRunnable == this.threadObjectUtil.NULL_PRIORITY_RUNNABLE) {
                    this.taskQueue.add(task);
                } else {
                    final int index = this.taskQueue.indexOf(lowerPriorityRunnable);
                    this.taskQueue.addAt(index, task);
                }
                this.notify();
            }
        }
    }
    

    void runTask(Runnable task) {
        {
            if (!this.isAlive) {
                this.init();
            }
            if (task != null) {
                this.taskQueue.add(task);
                this.notify();
            }
        }
    }
    

    Runnable getTask() {
        {
            while (this.taskQueue.size() == 0) {
                if (!this.isAlive) {
                    return this.NULL_RUNNABLE;
                }
                this.wait();
            }
            final Runnable runnable = (this.taskQueue.removeAt(0) as Runnable);
            return runnable;
        }
    }
    

    void clear() {
        {
            if (this.isAlive) {
                this.taskQueue.clear();
            }
        }
    }
    

    void close() {
        {
            if (this.isAlive) {
                this.isAlive = false;
                this.taskQueue.clear();
            }
        }
    }
    

    void join() {
        {
            this.isAlive = false;
            this.taskQueue.clear();
            this.notifyAll();
        }
    }
    

    bool isBusy() {
        if (!this.isAlive) {
            return false;
        }
        if (this.taskQueue.size() > 0) {
            return true;
        }
        if (this.runningTask) {
            return true;
        }
        return false;
    }
    

    void threadStarted() {
    }
    

    void threadStopped() {
        if (this.numThreads == 1) {
            this.isAlive = false;
            this.taskQueue.clear();
        }
    }
    

    void startTask(Runnable task) {
    }
    

    void completedTask(Runnable task) {
    }
    

    String createName() {
        return StringMaker().append(this.poolName).append(ThreadPool.ROOT_NAME).appendint(this.threadID++).toString();
    }
}

