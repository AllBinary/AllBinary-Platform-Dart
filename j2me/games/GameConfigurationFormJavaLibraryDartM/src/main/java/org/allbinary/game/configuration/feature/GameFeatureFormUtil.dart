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
import 'package:allbinary/javax/microedition/lcdui/NullImage.dart';
import 'package:allbinary/org/allbinary/MIDPUtil.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationGauge.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationUtil.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/screen/CommandForm.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/HashtableUtil.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Feature.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeatureUtil.dart';

class GameFeatureFormUtil {
    static final GameFeatureFormUtil instance = GameFeatureFormUtil();
    late LogUtil logUtil;
    late MIDPUtil meUtil;

    // Java field initializers run after the base constructor
    void initFieldsGameFeatureFormUtil() {
    this.logUtil = LogUtil.getInstance();
    this.meUtil = MIDPUtil.getInstance();
    }

    GameFeatureFormUtil() {
        this.initFieldsGameFeatureFormUtil();
    }
    

    static GameFeatureFormUtil getInstance() {
        return GameFeatureFormUtil.instance;
    }
    

    ChoiceGroup getChoiceGroup(ABHashtable hashtable, String name, int option) {
        final StringMaker stringMaker = StringMaker();
        final ChoiceGroup choiceGroup = ChoiceGroup.with4(name, option, StringUtil.getInstance().getArrayInstance(), NullImage.NULL_IMAGE_ARRAY);
        final BasicArrayList list = (hashtable.get((name as Object)) as BasicArrayList);
        final Features features = Features.getInstance();
        final String ADD_CHOICE = ": Adding Choice: ";
        final String GET_CHOICE_GROUP = "getChoiceGroup";
        final int size = list.size();
        for (int index = 0; index < size; index++) {
            final Feature gameFeature = (list.objectArray[index]! as Feature);
            stringMaker.delete(0, stringMaker.length());
            this.logUtil.putF(stringMaker.append(name).append(ADD_CHOICE).append(gameFeature.toString()).toString(), this, GET_CHOICE_GROUP);
            choiceGroup.append(gameFeature.toString(), NullImage.NULL_IMAGE);
            if (features.isFeature(gameFeature)) {
                choiceGroup.setSelectedIndex(index, true);
            }
        }
        return choiceGroup;
    }
    

    void addChoiceGroup(CommandForm form, ABHashtable hashtable, int option) {
        final StringMaker stringMaker = StringMaker();
        final String ADDING_CHOICE_GROUP = "Adding Choice Group: ";
        final String ADD_CHOICE_GROUP = "addChoiceGroup";
        final int size = hashtable.size();
        final List<Object?> objectArray = HashtableUtil.getInstance().getKeysAsArray(hashtable);
        late String name;
        for (int index = 0; index < size; index++) {
            name = (objectArray[index]! as String);
            stringMaker.delete(0, stringMaker.length());
            this.logUtil.putF(stringMaker.append(ADDING_CHOICE_GROUP).append(name).toString(), this, ADD_CHOICE_GROUP);
            this.meUtil.appendItem(form, this.getChoiceGroup(hashtable, name, option));
        }
    }
    

    void setDefault(CommandForm form) {
        final int size = form.size();
        for (int index = 0; index < size; index++) {
            Item item = form.get(index);
            if ((item is GameConfigurationGauge)) {
                GameConfigurationUtil.getInstance().setDefault(item);
            } else if ((item is ChoiceGroup)) {
                GameFeatureUtil.getInstance().setDefault(item);
            }
        }
    }
}

