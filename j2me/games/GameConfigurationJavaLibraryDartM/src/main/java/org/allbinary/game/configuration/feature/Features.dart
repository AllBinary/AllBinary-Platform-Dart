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
import 'package:allbinary/org/allbinary/game/configuration/event/GameFeatureEvent.dart';
import 'package:allbinary/org/allbinary/game/configuration/event/GameFeatureEventHandler.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/system/os/GenericOperatingSystem.dart';
import 'package:allbinary/org/allbinary/logic/system/os/OperatingSystemFactory.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Feature.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/InputFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/SensorFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/TouchFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/MainFeatureFactory.dart';

class Features {
    static Object SINGLETON = NullUtil.getInstance().NULL_OBJECT;
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late BasicArrayList list;
    late BasicArrayList defaultList;

    // Java field initializers run after the base constructor
    void initFieldsFeatures() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    }
    

    static Features getInstance() {
        if (Features.SINGLETON == NullUtil.getInstance().NULL_OBJECT) {
            Features.SINGLETON = Features();
        }
        return (Features.SINGLETON as Features);
    }
    

    Features() {
        this.initFieldsFeatures();
        this.list = BasicArrayListD();
        this.defaultList = BasicArrayListD();
        this.init();
    }
    

    void addDefault(Feature gameFeature) {
        this.add(gameFeature);
        if (!this.defaultList.contains(gameFeature)) {
            this.defaultList.add(gameFeature);
        }
    }
    

    void add(Feature gameFeature) {
        if (!this.list.contains(gameFeature)) {
            this.logUtil.putF(StringMaker().append(CommonLabels.getInstance().START_LABEL).append(gameFeature.toString()).toString(), this, this.commonStrings.ADD);
            this.list.add(gameFeature);
            GameFeatureEventHandler.getInstance().fireEvent(GameFeatureEvent(gameFeature, gameFeature.toString()));
        }
    }
    

    void removeDefault(Feature gameFeature) {
        this.logUtil.putF(StringMaker().append(CommonLabels.getInstance().START_LABEL).append(gameFeature.toString()).toString(), this, "removeDefault");
        this.remove(gameFeature);
        this.defaultList.remove(gameFeature);
    }
    

    void remove(Feature gameFeature) {
        if (this.list.contains(gameFeature)) {
            this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.REMOVE);
            this.list.remove(gameFeature);
            GameFeatureEventHandler.getInstance().fireEvent(GameFeatureEvent(gameFeature, gameFeature.toString()));
        }
    }
    

    void init() {
        try {
            final GameFeatureFactory gameFeatureFactory = GameFeatureFactory.getInstance();
            final InputFeatureFactory inputFeatureFactory = InputFeatureFactory.getInstance();
            final SensorFeatureFactory sensorFeatureFactory = SensorFeatureFactory.getInstance();
            final TouchFeatureFactory touchFeatureFactory = TouchFeatureFactory.getInstance();
            this.addDefault(gameFeatureFactory.ARTIFICIAL_INTELLEGENCE_PROCESSOR);
            this.addDefault(gameFeatureFactory.COLLIDABLE_INTERFACE_LAYER_PROCESSOR);
            this.addDefault(gameFeatureFactory.GAME_INPUT_LAYER_PROCESSOR);
            this.addDefault(gameFeatureFactory.TICKABLE_LAYER_PROCESSOR);
            this.addDefault(inputFeatureFactory.MULTI_KEY_PRESS);
            this.addDefault(inputFeatureFactory.REMOVE_DUPLICATE_KEY_PRESSES);
            this.addDefault(gameFeatureFactory.SCREEN_SHAKE);
            this.addDefault(gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION);
            final GenericOperatingSystem operatingSystemInterface = OperatingSystemFactory.getInstance().getOperatingSystemInstance();
            if (operatingSystemInterface.isOverScan()) {
                this.addDefault(sensorFeatureFactory.NO_ORIENTATION);
                this.addDefault(touchFeatureFactory.HIDE_SCREEN_BUTTONS);
            } else {
                this.addDefault(sensorFeatureFactory.ORIENTATION_SENSORS);
                this.addDefault(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS);
            }
            this.addDefault(touchFeatureFactory.TOUCH_ENABLED);
            this.addDefault(MainFeatureFactory.getInstance().FULL_SCREEN);
            this.addDefault(MainFeatureFactory.getInstance().LOAD_ONDEMAND);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            PreLogUtil.putOE(this.commonStrings.EXCEPTION, this, this.commonStrings.INIT, e);
            }
        }
    }
    

    bool isDefault(Feature gameFeature) {
        return this.defaultList.contains(gameFeature);
    }
    

    bool isFeature(Feature gameFeature) {
        return this.list.contains(gameFeature);
    }
    

    void toggle(Feature gameFeature) {
        if (this.isFeature(gameFeature)) {
            this.remove(gameFeature);
        } else {
            this.add(gameFeature);
        }
    }
}

