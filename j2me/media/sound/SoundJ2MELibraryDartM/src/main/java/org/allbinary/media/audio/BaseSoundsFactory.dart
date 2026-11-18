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
import 'package:allbinary/org/allbinary/media/audio/SoundsFactoryInterface.dart';
import 'package:allbinary/org/allbinary/media/audio/Sound.dart';

class BaseSoundsFactory implements SoundsFactoryInterface {
    bool initialized = false;

    // Java field initializers run after the base constructor
    void initFieldsBaseSoundsFactory() {
    this.initialized = false;
    }

    BaseSoundsFactory() {
        this.initFieldsBaseSoundsFactory();
    }
    

    @override
    void init() {
    }
    

    @override
    List<Sound?> getSoundInterfaceArray() {
        return List<Sound?>.filled(0, null);
    }
    

    @override
    void setInitialized(bool initialized) {
        this.initialized = initialized;
    }
    

    @override
    bool isInitialized() {
        return this.initialized;
    }
}

