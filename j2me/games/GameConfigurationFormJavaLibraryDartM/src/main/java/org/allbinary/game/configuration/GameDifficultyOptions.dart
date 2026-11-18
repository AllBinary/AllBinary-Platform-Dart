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
import 'package:allbinary/javax/microedition/lcdui/NullImage.dart';
import 'package:allbinary/org/allbinary/MIDPUtil.dart';
import 'package:allbinary/org/allbinary/game/commands/GameCommandsFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/persistance/GameDifficultyFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/screen/CommandForm.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';

class GameDifficultyOptions extends CommandForm {
    late MIDPUtil meUtil;
    late BasicArrayList list;

    // Java field initializers run after the base constructor
    void initFieldsGameDifficultyOptions() {
    this.meUtil = MIDPUtil.getInstance();
    
    }
    

    GameDifficultyOptions(CommandListener commandListener, String title, BasicArrayList list, BasicColor backgrounBasicColor, BasicColor foregroundBasicColor) : super(commandListener, title, backgrounBasicColor, foregroundBasicColor) {
        this.initFieldsGameDifficultyOptions();
        
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.list = list;
        this.update();
        this.initCommands(commandListener);
        final GameDifficultyFactory gameDifficultyFactory = GameDifficultyFactory.getInstance();
        this.setSelectedId(gameDifficultyFactory.getLevel());
    }
    

    @override
    void open() {
        super.open();
    }
    

    @override
    void close() {
        super.close();
        this.save();
    }
    

    void save() {
        final GameDifficultyFactory gameDifficultyFactory = GameDifficultyFactory.getInstance();
        gameDifficultyFactory.setLevel(this.getSelectedId());
    }
    

    @override
    void initCommands(CommandListener cmdListener) {
        final GameCommandsFactory gameCommandsFactory = GameCommandsFactory.getInstance();
        this.removeAllCommands();
        this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
        this.setCommandListener(cmdListener);
    }
    

    @override
    void update() {
        this.deleteAll();
        this.add(this.list, "Difficulty", Choice.EXCLUSIVE);
        super.update();
    }
    

    void add(BasicArrayList list, String name, int option) {
        final ChoiceGroup choiceGroup = this.getChoiceGroup(list, name, option);
        if (list.size() > 0) {
            choiceGroup.setSelectedIndex(0, true);
        }
        this.meUtil.appendItem(this, choiceGroup);
    }
    

    ChoiceGroup getChoiceGroup(BasicArrayList list, String name, int option) {
        final String METHOD_NAME = "addChoiceGroup";
        final String NAME = "Adding Choice: ";
        final ChoiceGroup choiceGroup = ChoiceGroup.with4(name, option, StringUtil.getInstance().getArrayInstance(), NullImage.NULL_IMAGE_ARRAY);
        final int size = list.size();
        late Object anyType;
        for (int index = 0; index < size; index++) {
            anyType = list.objectArray[index]!;
            this.logUtil.putF(StringMaker().append(NAME).append(anyType.toString()).toString(), this, METHOD_NAME);
            choiceGroup.append(anyType.toString(), NullImage.NULL_IMAGE);
        }
        return choiceGroup;
    }
    

    void setSelectedId(int id) {
        final ChoiceGroup choiceGroup = (this.get(0) as ChoiceGroup);
        choiceGroup.setSelectedIndex(id, true);
    }
    

    int getSelectedId() {
        final ChoiceGroup choiceGroup = (this.get(0) as ChoiceGroup);
        return choiceGroup.getSelectedIndex();
    }
    

    int getSelectedText() {
        final ChoiceGroup choiceGroup = (this.get(0) as ChoiceGroup);
        final int value = (int.parse(choiceGroup.getString(choiceGroup.getSelectedIndex()))).toInt();
        return value;
    }
}

