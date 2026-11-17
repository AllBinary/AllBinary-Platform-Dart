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

class ThreadUtil {
    static final ThreadUtil instance = ThreadUtil();
    late LogUtil logUtil;
    late String JOIN;

    // Java field initializers run after the base constructor
    void initFieldsThreadUtil() {
    this.logUtil = LogUtil.getInstance();
    this.JOIN = "join";
    }

    ThreadUtil() {
        this.initFieldsThreadUtil();
    }
    

    static ThreadUtil getInstance() {
        return ThreadUtil.instance;
    }
    

    bool isRunning(Thread thread) {
        if (thread != null && thread.isAlive()) {
            return true;
        } else {
            return false;
        }
    }
    

    void join(Thread thread) {
        if (ThreadUtil.getInstance().isRunning(thread)) {
            this.logUtil.putF("Waiting for Thread To Join/End", this, this.JOIN);
            thread.join();
        }
    }
}

