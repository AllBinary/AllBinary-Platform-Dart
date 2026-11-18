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
import 'package:allbinary/java/util/Enumeration.dart';
import 'package:allbinary/javax/microedition/lcdui/ChoiceGroup.dart';
import 'package:allbinary/org/allbinary/TsUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/EnumerationUtil.dart';
import 'package:allbinary/org/allbinary/util/HashtableUtil.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Feature.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeatureChoiceGroups.dart';

class GameFeatureUtil {
    static final GameFeatureUtil instance = GameFeatureUtil();
    late LogUtil logUtil;
    late TsUtil tsUtil;
    late EnumerationUtil enumerationUtil;
    late String ON_GAME_FEATURE_CHANGE;
    late String GAME_FEATURE_CHANGED;

    // Java field initializers run after the base constructor
    void initFieldsGameFeatureUtil() {
    this.logUtil = LogUtil.getInstance();
    this.tsUtil = TsUtil.getInstance();
    this.enumerationUtil = EnumerationUtil.getInstance();
    this.ON_GAME_FEATURE_CHANGE = "onGameFeatureChange";
    this.GAME_FEATURE_CHANGED = "Game Feature Changed: ";
    }

    GameFeatureUtil() {
        this.initFieldsGameFeatureUtil();
    }
    

    static GameFeatureUtil getInstance() {
        return GameFeatureUtil.instance;
    }
    

    void setDefault(ChoiceGroup choiceGroup) {
        StringMaker stringBuffer = StringMaker();
        final String METHOD_NAME = "setDefault";
        final String SELECTED_ARRAY_RETURN = "selectedArray_return[";
        final String SELECTED_SEP = "] = ";
        List<bool> selectedArray_return = List<bool>.filled(choiceGroup.size(), false);
        int total = choiceGroup.getSelectedFlags(selectedArray_return);
        stringBuffer.append("Multiple Total Choices: ");
        stringBuffer.appendint(total);
        this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
        Features features = Features.getInstance();
        for (int index = 0; index < selectedArray_return.length; index++) {
            bool isSelected = selectedArray_return[index];
            stringBuffer.delete(0, stringBuffer.length());
            stringBuffer.append(SELECTED_ARRAY_RETURN);
            stringBuffer.appendint(index);
            stringBuffer.append(SELECTED_SEP);
            stringBuffer.appendboolean(isSelected);
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
            String selectedChoiceLabel = choiceGroup.getString(index);
            Feature gameFeature = Feature.getInstance1(selectedChoiceLabel);
            if (features.isDefault(gameFeature)) {
                features.add(gameFeature);
                choiceGroup.setSelectedIndex(index, true);
            } else {
                features.remove(gameFeature);
                choiceGroup.setSelectedIndex(index, false);
            }
        }
    }
    

    void updateMultiple(ChoiceGroup choiceGroup) {
        StringMaker stringBuffer = StringMaker();
        final String METHOD_NAME = "updateMultiple";
        final String SELECTED_ARRAY_RETURN = "selectedArray_return[";
        final String SELECTED_SEP = "] = ";
        List<bool> selectedArray_return = List<bool>.filled(choiceGroup.size(), false);
        int total = choiceGroup.getSelectedFlags(selectedArray_return);
        stringBuffer.append("Multiple Total Choices: ");
        stringBuffer.appendint(total);
        this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
        Features features = Features.getInstance();
        for (int index = 0; index < selectedArray_return.length; index++) {
            bool isSelected = selectedArray_return[index];
            stringBuffer.delete(0, stringBuffer.length());
            stringBuffer.append(SELECTED_ARRAY_RETURN);
            stringBuffer.appendint(index);
            stringBuffer.append(SELECTED_SEP);
            stringBuffer.appendboolean(isSelected);
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
            String selectedChoiceLabel = choiceGroup.getString(index);
            Feature gameFeature = Feature.getInstance1(selectedChoiceLabel);
            if (!isSelected && features.isFeature(gameFeature)) {
                features.remove(gameFeature);
            } else if (isSelected && !features.isFeature(gameFeature)) {
                features.add(gameFeature);
            }
        }
    }
    

    void updateExclusiveForChoiceGroup(ChoiceGroup choiceGroup) {
        StringMaker stringBuffer = StringMaker();
        final String METHOD_NAME = "updateExclusive";
        final String SELECTED_ARRAY_RETURN = "selectedArray_return[";
        final String SELECTED_SEP = "] = ";
        List<bool> selectedArray_return = List<bool>.filled(choiceGroup.size(), false);
        int total = choiceGroup.getSelectedFlags(selectedArray_return);
        stringBuffer.append("Exclusive Total Choices: 1==");
        stringBuffer.appendint(total);
        this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
        for (int index = 0; index < selectedArray_return.length; index++) {
            bool isSelected = selectedArray_return[index];
            stringBuffer.delete(0, stringBuffer.length());
            stringBuffer.append(SELECTED_ARRAY_RETURN);
            stringBuffer.appendint(index);
            stringBuffer.append(SELECTED_SEP);
            stringBuffer.appendboolean(isSelected);
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
            if (isSelected) {
                String selectedChoiceLabel = choiceGroup.getString(index);
                this.updateExclusive(selectedChoiceLabel);
            }
        }
    }
    

    bool isExclusive(String itemLabel) {
        final Enumeration enumeration = GameFeatureChoiceGroups.getExclusiveInstance().get().keys();
        late String name;
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            name = (this.enumerationUtil.nextElement(enumeration) as String);
            if (this.tsUtil.compareTo(itemLabel, name) == 0) {
                return true;
            }
        }
        return false;
    }
    

    void updateExclusive(String selectedChoiceLabel) {
        this.logUtil.putF(StringMaker().append(CommonLabels.getInstance().ITEM_LABEL).append(selectedChoiceLabel).toString(), this, "updateExclusive");
        final Feature gameFeature = Feature.getInstance1(selectedChoiceLabel);
        final ABHashtable hashtable = GameFeatureChoiceGroups.getExclusiveInstance().get();
        final List<Object?> objectArray = HashtableUtil.getInstance().getKeysAsArray(hashtable);
        late BasicArrayList basicArrayList;
        late Object anyType;
        int size = objectArray.length;
        for (int index = 0; index < size; index++) {
            anyType = objectArray[index]!;
            basicArrayList = (hashtable.get(anyType) as BasicArrayList);
            this.updateExclusiveList(gameFeature, basicArrayList);
        }
    }
    

    void updateExclusiveList(Feature gameFeature, BasicArrayList list) {
        if (list.contains(gameFeature)) {
            Features features = Features.getInstance();
            int addIndex = list.indexOf(gameFeature);
            int size = list.size();
            for (int index = 0; index < size; index++) {
                if (addIndex != index) {
                    features.remove((list.objectArray[index]! as Feature));
                } else {
                    features.add((list.objectArray[index]! as Feature));
                }
            }
        }
    }
}

