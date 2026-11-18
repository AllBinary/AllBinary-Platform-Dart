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
// package org.allbinary.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/math/PrimitiveLongSingleton.dart';
import 'package:allbinary/org/allbinary/logic/math/ScaleFactorFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelperFactory.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';

class BaseGameStatistics {
    late TimeDelayHelper timeDelayHelper;
    late TimeDelayHelper updateDelayHelper;
    int totalRefreshes = 0;
    int totalFrames = 0;
    late GameTickTimeDelayHelper gameTickTimeDelayHelper;
    int DEFAULT_SCALE_FACTOR = 0;
    late String NOT;
    late String EMPTY_STRING;
    late List<String?> STRING_ARRAY;
    int SPACE_CHAR = 0;
    int PLUS_CHAR = 0;
    int X_CHAR = 0;
    late List<List<int>?> CHAR_ARRAY;
    late PrimitiveLongSingleton primitiveLongSingleton;

    // Java field initializers run after the base constructor
    void initFieldsBaseGameStatistics() {
    this.timeDelayHelper = TimeDelayHelper(Integer.MAX_VALUE);
    this.updateDelayHelper = TimeDelayHelper(2000);
    this.totalRefreshes = 0;
    this.totalFrames = 0;
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    this.DEFAULT_SCALE_FACTOR = ScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR;
    this.NOT = "Not enough Time to Calculate";
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
    this.STRING_ARRAY = <String?>[" Total Time: ", this.EMPTY_STRING, " Total Frames: ", this.EMPTY_STRING, " Frames/10 Sec: ", this.EMPTY_STRING, " Total Paints: ", this.EMPTY_STRING, " Paints/10 Sec: ", this.EMPTY_STRING];
    this.SPACE_CHAR = " ".codeUnitAt(0);
    this.PLUS_CHAR = "+".codeUnitAt(0);
    this.X_CHAR = "X".codeUnitAt(0);
    this.CHAR_ARRAY = <List<int>>[<int>["F".codeUnitAt(0), "r".codeUnitAt(0), "a".codeUnitAt(0), "m".codeUnitAt(0), "e".codeUnitAt(0), "s".codeUnitAt(0), "/".codeUnitAt(0), "1".codeUnitAt(0), "0".codeUnitAt(0), " ".codeUnitAt(0), "S".codeUnitAt(0), "e".codeUnitAt(0), "c".codeUnitAt(0), ":".codeUnitAt(0)], <int>["X".codeUnitAt(0), "X".codeUnitAt(0)], <int>["P".codeUnitAt(0), "a".codeUnitAt(0), "i".codeUnitAt(0), "n".codeUnitAt(0), "t".codeUnitAt(0), "s".codeUnitAt(0), "/".codeUnitAt(0), "1".codeUnitAt(0), "0".codeUnitAt(0), " ".codeUnitAt(0), "S".codeUnitAt(0), "e".codeUnitAt(0), "c".codeUnitAt(0), ":".codeUnitAt(0)], <int>["X".codeUnitAt(0), "X".codeUnitAt(0)]];
    this.primitiveLongSingleton = PrimitiveLongSingleton.getInstance();
    }
    

    BaseGameStatistics() {
        this.initFieldsBaseGameStatistics();
    }
    

    void init() {
        this.timeDelayHelper.setStartTimeTNT();
        this.totalRefreshes = 0;
        this.totalFrames = 0;
    }
    

    void add(String string) {
    }
    

    void process() {
    }
    

    void nextFrame() {
        this.totalFrames++;
    }
    

    void nextRefresh() {
        this.totalRefreshes++;
    }
    

    int getRefreshRate() {
        int elapsed = this.timeDelayHelper.getElapsed(this.gameTickTimeDelayHelper.startTime);
        if (elapsed > 1) {
            final int time = ((this.totalRefreshes ~/ (elapsed >> this.DEFAULT_SCALE_FACTOR))).toSigned(16);
            return time;
        } else {
            return 0;
        }
    }
    

    TimeDelayHelper getTimeDelayHelper() {
        return this.timeDelayHelper;
    }
    

    List<List<int>?> to2DCharArray() {
        int totalTime = this.timeDelayHelper.getElapsed(this.gameTickTimeDelayHelper.startTime);
        totalTime = (totalTime >> this.DEFAULT_SCALE_FACTOR);
        if (totalTime > 0 && this.updateDelayHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
            int framesPerSec = ((this.totalFrames ~/ totalTime)).toSigned(32);
            if (framesPerSec < 10) {
                this.CHAR_ARRAY[1]![0] = this.SPACE_CHAR;
                this.CHAR_ARRAY[1]![1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[framesPerSec];
            } else if (framesPerSec < 100) {
                int tens = framesPerSec ~/ 10;
                int removeTens = tens * 10;
                this.CHAR_ARRAY[1]![0] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[tens];
                this.CHAR_ARRAY[1]![1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[framesPerSec - removeTens];
            } else {
                this.CHAR_ARRAY[1]![0] = this.PLUS_CHAR;
                this.CHAR_ARRAY[1]![1] = this.PLUS_CHAR;
            }
            int refreshesPerSec = ((this.totalRefreshes ~/ totalTime)).toSigned(32);
            if (refreshesPerSec < 10) {
                this.CHAR_ARRAY[3]![0] = this.X_CHAR;
                this.CHAR_ARRAY[3]![1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec];
            } else if (refreshesPerSec < 100) {
                int tens = refreshesPerSec ~/ 10;
                int removeTens = tens * 10;
                this.CHAR_ARRAY[3]![0] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec ~/ 10];
                this.CHAR_ARRAY[3]![1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec - removeTens];
            } else {
                this.CHAR_ARRAY[3]![0] = this.PLUS_CHAR;
                this.CHAR_ARRAY[3]![1] = this.PLUS_CHAR;
            }
        }
        return this.CHAR_ARRAY;
    }
    

    List<String?> toStringArray() {
        int totalTime = this.timeDelayHelper.getElapsed(this.gameTickTimeDelayHelper.startTime);
        totalTime = (totalTime ~/ 10000);
        if (totalTime > 0) {
            this.STRING_ARRAY[1] = jstr(totalTime);
            this.STRING_ARRAY[3] = jstr(this.totalFrames);
            this.STRING_ARRAY[5] = jstr(this.totalFrames ~/ totalTime);
            this.STRING_ARRAY[7] = jstr(this.totalRefreshes);
            this.STRING_ARRAY[9] = jstr(this.totalRefreshes ~/ totalTime);
        } else {
            String string = this.EMPTY_STRING;
            this.STRING_ARRAY[1] = string;
            this.STRING_ARRAY[3] = string;
            this.STRING_ARRAY[5] = string;
            this.STRING_ARRAY[7] = string;
            this.STRING_ARRAY[9] = string;
        }
        return this.STRING_ARRAY;
    }
    

    String toStringAt(int totalTime) {
        StringMaker stringBuffer = StringMaker();
        stringBuffer.append(this.STRING_ARRAY[0]!);
        stringBuffer.appendlong(totalTime);
        stringBuffer.append(this.STRING_ARRAY[2]!);
        stringBuffer.appendlong(this.totalFrames);
        stringBuffer.append(this.STRING_ARRAY[4]!);
        stringBuffer.appendlong(this.totalFrames ~/ totalTime);
        if (this.totalRefreshes > 0) {
            stringBuffer.append(this.STRING_ARRAY[6]!);
            stringBuffer.appendlong(this.totalRefreshes);
            stringBuffer.append(this.STRING_ARRAY[8]!);
            stringBuffer.appendlong(this.totalRefreshes ~/ totalTime);
            stringBuffer.append(CommonSeps.getInstance().NEW_LINE);
        }
        return stringBuffer.toString();
    }
    

    @override
    String toString() {
        int totalTime = this.timeDelayHelper.getElapsed(this.gameTickTimeDelayHelper.startTime);
        totalTime = (totalTime ~/ 1000);
        if (totalTime > 0) {
            return this.toStringAt(totalTime);
        } else {
            return this.NOT;
        }
    }
}

