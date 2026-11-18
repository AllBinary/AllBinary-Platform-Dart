/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

class SoundStrings {
    static final SoundStrings instance = SoundStrings();
    late String STOP_ALL;
    late String CLOSE_ALL;
    late String SOUND;
    late String INIT_SOUND;
    late String STOPPING_SOUND;
    late String CLOSING_SOUND;

    // Java field initializers run after the base constructor
    void initFieldsSoundStrings() {
    this.STOP_ALL = "stopAll";
    this.CLOSE_ALL = "closeAll";
    this.SOUND = " Sound: ";
    this.INIT_SOUND = "Initializing Sound: ";
    this.STOPPING_SOUND = "Stopping Sound: ";
    this.CLOSING_SOUND = "Closing Sound: ";
    }

    SoundStrings() {
        this.initFieldsSoundStrings();
    }
    

    static SoundStrings getInstance() {
        return SoundStrings.instance;
    }
}

