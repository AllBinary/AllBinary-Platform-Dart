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
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/media/audio/SoundStrings.dart';
import 'package:allbinary/org/allbinary/media/audio/SoundsFactoryInterface.dart';
import 'package:allbinary/org/allbinary/media/audio/Sound.dart';

class Sounds {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late SoundStrings soundStrings;
    late SoundsFactoryInterface soundsFactoryInterface;

    // Java field initializers run after the base constructor
    void initFieldsSounds() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.soundStrings = SoundStrings.getInstance();
    
    }
    

    Sounds(SoundsFactoryInterface soundsFactoryInterface) {
        this.initFieldsSounds();
        this.soundsFactoryInterface = soundsFactoryInterface;
    }
    

    void init() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.INIT);
        final CommonLabels commonLabels = CommonLabels.getInstance();
        final ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        this.soundsFactoryInterface.init();
        final List<Sound?> soundInterfaceArray = this.soundsFactoryInterface.getSoundInterfaceArray();
        final SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        late int indexInteger;
        late String indexString;
        final StringMaker stringBuffer = StringMaker();
        for (int i = 0; i < soundInterfaceArray.length; i++) {
            final Sound soundInterface = soundInterfaceArray[i]!;
            if (soundInterface != null) {
                indexInteger = smallIntegerSingletonFactory.getAt(i);
                indexString = indexInteger.toString();
                stringBuffer.delete(0, stringBuffer.length());
                stringBuffer.append(commonLabels.INDEX_LABEL);
                stringBuffer.append(indexString);
                stringBuffer.append(this.soundStrings.SOUND);
                stringBuffer.append(jClassName(soundInterface));
                this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.INIT);
                soundInterface.init();
                progressCanvas.addNormalPortion(100, StringMaker().append(this.soundStrings.INIT_SOUND).append(indexString).toString());
            }
        }
        this.soundsFactoryInterface.setInitialized(true);
        this.logUtil.putF(this.commonStrings.END, this, this.commonStrings.INIT);
    }
    

    void stopAll() {
        this.logUtil.putF(this.commonStrings.START, this, this.soundStrings.STOP_ALL);
        final List<Sound?> soundInterfaceArray = this.soundsFactoryInterface.getSoundInterfaceArray();
        final ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        late Player player;
        for (int index = 0; index < soundInterfaceArray.length; index++) {
            if (soundInterfaceArray[index] != null) {
                player = soundInterfaceArray[index]!.getPlayerP();
                if (player != null) {
                    player.stop();
                    progressCanvas.addPortion(100, this.soundStrings.STOPPING_SOUND, index);
                }
            }
        }
    }
    

    void closeAll() {
        this.logUtil.putF(this.commonStrings.START, this, this.soundStrings.CLOSE_ALL);
        final List<Sound?> soundInterfaceArray = this.soundsFactoryInterface.getSoundInterfaceArray();
        final ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        late Player player;
        for (int index = 0; index < soundInterfaceArray.length; index++) {
            if (soundInterfaceArray[index] != null) {
                player = soundInterfaceArray[index]!.getPlayerP();
                if (player != null) {
                    player.close();
                    progressCanvas.addPortion(100, this.soundStrings.CLOSING_SOUND, index);
                }
            }
        }
    }
}

