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
import 'package:allbinary/javax/microedition/media/Controllable.dart';
import 'package:allbinary/javax/microedition/media/MediaException.dart';
import 'package:allbinary/javax/microedition/media/Player.dart';
import 'package:allbinary/javax/microedition/media/PlayerListener.dart';
import 'package:allbinary/javax/microedition/media/TimeBase.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/time/GameTickTimeDelayHelperFactory.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/media/audio/TimeBaseInterface.dart';
import 'package:allbinary/org/allbinary/media/audio/Controllable2.dart';

//BasicPlayerMIDP2
class PlayerComposite implements Controllable, Player {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late Player player;
    late TimeDelayHelper timeElapsedHelper;
    late GameTickTimeDelayHelper gameTickTimeDelayHelper;

    // Java field initializers run after the base constructor
    void initFieldsPlayerComposite() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    this.timeElapsedHelper = TimeDelayHelper(0);
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    }
    

    PlayerComposite(Player player, int repeatTime) {
        this.initFieldsPlayerComposite();
        this.player = player;
        this.timeElapsedHelper.delay = repeatTime;
    }
    

    void addPlayerListener(PlayerListener playerListener) {
        this.player.addPlayerListener(playerListener);
    }
    

    void removePlayerListener(PlayerListener playerListener) {
        this.player.removePlayerListener(playerListener);
    }
    

    void close() {
        this.player.close();
    }
    

    void deallocate() {
        this.player.deallocate();
    }
    

    String getContentType() {
        return this.player.getContentType();
    }
    

    int getDuration() {
        return this.player.getDuration();
    }
    

    int getMediaTime() {
        return this.player.getMediaTime();
    }
    

    TimeBase getTimeBase() {
        return ((this.player as TimeBaseInterface)).getTimeBase();
    }
    

    void setTimeBase(TimeBase timeBase) {
        ((this.player as TimeBaseInterface)).setTimeBase(timeBase);
    }
    

    void prefetch() {
        try {
            this.player.prefetch();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "prefetch", e);
            }
        }
    }
    

    void realize() {
        try {
            this.player.realize();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "realize", e);
            }
        }
    }
    

    int getState() {
        return this.player.getState();
    }
    

    void setLoopCount(int count) {
        this.player.setLoopCount(count);
    }
    

    int setMediaTime(int now) {
        try {
            return this.player.setMediaTime(now);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "setMediaTime", e);
            return -1;
            }
        }
    }
    

    void start() {
        try {
            if (this.timeElapsedHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
                this.player.start();
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.START_METHOD_NAME, e);
            }
        }
    }
    

    void stop() {
        try {
            this.player.stop();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "stop", e);
            }
        }
    }
    

    Control getControl(String controlType) {
        return this.player.getControl(controlType);
    }
    

    List<Control?> getControls() {
        throw JException('RuntimeException', '');
    }
    

    void setVolume(int leftVolume, int rightVolume) {
        final Controllable2 controllable2 = ((this.player as Controllable2));
        controllable2.setVolume(leftVolume, rightVolume);
    }
    

    Player getPlayerP() {
        return this.player;
    }
}

