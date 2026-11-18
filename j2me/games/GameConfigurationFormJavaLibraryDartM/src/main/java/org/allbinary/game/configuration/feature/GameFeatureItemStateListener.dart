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
import 'package:allbinary/javax/microedition/lcdui/ChoiceGroup.dart';
import 'package:allbinary/javax/microedition/lcdui/Item.dart';
import 'package:allbinary/javax/microedition/lcdui/ItemStateListener.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationGauge.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationUtil.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameOptionsForm.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeature.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeatureUtil.dart';

class GameFeatureItemStateListener implements ItemStateListener {
    static BasicArrayList toggleList = BasicArrayListD();
    late LogUtil logUtil;
    late GameOptionsForm gameOptionsForm;

    // Java field initializers run after the base constructor
    void initFieldsGameFeatureItemStateListener() {
    this.logUtil = LogUtil.getInstance();
    
    }
    

    GameFeatureItemStateListener(GameOptionsForm gameOptionsForm) {
        this.initFieldsGameFeatureItemStateListener();
        this.gameOptionsForm = gameOptionsForm;
        GameFeatureFactory gameFeatureFactory = GameFeatureFactory.getInstance();
        GameFeatureItemStateListener.add(gameFeatureFactory.ARTIFICIAL_INTELLEGENCE_PROCESSOR);
        GameFeatureItemStateListener.add(gameFeatureFactory.COLLIDABLE_INTERFACE_LAYER_PROCESSOR);
        GameFeatureItemStateListener.add(gameFeatureFactory.DAMAGE_FLOATERS);
        GameFeatureItemStateListener.add(gameFeatureFactory.DROPPED_ITEMS);
        GameFeatureItemStateListener.add(gameFeatureFactory.GAME_INPUT_LAYER_PROCESSOR);
        GameFeatureItemStateListener.add(gameFeatureFactory.HEALTH_BARS);
        GameFeatureItemStateListener.add(gameFeatureFactory.SOUND);
        GameFeatureItemStateListener.add(gameFeatureFactory.TICKABLE_LAYER_PROCESSOR);
    }
    

    static void add(GameFeature gameFeature) {
        if (!GameFeatureItemStateListener.toggleList.contains(gameFeature)) {
            GameFeatureItemStateListener.toggleList.add(gameFeature);
        }
    }
    

    @override
    void itemStateChanged(Item item) {
        try {
            String itemLabel = item.getLabel();
            this.logUtil.putF(StringMaker().append(CommonLabels.getInstance().ITEM_LABEL).append(itemLabel).toString(), this, "itemStateChanged");
            if ((item is GameConfigurationGauge)) {
                GameConfigurationUtil.getInstance().change(this.gameOptionsForm, item);
            } else if ((item is ChoiceGroup)) {
                GameFeatureUtil gameFeatureUtil = GameFeatureUtil.getInstance();
                if (gameFeatureUtil.isExclusive(itemLabel)) {
                    gameFeatureUtil.updateExclusiveForChoiceGroup((item as ChoiceGroup));
                } else {
                    gameFeatureUtil.updateMultiple(item);
                }
            }
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "itemStateChanged", e);
            }
        }
    }
}

