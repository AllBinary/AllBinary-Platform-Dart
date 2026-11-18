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
// package org.allbinary.android.input.motion

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.dart';
import 'package:allbinary/org/allbinary/time/TimeDelayHelper.dart';
import 'package:allbinary/org/allbinary/android/input/motion/AnalogControllerConfigurationFactory.dart';

class AnalogControllerHelper {
    int reduceTimeFactor = 0;
    int SCALE_VALUE = 0;
    late TimeDelayHelper rightTimeElapsedHelper;
    late TimeDelayHelper leftTimeElapsedHelper;
    late TimeDelayHelper downTimeElapsedHelper;
    late TimeDelayHelper upTimeElapsedHelper;

    // Java field initializers run after the base constructor
    void initFieldsAnalogControllerHelper() {
    
    this.SCALE_VALUE = AnalogControllerConfigurationFactory.getInstance().SCALE_VALUE;
    this.rightTimeElapsedHelper = TimeDelayHelper(0);
    this.leftTimeElapsedHelper = TimeDelayHelper(0);
    this.downTimeElapsedHelper = TimeDelayHelper(0);
    this.upTimeElapsedHelper = TimeDelayHelper(0);
    }
    

    AnalogControllerHelper(int reduceTimeFactor) {
        this.initFieldsAnalogControllerHelper();
        this.reduceTimeFactor = reduceTimeFactor;
    }
    

    void right(CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer, int xAnalogValue) {
        this.rightTimeElapsedHelper.delay = ((this.SCALE_VALUE - xAnalogValue) >> this.reduceTimeFactor);
        if (this.rightTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.right();
        }
    }
    

    void left(CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer, int xAnalogValue) {
        this.leftTimeElapsedHelper.delay = ((this.SCALE_VALUE + xAnalogValue) >> this.reduceTimeFactor);
        if (this.leftTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.left();
        }
    }
    

    void up(CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer, int xAnalogValue) {
        this.upTimeElapsedHelper.delay = ((this.SCALE_VALUE - xAnalogValue) >> this.reduceTimeFactor);
        if (this.upTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.up();
        }
    }
    

    void down(CollidableDestroyableDamageableLayer collidableDestroyableDamageableLayer, int xAnalogValue) {
        this.downTimeElapsedHelper.delay = ((this.SCALE_VALUE + xAnalogValue) >> this.reduceTimeFactor);
        if (this.downTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.down();
        }
    }
}

