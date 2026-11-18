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
import 'package:allbinary/javax/microedition/media/Player.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/media/audio/Sounds.dart';
import 'package:allbinary/org/allbinary/media/audio/SoundsFactoryInterface.dart';
import 'package:allbinary/org/allbinary/media/audio/NoPlayer.dart';

//NotDeviceSpecificNoMediaMIDP1Library
class AllBinaryMediaManager {
    static const String THIS = "AllBinaryMediaManagerNoMediaMIDP1";
    

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
    

    static Player createPlayerFromInputStream(InputStream stream, String type) {
        final LogUtil logUtil = LogUtil.getInstance();
        final CommonStrings commonString = CommonStrings.getInstance();
        logUtil.putF(commonString.START, AllBinaryMediaManager.THIS, "creatPlayer(InputStream)");
        return (NoPlayer.NO_PLAYER as Player);
    }
    

    static Player createPlayer(String locator) {
        final LogUtil logUtil = LogUtil.getInstance();
        final CommonStrings commonString = CommonStrings.getInstance();
        logUtil.putF(commonString.START, AllBinaryMediaManager.THIS, "creatPlayer(locator)");
        return (NoPlayer.NO_PLAYER as Player);
    }
    

    static void playTone(int frequency, int time, int volume) {
    }
    

    static List<String?> getSupportedContentTypes(String protocol) {
        return StringUtil.getInstance().getArrayInstance();
    }
    

    static List<String?> getSupportedProtocols(String content_type) {
        return StringUtil.getInstance().getArrayInstance();
    }
}

