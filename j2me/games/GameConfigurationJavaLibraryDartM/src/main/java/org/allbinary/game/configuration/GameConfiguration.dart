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
import 'package:allbinary/org/allbinary/game/configuration/event/GameFeatureEvent.dart';
import 'package:allbinary/org/allbinary/game/configuration/event/GameFeatureEventHandler.dart';
import 'package:allbinary/org/allbinary/logic/java/bool/BooleanFactory.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/game/configuration/GameConfigurationSingleton.dart';

class GameConfiguration {
    static final int MIN_VALUE = Integer.MIN_VALUE;
    late String name;
    late int defaultValue;
    late int value;
    late int minValue;
    late int maxValue;
    late bool modifiable;

    // Java field initializers run after the base constructor
    void initFieldsGameConfiguration() {
    this.name = StringUtil.getInstance().EMPTY_STRING;
    this.defaultValue = SmallIntegerSingletonFactory.getInstance().getAt(0);
    this.value = GameConfiguration.MIN_VALUE;
    this.minValue = this.defaultValue;
    this.maxValue = this.defaultValue;
    this.modifiable = BooleanFactory.getInstance().TRUE;
    }
    

    GameConfiguration(String name, int defaultValue, int minValue, int maxValue) {
        this.initFieldsGameConfiguration();
        this.setName(name);
        this.setDefaultValue(defaultValue);
        this.value = this.getDefaultValue();
        this.setMinValue(minValue);
        this.setMaxValue(maxValue);
        GameConfigurationSingleton.getInstance().getHashtable().put(this.getName(), this);
    }
    

    void setValue(int value) {
        if (!identical(this.value, value)) {
            final int oldValue = this.value;
            this.value = value;
            GameFeatureEventHandler.getInstance().fireEvent(GameFeatureEvent(this, StringMaker().append(this.name).append(" value: from: ").appendint((oldValue).toInt()).append(" to ").appendint((this.value).toInt()).toString()));
        }
    }
    

    int getValue() {
        return this.value;
    }
    

    void setMaxValue(int maxValue) {
        this.maxValue = maxValue;
    }
    

    int getMaxValue() {
        return this.maxValue;
    }
    

    void setMinValue(int minValue) {
        this.minValue = minValue;
    }
    

    int getMinValue() {
        return this.minValue;
    }
    

    void setName(String name) {
        this.name = name;
    }
    

    String getName() {
        return this.name;
    }
    

    void setDefaultValue(int defaultValue) {
        this.defaultValue = defaultValue;
    }
    

    int getDefaultValue() {
        return this.defaultValue;
    }
    

    void setDefault() {
        this.setValue(this.getDefaultValue());
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append("Name: ");
        stringBuffer.append(this.name);
        stringBuffer.append(" Min: ");
        stringBuffer.appendint((this.getMinValue()).toInt());
        stringBuffer.append(" Max: ");
        stringBuffer.appendint((this.getMaxValue()).toInt());
        stringBuffer.append(" Value: ");
        stringBuffer.appendint((this.getValue()).toInt());
        stringBuffer.append(" Default: ");
        stringBuffer.appendint((this.getDefaultValue()).toInt());
        stringBuffer.append(" Modifiable: ");
        stringBuffer.appendboolean(this.isModifiable());
        return stringBuffer.toString();
    }
    

    void setModifiable(bool modifiable) {
        this.modifiable = modifiable;
    }
    

    bool isModifiable() {
        return this.modifiable;
    }
}

