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
// package org.allbinary.game.configuration.event

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Feature.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeatureUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/ForcedLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/configuration/event/GameFeatureListenerInterface.dart';
import 'package:allbinary/org/allbinary/game/configuration/event/GameFeatureEvent.dart';

class BaseChangedGameFeatureListener implements GameFeatureListenerInterface {
    late LogUtil logUtil;
    late GameFeatureUtil gameFeatureUtil;
    late BasicArrayList list;
    bool changed = false;

    // Java field initializers run after the base constructor
    void initFieldsBaseChangedGameFeatureListener() {
    this.logUtil = LogUtil.getInstance();
    this.gameFeatureUtil = GameFeatureUtil.getInstance();
    this.list = BasicArrayListD();
    this.changed = true;
    }

    BaseChangedGameFeatureListener() {
        this.initFieldsBaseChangedGameFeatureListener();
    }
    

    @override
    void onEvent(AllBinaryEventObject eventObject) {
        ForcedLogUtil.log(CommonStrings.getInstance().NOT_IMPLEMENTED, this);
    }
    

    @override
    void onGameFeatureChange(GameFeatureEvent gameFeatureEvent) {
        this.logUtil.putF(StringMaker().append(this.gameFeatureUtil.GAME_FEATURE_CHANGED).append(gameFeatureEvent.getWhatChanged()).toString(), this, this.gameFeatureUtil.ON_GAME_FEATURE_CHANGE);
        this.list.add(gameFeatureEvent.getGameOption());
        this.setChanged(true);
    }
    

    void add(Feature gameFeature) {
        this.list.add(gameFeature);
    }
    

    void remove(Feature gameFeature) {
        this.list.remove(gameFeature);
    }
    

    void setChanged(bool initialized) {
        this.changed = initialized;
        if (!this.isChanged()) {
            this.list.clear();
        }
    }
    

    bool isChangedFeature(Feature gameFeature) {
        final bool isChanged = this.list.contains(gameFeature);
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append("GameFeature: ");
        stringBuffer.append(StringUtil.getInstance().toString1(gameFeature));
        stringBuffer.append(" isFeature: ");
        stringBuffer.appendboolean(Features.getInstance().isFeature(gameFeature));
        stringBuffer.append(" isChanged: ");
        stringBuffer.appendboolean(isChanged);
        this.logUtil.putF(stringBuffer.toString(), this, "isChanged");
        return isChanged;
    }
    

    bool isChanged() {
        return this.changed;
    }
}

