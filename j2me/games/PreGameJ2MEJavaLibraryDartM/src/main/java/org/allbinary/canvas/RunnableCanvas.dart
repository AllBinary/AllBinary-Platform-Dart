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
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/NullWaitGameRunnable.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/MyCanvas.dart';
import 'package:allbinary/org/allbinary/logic/ABSystemWrapper.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/thread/NullThread.dart';
import 'package:allbinary/org/allbinary/thread/RunnableInterface.dart';
import 'package:allbinary/org/allbinary/thread/ThreadObjectUtil.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/canvas/Processor.dart';
import 'package:allbinary/org/allbinary/canvas/RunnableCanvasRefreshHelper.dart';

class RunnableCanvas extends MyCanvas implements RunnableInterface {
    late NullUtil nullUtil;
    late StdUtil stdUtil;
    late ABSystemWrapper systemWrapper;
    late TsUtil tsUtil;
    late Thread thread;
    late Thread currentThread;
    bool running = false;
    late TimeDelayHelper loopTimeHelper;
    late Processor runnableCanvasRefreshHelper;
    late CommonLabels commonLabels;
    late ThreadObjectUtil threadObjectUtil;
    late String SET_RUNNING;
    late String IS_RUNNING;
    late String THREAD;
    late String NOT_EQUAL;
    late String PAUSE_SLEEP;
    late String START_PAUSE;
    late String END_PAUSE;
    late String PROCESS_LOOP_SLEEP;
    int pauseWait = 0;
    bool notified = false;

    // Java field initializers run after the base constructor
    void initFieldsRunnableCanvas() {
    this.nullUtil = NullUtil.getInstance();
    this.stdUtil = StdUtil.getInstance();
    this.systemWrapper = ABSystemWrapper.getInstance();
    this.tsUtil = TsUtil.getInstance();
    this.thread = NullThread.NULL_THREAD;
    this.currentThread = NullThread.NULL_THREAD;
    this.running = false;
    this.loopTimeHelper = TimeDelayHelper(NullWaitGameRunnable.getInstance().WAIT);
    this.runnableCanvasRefreshHelper = Processor.getInstance();
    this.commonLabels = CommonLabels.getInstance();
    this.threadObjectUtil = ThreadObjectUtil.getInstance();
    this.SET_RUNNING = "setRunning";
    this.IS_RUNNING = "isRunning";
    this.THREAD = "Thread: ";
    this.NOT_EQUAL = " != ";
    this.PAUSE_SLEEP = "pause sleep";
    this.START_PAUSE = "start pause - game thread sleep at: ";
    this.END_PAUSE = "end pause - game thread sleep at: ";
    this.PROCESS_LOOP_SLEEP = "processLoopSleep";
    this.pauseWait = 0;
    this.notified = false;
    }
    

    RunnableCanvas(CommandListener commandListener, BasicArrayList childNameList, bool hasParam) : super(CommonStrings.getInstance().UNKNOWN, childNameList) {
        this.initFieldsRunnableCanvas();
        
        this.logUtil.putF(StringMaker().append("RunnableCanvas delay: ").appendint(this.loopTimeHelper.delay).toString(), this, this.commonStrings.CONSTRUCTOR);
        this.runnableCanvasRefreshHelper = RunnableCanvasRefreshHelper(this);
        if (commandListener != null) {
            this.initCommands(commandListener);
        } else if (hasParam) {
            this.logUtil.putF("commandListener was null", this, "initCommands");
        }
    }
    

    void initCommands(CommandListener cmdListener) {
        this.logUtil.putF(this.commonStrings.NOT_IMPLEMENTED, this, "initCommands");
    }
    

    bool isMainCanvas() {
        if (this.getCustomCommandListener() != null) {
            return true;
        } else {
            return false;
        }
    }
    

    @override
    void setThread(Thread thread) {
        this.thread = thread;
    }
    

    @override
    void setRunning(bool running) {
        this.running = running;
        if (!this.running) {
            this.thread = NullThread.NULL_THREAD;
            {
                this.threadObjectUtil.notifyObject(this);
            }
        }
        this.logUtil.putF(StringMaker().append(this.IS_RUNNING).appendboolean(this.running).toString(), this, this.SET_RUNNING);
    }
    

    @override
    bool isRunning() {
        if (identical(this.thread, this.currentThread)) {
            return this.running;
        } else {
            final StringMaker stringBuffer = StringMaker();
            stringBuffer.append(this.THREAD);
            if (this.thread != null) {
                stringBuffer.append(this.thread.toString());
            }
            stringBuffer.append(this.NOT_EQUAL);
            if (this.currentThread != null) {
                stringBuffer.append(StringUtil.getInstance().toString1(this.currentThread));
            }
            this.logUtil.putF(stringBuffer.toString(), this, this.IS_RUNNING);
            return false;
        }
    }
    

    TimeDelayHelper getLoopTimeHelperP() {
        return this.loopTimeHelper;
    }
    

    void setWait(int wait) {
        this.loopTimeHelper.delay = wait;
        this.pauseWait = wait * 3;
        this.logUtil.putF(StringMaker().append("setWait - delay: ").appendint(this.loopTimeHelper.delay).toString(), this, this.commonStrings.CONSTRUCTOR);
    }
    

    int getWait() {
        return this.loopTimeHelper.delay;
    }
    

    void setCurrentThread() {
        this.currentThread = Thread.currentThread();
    }
    

    void setCurrentThreadFake() {
        this.currentThread = this.thread;
    }
    

    @override
    void showNotify() {
        try {
            this.stopWaiting();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "showNotify", e);
            }
        }
    }
    

    void stopWaiting() {
        this.notified = true;
        {
            this.threadObjectUtil.notifyObject(this);
        }
        this.repaint();
    }
    

    void waitOnNotify(int wait) {
        if (!this.notified) {
            if (wait > 0) {
                this.threadObjectUtil.waitObjectFor(this, wait);
            } else {
                this.threadObjectUtil.waitObject(this);
            }
        }
    }
    

    void processSleep() {
        Thread.sleep(this.pauseWait);
    }
    

    bool isPausable() {
        return false;
    }
    

    void processGameSleep(int sleep) {
        Thread.sleep(sleep);
    }
    

    void processLoopSleep() {
        this.runnableCanvasRefreshHelper.process();
        if (this.isPaused()) {
            final StringMaker stringMaker = StringMaker();
            if (this.isRunning() && !this.isSingleThread()) {
                stringMaker.delete(0, stringMaker.length());
                final int currentTimeMillis = this.systemWrapper.currentTimeMillis();
                this.logUtil.putF(stringMaker.append(this.START_PAUSE).appendlong(currentTimeMillis).append(this.PAUSE_SLEEP).appendlong(this.pauseWait).toString(), this, this.PROCESS_LOOP_SLEEP);
                while (this.isPaused() && this.isRunning() && !this.isSingleThread()) {
                    this.processSleep();
                    if (!this.isPausable()) {
                        stringMaker.delete(0, stringMaker.length());
                        this.logUtil.putF(stringMaker.append(this.END_PAUSE).appendlong(currentTimeMillis).toString(), this, this.PROCESS_LOOP_SLEEP);
                        return;
                    }
                }
            }
        }
        int elapsedTime = this.loopTimeHelper.getElapsedTNT();
        final int wait = this.loopTimeHelper.delay;
        if (elapsedTime > wait) {
            elapsedTime = wait;
        } else {
            this.processGameSleep(wait - elapsedTime);
        }
    }
    

    bool isSingleThread() {
        return false;
    }
    

    @override
    void run() {
        this.setCurrentThread();
    }
    

    void end2() {
    }
    

    int getType() {
        return -1;
    }
}

