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
import 'package:allbinary/javax/microedition/lcdui/TextField.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';

class GameConfigurationTextInput {
    static ABHashtable hashtable = StdUtil.getInstance().createHashtable();
    static GameConfigurationTextInput SIMULATOR_IP = GameConfigurationTextInput("IP: ", "192.168.1.3");
    static GameConfigurationTextInput SIMULATOR_PORT = GameConfigurationTextInput("Port: ", "8010");
    late String label;
    late String text;

    // Java field initializers run after the base constructor
    void initFieldsGameConfigurationTextInput() {
    this.label = StringUtil.getInstance().EMPTY_STRING;
    this.text = StringUtil.getInstance().EMPTY_STRING;
    }
    

    GameConfigurationTextInput(String label, String text) {
        this.initFieldsGameConfigurationTextInput();
        this.setText(text);
        this.setLabel(label);
        GameConfigurationTextInput.hashtable.put(this.getLabel(), this);
    }
    

    static void update(TextField textField) {
        final Object anyType = (textField.getLabel() as Object);
        GameConfigurationTextInput gameConfigurationTextInput = (GameConfigurationTextInput.hashtable.get(anyType) as GameConfigurationTextInput);
        gameConfigurationTextInput.setText(textField.getString());
    }
    

    void setText(String text) {
        this.text = text;
    }
    

    String getText() {
        return this.text;
    }
    

    void setLabel(String label) {
        this.label = label;
    }
    

    String getLabel() {
        return this.label;
    }
    

    static ABHashtable getHashtable() {
        return GameConfigurationTextInput.hashtable;
    }
}

