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
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/media/audio/BasicPlayer.dart';
import 'package:allbinary/org/allbinary/media/audio/NullControl.dart';

class NoPlayer extends BasicPlayer {
    static final NoPlayer NO_PLAYER = NoPlayer();
    

    NoPlayer() {
    }
    

    @override
    void close() {
    }
    

    @override
    String getContentType() {
        return StringUtil.getInstance().NULL_STRING;
    }
    

    @override
    Control getControl(String controlType) {
        return NullControl();
    }
    

    @override
    List<Control?> getControls() {
        return List<Control?>.filled(0, null);
    }
}

