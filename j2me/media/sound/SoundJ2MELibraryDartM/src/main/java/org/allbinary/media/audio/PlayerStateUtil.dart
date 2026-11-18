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
import 'package:allbinary/javax/microedition/media/Player.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class PlayerStateUtil {
    static final PlayerStateUtil instance = PlayerStateUtil();
    late CommonStrings commonStrings;
    late String UNREALIZED;
    late String REALIZED;
    late String PREFETCHED;
    late String STARTED;
    late String CLOSED;

    // Java field initializers run after the base constructor
    void initFieldsPlayerStateUtil() {
    this.commonStrings = CommonStrings.getInstance();
    this.UNREALIZED = "UNREALIZED";
    this.REALIZED = "REALIZED";
    this.PREFETCHED = "PREFETCHED";
    this.STARTED = "STARTED";
    this.CLOSED = "CLOSED";
    }

    PlayerStateUtil() {
        this.initFieldsPlayerStateUtil();
    }
    

    static PlayerStateUtil getInstance() {
        return PlayerStateUtil.instance;
    }
    

    String convert(int state) {
        if (state == Player.UNREALIZED) {
            return this.UNREALIZED;
        } else if (state == Player.REALIZED) {
            return this.REALIZED;
        } else if (state == Player.PREFETCHED) {
            return this.PREFETCHED;
        } else if (state == Player.STARTED) {
            return this.STARTED;
        } else if (state == Player.CLOSED) {
            return this.CLOSED;
        }
        return this.commonStrings.UNKNOWN;
    }
}

