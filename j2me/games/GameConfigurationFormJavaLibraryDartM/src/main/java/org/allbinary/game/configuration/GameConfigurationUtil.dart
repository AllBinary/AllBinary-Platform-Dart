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
// package org.allbinary.game.configuration

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Item.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationSingleton.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfiguration.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameOptionsForm.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationGauge.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationCentral.dart';

class GameConfigurationUtil {
    static final GameConfigurationUtil instance = GameConfigurationUtil();
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late String GAUGE_UPDATE;
    late String FROM;
    late String TO;
    int COMPETITION_VALUE = 0;

    // Java field initializers run after the base constructor
    void initFieldsGameConfigurationUtil() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.GAUGE_UPDATE = "Gauge Update: ";
    this.FROM = " from: ";
    this.TO = " to: ";
    this.COMPETITION_VALUE = 1;
    }

    GameConfigurationUtil() {
        this.initFieldsGameConfigurationUtil();
    }
    

    static GameConfigurationUtil getInstance() {
        return GameConfigurationUtil.instance;
    }
    

    void change(GameOptionsForm gameOptionsForm, GameConfigurationGauge gauge) {
        this.update(gauge);
        GameConfigurationSingleton gameConfigurationSingleton = GameConfigurationSingleton.getInstance();
        GameConfiguration gameConfiguration = gameConfigurationSingleton.getInstanceByName(gauge.getLabel());
        this.updateChallange(gameOptionsForm, gameConfiguration);
    }
    

    void update(GameConfigurationGauge gauge) {
        GameConfigurationSingleton gameConfigurationSingleton = GameConfigurationSingleton.getInstance();
        GameConfiguration gameConfiguration = gameConfigurationSingleton.getInstanceByName(gauge.getLabel());
        final SmallIntegerSingletonFactory smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        int value = smallIntegerSingletonFactory.getAt(gauge.getValue() + (gameConfiguration.getMinValue()).toInt());
        StringMaker stringBuffer = StringMaker();
        stringBuffer.append(this.GAUGE_UPDATE);
        stringBuffer.append(gameConfiguration.getName());
        stringBuffer.append(this.FROM);
        stringBuffer.appendint((gameConfiguration.getValue()).toInt());
        stringBuffer.append(this.TO);
        stringBuffer.appendint((value).toInt());
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.UPDATE);
        gameConfiguration.setValue(value);
    }
    

    void setDefault(GameConfigurationGauge gauge) {
        GameConfigurationSingleton gameConfigurationSingleton = GameConfigurationSingleton.getInstance();
        GameConfiguration gameConfiguration = gameConfigurationSingleton.getInstanceByName(gauge.getLabel());
        StringMaker stringBuffer = StringMaker();
        stringBuffer.append("Gauge Default: ");
        stringBuffer.append(gameConfiguration.getName());
        stringBuffer.append(this.TO);
        stringBuffer.appendint((gameConfiguration.getDefaultValue()).toInt());
        this.logUtil.putF(stringBuffer.toString(), this, "setDefault");
        gauge.setValue((gameConfiguration.getDefaultValue()).toInt() - (gameConfiguration.getMinValue()).toInt());
        gameConfiguration.setValue(gameConfiguration.getDefaultValue());
    }
    

    void updateChallange(GameOptionsForm gameOptionsForm, GameConfiguration gameConfiguration) {
        GameConfigurationSingleton gameConfigurationSingleton = GameConfigurationSingleton.getInstance();
        GameConfigurationCentral gameConfigurationCentral = GameConfigurationCentral.getInstance();
        if (gameConfiguration == gameConfigurationCentral.CHALLENGE_LEVEL) {
            this.logUtil.putF(this.commonStrings.START, this, "updateChallange");
            gameConfigurationCentral.COLLIDE_DAMAGE.setValue(gameConfiguration.getValue());
            gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue());
            gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue());
            gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue());
            final int size = gameOptionsForm.size();
            for (int index = 0; index < size; index++) {
                Item item = gameOptionsForm.get(index);
                if ((item is GameConfigurationGauge)) {
                    GameConfigurationGauge gauge = item;
                    String name = item.getLabel();
                    GameConfiguration nextGameConfiguration = gameConfigurationSingleton.getInstanceByName(name);
                    if (nextGameConfiguration == gameConfigurationCentral.COLLIDE_DAMAGE) {
                        gauge.setValue((gameConfigurationCentral.COLLIDE_DAMAGE.getValue()).toInt() - (gameConfiguration.getMinValue()).toInt());
                    } else if (nextGameConfiguration == gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL) {
                        gauge.setValue((gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.getValue()).toInt() - (gameConfiguration.getMinValue()).toInt());
                    } else if (nextGameConfiguration == gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL) {
                        gauge.setValue((gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.getValue()).toInt() - (gameConfiguration.getMinValue()).toInt());
                    } else if (nextGameConfiguration == gameConfigurationCentral.SPEED_CHALLENGE_LEVEL) {
                        gauge.setValue((gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.getValue()).toInt() - (gameConfiguration.getMinValue()).toInt());
                    }
                }
            }
        }
    }
    

    void updateCompetitionValue() {
        this.logUtil.putF(this.commonStrings.START, this, "updateCompetitionValue");
        GameConfigurationCentral gameConfigurationCentral = GameConfigurationCentral.getInstance();
        this.COMPETITION_VALUE = (gameConfigurationCentral.COLLIDE_DAMAGE.getValue()).toInt() + (gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.getValue()).toInt() + (gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.getValue()).toInt() + (gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.getValue()).toInt();
        this.COMPETITION_VALUE = (this.COMPETITION_VALUE >> 2);
    }
    

    int getCompetitionValue() {
        return this.COMPETITION_VALUE;
    }
}

