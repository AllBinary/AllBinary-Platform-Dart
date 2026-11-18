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
import 'package:allbinary/org/allbinary/media/audio/CompositeSound.dart';
import 'package:allbinary/org/allbinary/media/audio/Sound.dart';

//Use 8hz16bitmono for most J2ME
class SelectSound extends CompositeSound {
    static Sound soundInterface = SelectSound();
    

    SelectSound() : super("resource:/wav/select.wav") {
        
    }
    

    static Sound getInstance() {
        return SelectSound.soundInterface;
    }
}

