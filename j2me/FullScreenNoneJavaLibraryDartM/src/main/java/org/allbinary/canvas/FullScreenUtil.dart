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
// package org.allbinary.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/MainFeatureFactory.dart';

class FullScreenUtil {
    static final FullScreenUtil instance = FullScreenUtil();
    

    static FullScreenUtil getInstance() {
        return FullScreenUtil.instance;
    }
    

    void initOnRun(Canvas fullScreenInterface, CommandListener commandListener) {
        if (commandListener != null) {
            this.init(fullScreenInterface);
        }
    }
    

    void init(Canvas fullScreenInterface) {
    }
    

    bool isScreenChange(bool isFullScreen) {
        final MainFeatureFactory mainFeatureFactory = MainFeatureFactory.getInstance();
        final Features features = Features.getInstance();
        if (features.isFeature(mainFeatureFactory.FULL_SCREEN) != isFullScreen) {
            return true;
        }
        return false;
    }
    

    bool isScreenChangeCanvas(Canvas fullScreenInterface) {
        return this.isScreenChange(false);
    }
}

