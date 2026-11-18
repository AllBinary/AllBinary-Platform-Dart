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
// package org.allbinary.game

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/game/IntermissionInterface.dart';
import 'package:allbinary/org/allbinary/game/NullIntermissionEnableListener.dart';
import 'package:allbinary/org/allbinary/game/IntermissionEnableListenerInterface.dart';

class Intermission implements IntermissionInterface {
    bool enabled = false;
    late TimeDelayHelper timeElapsedHelper;
    late IntermissionEnableListenerInterface intermissionEnableListener;

    // Java field initializers run after the base constructor
    void initFieldsIntermission() {
    this.enabled = false;
    this.timeElapsedHelper = TimeDelayHelper(0);
    this.intermissionEnableListener = NullIntermissionEnableListener.getInstance();
    }
    

    Intermission() {
        this.initFieldsIntermission();
    }
    

    @override
    void setListener(IntermissionEnableListenerInterface enableListener) {
        this.intermissionEnableListener = enableListener;
    }
    

    @override
    TimeDelayHelper getTimeDelayHelper() {
        return this.timeElapsedHelper;
    }
    

    @override
    void setEnabled(bool enabled) {
        this.enabled = enabled;
        if (this.isEnabled()) {
            this.getTimeDelayHelper().setStartTimeTNT();
        }
        this.intermissionEnableListener.notifyIntermission(enabled);
    }
    

    @override
    bool isEnabled() {
        return this.enabled;
    }
}

