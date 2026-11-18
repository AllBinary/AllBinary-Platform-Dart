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
// package org.allbinary.game.score

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Command.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';

class HighScoreCommands {
    static final HighScoreCommands instance = HighScoreCommands();
    late Command DISPLAY;
    late Command PERSONAL;
    late Command WORLD;

    // Java field initializers run after the base constructor
    void initFieldsHighScoreCommands() {
    this.DISPLAY = Command.with4("Scores", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.PERSONAL = Command.with4("Personal", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.WORLD = Command.with4("World", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    }

    HighScoreCommands() {
        this.initFieldsHighScoreCommands();
    }
    

    static HighScoreCommands getInstance() {
        return HighScoreCommands.instance;
    }
}

