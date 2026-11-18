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
// package org.allbinary.game.displayable.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';

class GameRunnable implements Runnable {
    int WAIT = 0;
    int FAST = 0;
    int waitInMillis = 0;

    // Java field initializers run after the base constructor
    void initFieldsGameRunnable() {
    this.WAIT = 240;
    this.FAST = 60;
    this.waitInMillis = this.WAIT;
    }
    

    GameRunnable() {
        this.initFieldsGameRunnable();
    }
    

    @override
    void run() {
        DisplayInfoSingleton.getInstance().process();
    }
    

    void processLoopSleep() {
        Thread.sleep(this.waitInMillis);
    }
}

