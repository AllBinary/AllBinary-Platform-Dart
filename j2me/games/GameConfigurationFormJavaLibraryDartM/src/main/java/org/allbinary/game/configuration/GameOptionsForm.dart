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
import 'package:allbinary/javax/microedition/lcdui/Choice.dart';
import 'package:allbinary/javax/microedition/lcdui/Command.dart';
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/javax/microedition/lcdui/Item.dart';
import 'package:allbinary/javax/microedition/lcdui/TextField.dart';
import 'package:allbinary/org/allbinary/MIDPUtil.dart';
import 'package:allbinary/org/allbinary/game/commands/GameCommandsFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeatureChoiceGroups.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeatureFormUtil.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeatureItemCommandListener.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeatureItemStateListener.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/SensorFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/GameConfigurationPersistanceSingleton.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/KeyValuePersistance.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/command/MyCommandsFactory.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/screen/CommandForm.dart';
import 'package:allbinary/org/allbinary/input/gyro/OrientationData.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/HashtableUtil.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationTextInput.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationSingleton.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfiguration.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationGauge.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationUtil.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationCentral.dart';

class GameOptionsForm extends CommandForm {
    late MIDPUtil meUtil;

    // Java field initializers run after the base constructor
    void initFieldsGameOptionsForm() {
    this.meUtil = MIDPUtil.getInstance();
    }
    

    GameOptionsForm(CommandListener commandListener, String title, BasicColor backgrounBasicColor, BasicColor foregroundBasicColor) : super(commandListener, title, backgrounBasicColor, foregroundBasicColor) {
        this.initFieldsGameOptionsForm();
        
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.addConfiguration();
        final GameFeatureFormUtil gameFeatureFormUtil = GameFeatureFormUtil.getInstance();
        gameFeatureFormUtil.addChoiceGroup(this, GameFeatureChoiceGroups.getExclusiveInstance().get(), Choice.EXCLUSIVE);
        gameFeatureFormUtil.addChoiceGroup(this, GameFeatureChoiceGroups.getMultipleInstance().get(), Choice.MULTIPLE);
        this.initCommands(commandListener);
        this.setItemStateListener(GameFeatureItemStateListener(this));
        this.addTextFieldsIfSimulated();
    }
    

    void closeClientInformation(AbeClientInformationInterface abeClientInformation) {
        super.close();
        this.save(abeClientInformation);
    }
    

    void addTextFieldsIfSimulated() {
        String key = OrientationData.getInstance().ORIENTATION_SENSOR_INPUT;
        final ABHashtable hashtable = GameFeatureChoiceGroups.getExclusiveInstance().get();
        if (hashtable != null) {
            Object listCanBeNull = hashtable.get(key);
            if (listCanBeNull != null) {
                final BasicArrayList list = (listCanBeNull as BasicArrayList);
                if (list.contains(SensorFeatureFactory.getInstance().SIMULATED_ORIENTATION_SENSORS)) {
                    this.addTextFields();
                }
            }
        }
    }
    

    void addTextFields() {
        final ABHashtable hashtable = GameConfigurationTextInput.getHashtable();
        final int size = hashtable.size();
        final List<Object?> objectArray = HashtableUtil.getInstance().getKeysAsArray(hashtable);
        late GameConfigurationTextInput gameConfigurationTextInput;
        late TextField textField;
        for (int index = 0; index < size; index++) {
            gameConfigurationTextInput = (hashtable.get(objectArray[index]!) as GameConfigurationTextInput);
            textField = TextField(gameConfigurationTextInput.getLabel(), gameConfigurationTextInput.getText(), 30, TextField.ANY);
            this.meUtil.appendItem(this, textField);
        }
    }
    

    void addConfiguration() {
        final String METHOD_NAME = "addConfiguration";
        final String NAME = "Name: ";
        final BasicArrayList list = GameConfigurationSingleton.getInstance().getOptionsBasicArrayList();
        final Command GAUGE_CHANGE = MyCommandsFactory.getInstance().GAUGE_CHANGE;
        final StringMaker stringMaker = StringMaker();
        final int size = list.size();
        late GameConfiguration gameConfiguration;
        late GameConfigurationGauge gauge;
        for (int index = 0; index < size; index++) {
            gameConfiguration = (list.objectArray[index]! as GameConfiguration);
            stringMaker.delete(0, stringMaker.length());
            this.logUtil.putF(stringMaker.append(NAME).append(gameConfiguration.toString()).toString(), this, METHOD_NAME);
            gauge = GameConfigurationGauge(gameConfiguration);
            gauge.setDefaultCommand(GAUGE_CHANGE);
            gauge.setItemCommandListener(GameFeatureItemCommandListener(this));
            this.meUtil.appendItem(this, gauge);
        }
    }
    

    @override
    void initCommands(CommandListener cmdListener) {
        final GameCommandsFactory gameCommandsFactory = GameCommandsFactory.getInstance();
        this.removeAllCommands();
        this.addCommand(gameCommandsFactory.CLOSE_OPTIONS);
        this.addCommand(gameCommandsFactory.DEFAULT_OPTIONS);
        this.setCommandListener(cmdListener);
    }
    

    void save(AbeClientInformationInterface abeClientInformation) {
        final int size = this.size();
        late Item item;
        for (int index = 0; index < size; index++) {
            item = this.get(index);
            if ((item is GameConfigurationGauge)) {
                GameConfigurationUtil.getInstance().update(item);
            } else if ((item is TextField)) {
                GameConfigurationTextInput.update(item);
            }
        }
        GameConfigurationUtil.getInstance().updateCompetitionValue();
        final ABHashtable hashtable = StdUtil.getInstance().createHashtable();
        final GameConfiguration SCALE = GameConfigurationCentral.getInstance().SCALE;
        hashtable.put(SCALE.getName(), jstr((SCALE.getValue()).toInt()));
        final KeyValuePersistance keyValuePersistance = GameConfigurationPersistanceSingleton.getInstance();
        keyValuePersistance.clear();
        keyValuePersistance.loadAll(abeClientInformation);
        final BasicArrayList list = keyValuePersistance.getIds();
        keyValuePersistance.save(abeClientInformation, hashtable);
        final int size2 = list.size();
        late int integer;
        for (int index = 0; index < size2; index++) {
            integer = (list.objectArray[index]! as int);
            keyValuePersistance.delete(abeClientInformation, (integer).toInt());
        }
    }
}

