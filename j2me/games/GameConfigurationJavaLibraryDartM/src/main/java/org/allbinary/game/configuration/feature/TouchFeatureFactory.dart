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
// package org.allbinary.game.configuration.feature

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/TouchFeature.dart';

class TouchFeatureFactory {
    static final TouchFeatureFactory instance = TouchFeatureFactory();
    late TouchFeature TOUCH_ENABLED;
    late TouchFeature SHOW_SCREEN_BUTTONS;
    late TouchFeature AUTO_HIDE_SHOW_SCREEN_BUTTONS;
    late TouchFeature HIDE_SCREEN_BUTTONS;

    // Java field initializers run after the base constructor
    void initFieldsTouchFeatureFactory() {
    this.TOUCH_ENABLED = TouchFeature("Touch Enabled");
    this.SHOW_SCREEN_BUTTONS = TouchFeature("Show");
    this.AUTO_HIDE_SHOW_SCREEN_BUTTONS = TouchFeature("Auto Hide (One Level)");
    this.HIDE_SCREEN_BUTTONS = TouchFeature("Hide");
    }
    

    static TouchFeatureFactory getInstance() {
        return TouchFeatureFactory.instance;
    }
    

    TouchFeatureFactory() {
        this.initFieldsTouchFeatureFactory();
    }
}

