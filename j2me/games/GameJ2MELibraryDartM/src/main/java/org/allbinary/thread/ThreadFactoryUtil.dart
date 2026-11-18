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
// package org.allbinary.thread

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/J2MEUtil.dart';
import 'package:allbinary/org/allbinary/canvas/RunnableCanvas.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/DemoCanvas.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/RunnableCanvasSingleThreadStartRunnable.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/thread/ABRunnable.dart';
import 'package:allbinary/org/allbinary/thread/PrimaryThreadPool.dart';
import 'package:allbinary/org/allbinary/thread/ThreadPool.dart';

class ThreadFactoryUtil {
    static final ThreadFactoryUtil instance = ThreadFactoryUtil();
    late LogUtil logUtil;

    // Java field initializers run after the base constructor
    void initFieldsThreadFactoryUtil() {
    this.logUtil = LogUtil.getInstance();
    }

    ThreadFactoryUtil() {
        this.initFieldsThreadFactoryUtil();
    }
    

    static ThreadFactoryUtil getInstance() {
        return ThreadFactoryUtil.instance;
    }
    

    Thread getInstanceGameCanvasRunnable(GameCanvasRunnableInterface runnable) {
        return this.getInstanceType(runnable, runnable.getType());
    }
    

    Thread getInstanceForRunnable(ABRunnable runnable) {
        return this.getInstanceType(runnable, runnable.getType());
    }
    

    Thread getInstanceType(Runnable runnable, int type) {
        final CommonStrings commonStrings = CommonStrings.getInstance();
        if (J2MEUtil.isHTML()) {
            if (type == DemoCanvas.TYPE || type == AllBinaryGameCanvas.TYPE) {
                final RunnableCanvasSingleThreadStartRunnable demoGameSingleThreadStartRunnable = RunnableCanvasSingleThreadStartRunnable((runnable as RunnableCanvas));
                PreLogUtil.put(StringMaker().append("Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: ").append(StringUtil.getInstance().toString1(runnable)).toString(), this, commonStrings.CONSTRUCTOR);
                final ThreadPool primaryThreadPool = PrimaryThreadPool.getInstance();
                primaryThreadPool.runTask(demoGameSingleThreadStartRunnable);
            } else {
                PreLogUtil.put(StringMaker().append("Using Pseudo Thread for Runnable under PlayN/HTML5: ").append(StringUtil.getInstance().toString1(runnable)).toString(), this, commonStrings.CONSTRUCTOR);
                ThreadPool primaryThreadPool = PrimaryThreadPool.getInstance();
                primaryThreadPool.runTask(runnable);
            }
        }
        final Thread thread = Thread(runnable, runnable.toString());
        this.logUtil.putF(thread.toString(), this, commonStrings.CONSTRUCTOR);
        return thread;
    }
    

    void start(Thread thread) {
        thread.start();
    }
}

