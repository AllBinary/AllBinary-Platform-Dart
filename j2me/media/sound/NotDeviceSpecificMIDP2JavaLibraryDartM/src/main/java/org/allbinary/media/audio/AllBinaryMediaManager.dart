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
import 'package:allbinary/java/io/InputStream.dart';
import 'package:allbinary/javax/microedition/media/Manager.dart';
import 'package:allbinary/javax/microedition/media/MediaException.dart';
import 'package:allbinary/javax/microedition/media/Player.dart';
import 'package:allbinary/org/allbinary/MIDPUtil.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/audio/AudioContentTypeDataFactory.dart';
import 'package:allbinary/org/allbinary/data/resource/ResourceUtil.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeatureFactory.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/media/audio/Sounds.dart';
import 'package:allbinary/org/allbinary/media/audio/SoundsFactoryInterface.dart';
import 'package:allbinary/org/allbinary/media/audio/NoPlayer.dart';

//NotDeviceSpecificMIDP2JavaLibrary
class AllBinaryMediaManager {
    static const String THIS = "AllBinaryMediaManagerNoMIPD2";
    

    AllBinaryMediaManager() {
    }
    

    static bool isMuted() {
        return false;
    }
    

    static void setMuted(bool aMuted) {
    }
    

    static bool update() {
        return true;
    }
    

    static void init(SoundsFactoryInterface soundsFactoryInterface) {
        final LogUtil logUtil = LogUtil.getInstance();
        final CommonStrings commonString = CommonStrings.getInstance();
        logUtil.putF(commonString.START, AllBinaryMediaManager.THIS, commonString.INIT);
        ProgressCanvasFactory.getInstance().addNormalPortion(50, "Media Manager");
        Sounds(soundsFactoryInterface).init();
    }
    

    static void shutdown(SoundsFactoryInterface soundsFactoryInterface) {
        Sounds(soundsFactoryInterface).stopAll();
        Sounds(soundsFactoryInterface).closeAll();
        TsUtil.getInstance().gc();
    }
    

    static Player createPlayer(String resource) {
        if (Features.getInstance().isFeature(GameFeatureFactory.getInstance().SOUND)) {
            if (TsUtil.getInstance().compareTo(resource, Manager.TONE_DEVICE_LOCATOR) == 0) {
                return Manager.createPlayer(resource);
            } else {
                InputStream inputStream = ResourceUtil.getInstance().getResourceAsStream(resource);
                return MIDPUtil.getInstance().createPlayerFromInputStream(inputStream, AudioContentTypeDataFactory.getInstance().MIME_AUDIO_WAV.getName());
            }
        } else {
            return NoPlayer.NO_PLAYER;
        }
    }
    

    static void playTone(int frequency, int time, int volume) {
        if (Features.getInstance().isFeature(GameFeatureFactory.getInstance().SOUND)) {
            Manager.playTone(frequency, time, volume);
        }
    }
}

