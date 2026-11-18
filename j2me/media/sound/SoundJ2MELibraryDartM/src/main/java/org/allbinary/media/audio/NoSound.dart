/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/media/audio/Sound.dart';
import 'package:allbinary/org/allbinary/media/audio/NoPlayer.dart';

class NoSound extends Sound {
    static final NoSound instance = NoSound();
    

    static NoSound getInstance() {
        return NoSound.instance;
    }
    

    NoSound() : super(StringUtil.getInstance().EMPTY_STRING) {
        
        this.setPlayerP(NoPlayer.NO_PLAYER);
    }
}

