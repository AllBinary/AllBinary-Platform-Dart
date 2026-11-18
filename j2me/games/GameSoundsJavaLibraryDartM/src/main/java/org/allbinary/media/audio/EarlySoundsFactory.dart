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
import 'package:allbinary/org/allbinary/media/audio/BaseSoundsFactory.dart';
import 'package:allbinary/org/allbinary/media/audio/Sound.dart';
import 'package:allbinary/org/allbinary/media/audio/SelectSound.dart';
import 'package:allbinary/org/allbinary/media/audio/ErrorSound.dart';

class EarlySoundsFactory extends BaseSoundsFactory {
    static final EarlySoundsFactory instance = EarlySoundsFactory();
    

    @override
    List<Sound?> getSoundInterfaceArray() {
        List<Sound?> soundInterfaceArray = List<Sound?>.filled(2, null);
        int index = 0;
        soundInterfaceArray[index++] = SelectSound.getInstance();
        soundInterfaceArray[index++] = ErrorSound.getInstance();
        return soundInterfaceArray;
    }
    

    static EarlySoundsFactory getInstance() {
        return EarlySoundsFactory.instance;
    }
}

