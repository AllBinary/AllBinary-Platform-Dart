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
// package org.allbinary.logic.util.cache

import 'package:allbinary/allbinary_java.dart';

class CachePolicy {
    late String name;
    int maxTime = 0;
    int maxSize = 0;

    // Java field initializers run after the base constructor
    void initFieldsCachePolicy() {
    
    this.maxTime = 0;
    this.maxSize = 0;
    }
    

    CachePolicy(String name, int maxTime, int maxSize) {
        this.initFieldsCachePolicy();
        this.name = name;
        this.setMaxTime(maxTime);
        this.setMaxSize(maxSize);
    }
    

    int getMaxTime() {
        return this.maxTime;
    }
    

    void setMaxTime(int maxTime) {
        this.maxTime = maxTime;
    }
    

    int getMaxSize() {
        return this.maxSize;
    }
    

    void setMaxSize(int maxSize) {
        this.maxSize = maxSize;
    }
    

    String getName() {
        return this.name;
    }
}

