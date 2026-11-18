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
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/javax/microedition/lcdui/TextField.dart';
import 'package:allbinary/org/allbinary/MIDPUtil.dart';
import 'package:allbinary/org/allbinary/game/commands/GameCommandsFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/screen/CommandForm.dart';
import 'package:allbinary/org/allbinary/logic/ABSystemWrapper.dart';

class SaveGameForm extends CommandForm {
    static CommandForm FORM = CommandForm.getNullCommandForm();
    late MIDPUtil meUtil;

    // Java field initializers run after the base constructor
    void initFieldsSaveGameForm() {
    this.meUtil = MIDPUtil.getInstance();
    }
    

    static CommandForm createForm(CommandListener commandListener, String title, BasicColor backgrounBasicColor, BasicColor foregroundBasicColor) {
        SaveGameForm.FORM = SaveGameForm(commandListener, title, backgrounBasicColor, foregroundBasicColor);
        return SaveGameForm.FORM;
    }
    

    static CommandForm getInstance() {
        return SaveGameForm.FORM;
    }
    

    SaveGameForm(CommandListener commandListener, String title, BasicColor backgrounBasicColor, BasicColor foregroundBasicColor) : super(commandListener, title, backgrounBasicColor, foregroundBasicColor) {
        this.initFieldsSaveGameForm();
        
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        String timeString = jstr(ABSystemWrapper.getInstance().currentTimeMillis());
        this.meUtil.appendItem(this, TextField("Name: ", timeString, 30, TextField.ANY));
        this.initCommands(commandListener);
    }
    

    @override
    void initCommands(CommandListener cmdListener) {
        final GameCommandsFactory gameCommandsFactory = GameCommandsFactory.getInstance();
        this.removeAllCommands();
        this.addCommand(gameCommandsFactory.SAVE);
        this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
        this.setCommandListener(cmdListener);
    }
}

