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
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/media/audio/Sound.dart';
import 'package:allbinary/org/allbinary/media/audio/NoSound.dart';

class PlayerQueue {
    static const String TOTAL = "Sounds In Queue: ";
    late CommonStrings commonStrings;
    late BasicArrayList list;
    int max = 0;

    // Java field initializers run after the base constructor
    void initFieldsPlayerQueue() {
    this.commonStrings = CommonStrings.getInstance();
    this.list = BasicArrayListD();
    
    }
    

    PlayerQueue(int max) {
        this.initFieldsPlayerQueue();
        this.max = max;
    }
    

    void add(Sound sound) {
        try {
            if (!this.list.contains(sound)) {
                this.list.add(sound);
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            PreLogUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.ADD);
            }
        }
    }
    

    bool process() {
        Sound sound = NoSound.getInstance();
        try {
            bool played = false;
            if (this.list.size() > 0) {
                sound = (this.list.removeAt(0) as Sound);
                if (sound != null) {
                    sound.getPlayerP().start();
                }
                while (this.list.size() > this.max) {
                    this.list.removeAt(0);
                }
                played = true;
            }
            return played;
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            String resource = StringUtil.getInstance().EMPTY_STRING;
            if (sound != null) {
                resource = sound.getResource();
            }
            PreLogUtil.put(StringMaker().append(this.commonStrings.EXCEPTION_LABEL).append(resource).toString(), this, this.commonStrings.PROCESS);
            return false;
            }
        }
    }
    

    void clear() {
        this.list.clear();
    }
    

    @override
    String toString() {
        return StringMaker().append(PlayerQueue.TOTAL).appendint(this.list.size()).toString();
    }
}

