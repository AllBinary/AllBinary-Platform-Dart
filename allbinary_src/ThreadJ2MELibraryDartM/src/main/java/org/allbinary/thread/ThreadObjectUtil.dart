// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.thread

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/thread/NullPriorityRunnable.dart';
import 'package:allbinary/org/allbinary/thread/PriorityRunnable.dart';

class ThreadObjectUtil {
    static final ThreadObjectUtil instance = ThreadObjectUtil();
    late PriorityRunnable NULL_PRIORITY_RUNNABLE;

    // Java field initializers run after the base constructor
    void initFieldsThreadObjectUtil() {
    this.NULL_PRIORITY_RUNNABLE = NullPriorityRunnable();
    }

    ThreadObjectUtil() {
        this.initFieldsThreadObjectUtil();
    }
    

    static ThreadObjectUtil getInstance() {
        return ThreadObjectUtil.instance;
    }
    

    void notifyObject(Object anyType) {
        anyType.notify();
    }
    

    void waitObject(Object anyType) {
        anyType.wait();
    }
    

    void waitObjectFor(Object anyType, int delay) {
        TsUtil.getInstance().waitFor(anyType, delay);
    }
    

    void processThread(Runnable runnable) {
        final Thread thread = Thread(runnable);
        thread.start();
    }
}

