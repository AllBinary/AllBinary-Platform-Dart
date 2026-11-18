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
import 'package:allbinary/org/allbinary/game/commands/GameCommandsFactory.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeatureFormUtil.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/InGameFeatureChoiceGroups.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/screen/CommandForm.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';

class InGameOptionsForm extends CommandForm {
    static final Command DISPLAY = Command.with4("Options In Game", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    static final Command SAVE = Command.with4("Save", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    static final Command DEFAULT = Command.with4("Default", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    

    InGameOptionsForm(CommandListener commandListener, String title, BasicColor backgrounBasicColor, BasicColor foregroundBasicColor) : super(commandListener, title, backgrounBasicColor, foregroundBasicColor) {
        
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        final GameFeatureFormUtil gameFeatureFormUtil = GameFeatureFormUtil.getInstance();
        gameFeatureFormUtil.addChoiceGroup(this, InGameFeatureChoiceGroups.getExclusiveInstance().get(), Choice.EXCLUSIVE);
        gameFeatureFormUtil.addChoiceGroup(this, InGameFeatureChoiceGroups.getMultipleInstance().get(), Choice.MULTIPLE);
        this.initCommands(commandListener);
    }
    

    @override
    void initCommands(CommandListener cmdListener) {
        this.removeAllCommands();
        this.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS);
        this.addCommand(InGameOptionsForm.DEFAULT);
        this.setCommandListener(cmdListener);
    }
}

