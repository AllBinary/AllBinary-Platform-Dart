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
// package org.allbinary.audio

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/audio/AudioContentTypeData.dart';

class AudioContentTypeDataFactory {
    static final AudioContentTypeDataFactory instance = AudioContentTypeDataFactory();
    late AudioContentTypeData MIME_AUDIO_TONE;
    late AudioContentTypeData MIME_AUDIO_AMR;
    late AudioContentTypeData MIME_AUDIO_AMR_WB;
    late AudioContentTypeData MIME_AUDIO_WAV;
    late AudioContentTypeData MIME_AUDIO_MIDI;
    late AudioContentTypeData MIME_AUDIO_SP_MIDI;

    // Java field initializers run after the base constructor
    void initFieldsAudioContentTypeDataFactory() {
    this.MIME_AUDIO_TONE = AudioContentTypeData("audio/x-tone-seq");
    this.MIME_AUDIO_AMR = AudioContentTypeData("audio/amr");
    this.MIME_AUDIO_AMR_WB = AudioContentTypeData("audio/amr-wb");
    this.MIME_AUDIO_WAV = AudioContentTypeData("audio/x-wav");
    this.MIME_AUDIO_MIDI = AudioContentTypeData("audio/midi");
    this.MIME_AUDIO_SP_MIDI = AudioContentTypeData("audio/sp-midi");
    }
    

    static AudioContentTypeDataFactory getInstance() {
        return AudioContentTypeDataFactory.instance;
    }
    

    AudioContentTypeDataFactory() {
        this.initFieldsAudioContentTypeDataFactory();
    }
}

