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
// package org.allbinary.media

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationCentral.dart';
import 'package:allbinary/org/allbinary/media/AllBinaryVibrationME.dart';
import 'package:allbinary/org/allbinary/media/AllBinaryNoVibration.dart';

class AllBinaryVibration extends AllBinaryVibrationME {
    static AllBinaryVibrationME VIBRATION = AllBinaryNoVibration.NO_VIBRATION;
    

    AllBinaryVibration() {
    }
    

    static AllBinaryVibrationME getInstance() {
        return AllBinaryVibration.VIBRATION;
    }
    

    static void init() {
        if ((GameConfigurationCentral.getInstance().VIBRATION.getValue()).toInt() == 0) {
            AllBinaryVibration.VIBRATION = AllBinaryNoVibration.NO_VIBRATION;
        } else {
            AllBinaryVibration.VIBRATION = AllBinaryVibration();
        }
    }
    

    @override
    void vibrate(int duration, int type, int volume) {
    }
}

