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
import 'package:allbinary/javax/microedition/lcdui/ChoiceGroup.dart';
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/javax/microedition/lcdui/Item.dart';
import 'package:allbinary/javax/microedition/lcdui/NullImage.dart';
import 'package:allbinary/javax/microedition/lcdui/StringItem.dart';
import 'package:allbinary/org/allbinary/MIDPUtil.dart';
import 'package:allbinary/org/allbinary/game/commands/GameCommandsFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/GamePersistanceSingleton.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/screen/CommandForm.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';

class LoadGameForm extends CommandForm {
    late MIDPUtil meUtil;
    bool areChoices = false;

    // Java field initializers run after the base constructor
    void initFieldsLoadGameForm() {
    this.meUtil = MIDPUtil.getInstance();
    this.areChoices = false;
    }
    

    LoadGameForm(CommandListener commandListener, String title, BasicColor backgrounBasicColor, BasicColor foregroundBasicColor) : super(commandListener, title, backgrounBasicColor, foregroundBasicColor) {
        this.initFieldsLoadGameForm();
        
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.update();
        this.initCommands(commandListener);
    }
    

    @override
    void initCommands(CommandListener cmdListener) {
        final GameCommandsFactory gameCommandsFactory = GameCommandsFactory.getInstance();
        this.removeAllCommands();
        this.addCommand(gameCommandsFactory.LOAD_FILE);
        this.addCommand(gameCommandsFactory.DELETE_FILE);
        this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
        this.setCommandListener(cmdListener);
    }
    

    @override
    void update() {
        final BasicArrayList list = GamePersistanceSingleton.getInstance().getIds();
        this.deleteAll();
        if (list.size() > 0) {
            this.add(list, "Select A Saved Game", Choice.EXCLUSIVE);
            this.areChoices = true;
        } else {
            this.meUtil.appendItem(this, StringItem.with3("No Saved Games", StringUtil.getInstance().EMPTY_STRING, Item.PLAIN));
            this.areChoices = false;
        }
        super.update();
    }
    

    void add(BasicArrayList list, String name, int option) {
        ChoiceGroup choiceGroup = this.getChoiceGroup(list, name, option);
        if (list.size() > 0) {
            choiceGroup.setSelectedIndex(0, true);
        }
        this.meUtil.appendItem(this, choiceGroup);
    }
    

    ChoiceGroup getChoiceGroup(BasicArrayList list, String name, int option) {
        final String METHOD_NAME = "getChoiceGroup";
        final String ADDING_CHOICE = "Adding Choice: ";
        final ChoiceGroup choiceGroup = ChoiceGroup.with4(name, option, StringUtil.getInstance().getArrayInstance(), NullImage.NULL_IMAGE_ARRAY);
        final int size = list.size();
        for (int index = 0; index < size; index++) {
            Object anyType = list.objectArray[index]!;
            this.logUtil.putF(StringMaker().append(ADDING_CHOICE).append(anyType.toString()).toString(), this, METHOD_NAME);
            choiceGroup.append(anyType.toString(), NullImage.NULL_IMAGE);
        }
        return choiceGroup;
    }
    

    int getSelectedId() {
        if (this.areChoices) {
            final ChoiceGroup choiceGroup = (this.get(0) as ChoiceGroup);
            return choiceGroup.getSelectedIndex();
        } else {
            return -1;
        }
    }
    

    int getSelectedText() {
        if (this.areChoices) {
            final ChoiceGroup choiceGroup = (this.get(0) as ChoiceGroup);
            final int value = (int.parse(choiceGroup.getString(choiceGroup.getSelectedIndex()))).toInt();
            return value;
        } else {
            return -1;
        }
    }
}

