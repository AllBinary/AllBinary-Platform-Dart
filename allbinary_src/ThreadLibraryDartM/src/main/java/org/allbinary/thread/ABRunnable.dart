/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
import 'package:allbinary/org/allbinary/thread/RunnableInterface.dart';

class ABRunnable implements RunnableInterface {
    bool running = false;

    // Java field initializers run after the base constructor
    void initFieldsABRunnable() {
    this.running = false;
    }

    ABRunnable() {
        this.initFieldsABRunnable();
    }
    

    @override
    void setThread(Thread thread) {
    }
    

    @override
    bool isRunning() {
        return this.running;
    }
    

    @override
    void setRunning(bool running) {
        this.running = running;
    }
    

    @override
    void run() {
    }
    

    int getType() {
        return -1;
    }
}

