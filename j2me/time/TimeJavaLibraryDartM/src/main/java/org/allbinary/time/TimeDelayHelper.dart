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
// package org.allbinary.time

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';

class TimeDelayHelper {
    int startTime = 0;
    int elapsedTimeAtPause = 0;
    int delay = 0;

    // Java field initializers run after the base constructor
    void initFieldsTimeDelayHelper() {
    this.startTime = -1;
    this.elapsedTimeAtPause = Long.MIN_VALUE;
    
    }
    

    TimeDelayHelper(int delay) {
        this.initFieldsTimeDelayHelper();
        this.delay = delay;
        this.setStartTimeTNT();
    }
    

    bool isTimeTNT() {
        int currentTime = JSystem.currentTimeMillis();
        if (currentTime - this.startTime > this.delay) {
            this.startTime = currentTime;
            return true;
        }
        return false;
    }
    

    bool isTimeSinceTNT(int delay) {
        int currentTime = JSystem.currentTimeMillis();
        if (currentTime - this.startTime > delay) {
            this.startTime = currentTime;
            return true;
        }
        return false;
    }
    

    bool isTime(int currentTime) {
        if (currentTime - this.startTime > this.delay) {
            this.startTime = currentTime;
            return true;
        }
        return false;
    }
    

    bool isTimeWithoutReset(int currentTime) {
        if (currentTime - this.startTime > this.delay) {
            return true;
        }
        return false;
    }
    

    bool isTimeSince(int delay, int currentTime) {
        if (currentTime - this.startTime > this.delay) {
            this.startTime = currentTime;
            return true;
        }
        return false;
    }
    

    int getElapsedTNT() {
        return JSystem.currentTimeMillis() - this.startTime;
    }
    

    int getElapsed(int currentTime) {
        return currentTime - this.startTime;
    }
    

    bool isElapsed(int currentTime, int time) {
        if (this.getElapsed(currentTime) > time) {
            return true;
        } else {
            return false;
        }
    }
    

    bool isElapsedTNT(int time) {
        if (this.getElapsedTNT() > time) {
            return true;
        } else {
            return false;
        }
    }
    

    void setStartTime(int startTime) {
        this.startTime = startTime;
    }
    

    int getStartTime() {
        return this.startTime;
    }
    

    void setStartTimeTNT() {
        this.startTime = JSystem.currentTimeMillis();
    }
    

    void pause() {
        this.elapsedTimeAtPause = this.getElapsedTNT();
        this.startTime = Long.MAX_VALUE;
    }
    

    bool resume() {
        if (this.elapsedTimeAtPause != Long.MIN_VALUE) {
            this.startTime = JSystem.currentTimeMillis() + this.elapsedTimeAtPause;
            this.elapsedTimeAtPause = Long.MIN_VALUE;
            this.setStartTimeTNT();
            return true;
        }
        return false;
    }
    

    String toStringAt(int currentTime) {
        int elapsed = this.getElapsed(currentTime);
        if (elapsed > 0) {
            final CommonLabels commonLabels = CommonLabels.getInstance();
            final String elapsedAsString = jstr(elapsed);
            return StringMaker().append(commonLabels.START).appendlong(this.startTime).append(commonLabels.CURRENT).appendlong(currentTime).append(commonLabels.ELAPSED).append(elapsedAsString).toString();
        } else {
            return StringUtil.getInstance().EMPTY_STRING;
        }
    }
    

    @override
    String toString() {
        int currentTime = JSystem.currentTimeMillis();
        int elapsed = this.getElapsed(currentTime);
        if (elapsed > 0) {
            final CommonLabels commonLabels = CommonLabels.getInstance();
            final String elapsedAsString = jstr(elapsed);
            return StringMaker().append(commonLabels.START).appendlong(this.startTime).append(commonLabels.CURRENT).appendlong(currentTime).append(commonLabels.ELAPSED).append(elapsedAsString).toString();
        } else {
            return StringUtil.getInstance().EMPTY_STRING;
        }
    }
}

