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
import 'package:allbinary/javax/microedition/media/Player.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/media/audio/SoundInterface.dart';
import 'package:allbinary/org/allbinary/media/audio/NoPlayer.dart';

class Sound implements SoundInterface, Runnable {
    late String resource;
    late Player player;

    // Java field initializers run after the base constructor
    void initFieldsSound() {
    
    this.player = NoPlayer.NO_PLAYER;
    }
    

    Sound(String resource) {
        this.initFieldsSound();
        this.resource = resource;
    }
    

    @override
    String getResource() {
        return this.resource;
    }
    

    @override
    Player getPlayerP() {
        return this.player;
    }
    

    void setPlayerP(Player player) {
        this.player = player;
    }
    

    @override
    void init() {
    }
    

    int getDuration() {
        return -1;
    }
    

    @override
    void run() {
        try {
            this.player.start();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            PreLogUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN);
            }
        }
    }
}

