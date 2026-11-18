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
// package org.allbinary.media.audio

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/media/Control.dart';
import 'package:allbinary/javax/microedition/media/MediaException.dart';
import 'package:allbinary/javax/microedition/media/Player.dart';
import 'package:allbinary/javax/microedition/media/PlayerListener.dart';
import 'package:allbinary/javax/microedition/media/TimeBase.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/media/audio/TimeBaseInterface.dart';
import 'package:allbinary/org/allbinary/media/audio/Controllable2.dart';
import 'package:allbinary/org/allbinary/media/audio/NullControl.dart';

//BasicPlayerMIDP2JavaLibrary
class BasicPlayer implements Player, TimeBaseInterface, Controllable2 {
    static String CONTROL_TYPE = "ToneControl";
    late BasicArrayList listenersList;
    late TimeBase timeBase;
    int stateP = 0;
    int loopCountP = 0;

    // Java field initializers run after the base constructor
    void initFieldsBasicPlayer() {
    this.listenersList = BasicArrayListD();
    
    this.stateP = 0;
    this.loopCountP = 0;
    }
    

    BasicPlayer() {
        this.initFieldsBasicPlayer();
        this.setLoopCount(0);
        this.setState(Player.UNREALIZED);
    }
    

    String getContentType() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    Control getControl(String controlType) {
        return NullControl();
    }
    

    List<Control?> getControls() {
        return List<Control?>.filled(0, null);
    }
    

    void close() {
    }
    

    void addPlayerListener(PlayerListener playerListener) {
        if (!this.listenersList.contains(playerListener)) {
            this.listenersList.add(playerListener);
        }
    }
    

    void removePlayerListener(PlayerListener playerListener) {
        this.listenersList.remove(playerListener);
    }
    

    int getState() {
        return this.stateP;
    }
    

    void setState(int state) {
        this.stateP = state;
    }
    

    int getDuration() {
        return 0;
    }
    

    int getMediaTime() {
        return 0;
    }
    

    TimeBase getTimeBase() {
        return this.timeBase;
    }
    

    void setTimeBase(TimeBase timeBase) {
        this.timeBase = timeBase;
    }
    

    void deallocate() {
    }
    

    void prefetch() {
    }
    

    void realize() {
    }
    

    void setLoopCount(int count) {
        this.loopCountP = count;
    }
    

    int getLoopCount() {
        return this.loopCountP;
    }
    

    int setMediaTime(int now) {
        return 0;
    }
    

    void start() {
        this.setState(Player.STARTED);
    }
    

    void stop() {
        this.setState(Player.PREFETCHED);
    }
    

    void setVolume(int leftVolume, int rightVolume) {
    }
}

