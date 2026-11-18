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
// package org.allbinary.time

import 'package:allbinary/allbinary_java.dart';

class GameTickTimeDelayHelper {
    int timeDelta = 0;
    int startTime = 0;
    int lastStartTime = 0;

    // Java field initializers run after the base constructor
    void initFieldsGameTickTimeDelayHelper() {
    this.timeDelta = 0;
    
    
    }
    

    GameTickTimeDelayHelper(int startTime) {
        this.initFieldsGameTickTimeDelayHelper();
        this.startTime = startTime;
        this.lastStartTime = 0;
    }
    

    int setStartTime() {
        this.startTime = JSystem.currentTimeMillis();
        return this.startTime;
    }
    

    void loop() {
        if (this.lastStartTime == Long.MIN_VALUE) {
            this.timeDelta = 0;
        } else {
            this.timeDelta = JSystem.currentTimeMillis() - this.lastStartTime;
        }
    }
    

    int getTimeFromStart() {
        return this.startTime - this.lastStartTime;
    }
}

