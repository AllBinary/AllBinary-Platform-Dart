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
// ignore_for_file: unused_import, unused_local_variable, unnecessary_null_comparison
// package org.allbinary.thread

import 'package:allbinary/allbinary_java.dart';

class ThreadPoolStrings {
    static final ThreadPoolStrings instance = ThreadPoolStrings();
    late String ADD_TASK;
    late String START_TASK;
    late String COMPLETE_TASK;

    // Java field initializers run after the base constructor
    void initFieldsThreadPoolStrings() {
    this.ADD_TASK = "addTask";
    this.START_TASK = "Started Task: ";
    this.COMPLETE_TASK = "Completed Task: ";
    }

    ThreadPoolStrings() {
        this.initFieldsThreadPoolStrings();
    }
    

    static ThreadPoolStrings getInstance() {
        return ThreadPoolStrings.instance;
    }
}

