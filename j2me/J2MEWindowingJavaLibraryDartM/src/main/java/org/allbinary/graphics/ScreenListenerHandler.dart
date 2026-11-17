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
// package org.allbinary.graphics

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/ScreenEmptyListener.dart';
import 'package:allbinary/org/allbinary/graphics/ScreenListenerInterface.dart';

class ScreenListenerHandler {
    static final ScreenListenerHandler instance = ScreenListenerHandler();
    late ScreenListenerInterface screenListenerInterface;

    // Java field initializers run after the base constructor
    void initFieldsScreenListenerHandler() {
    this.screenListenerInterface = ScreenEmptyListener();
    }

    ScreenListenerHandler() {
        this.initFieldsScreenListenerHandler();
    }
    

    static ScreenListenerHandler getInstance() {
        return ScreenListenerHandler.instance;
    }
    

    void setListener(ScreenListenerInterface screenListenerInterface) {
        this.screenListenerInterface = screenListenerInterface;
    }
    

    void fireWithState(bool isFullScreen) {
        this.screenListenerInterface.onFullScreen(isFullScreen);
    }
    

    void fire() {
        this.screenListenerInterface.onFullScreenDisplay();
    }
}

