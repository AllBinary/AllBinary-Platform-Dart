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
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';

class HighScoreCommandsBaseFactory {
    late LogUtil logUtil;
    late List<Command?> HIGH_SCORE_COMMANDS;

    // Java field initializers run after the base constructor
    void initFieldsHighScoreCommandsBaseFactory() {
    this.logUtil = LogUtil.getInstance();
    
    }
    

    HighScoreCommandsBaseFactory(List<Command?> HIGH_SCORE_COMMANDS) {
        this.initFieldsHighScoreCommandsBaseFactory();
        this.HIGH_SCORE_COMMANDS = HIGH_SCORE_COMMANDS;
    }
    

    bool isHighScoreCommand(Command command) {
        for (int index = this.HIGH_SCORE_COMMANDS.length - 1; index >= 0; index--) {
            if (identical(command, this.HIGH_SCORE_COMMANDS[index]!)) {
                return true;
            }
        }
        return false;
    }
    

    int getIndex(Command command) {
        for (int index = this.HIGH_SCORE_COMMANDS.length - 1; index >= 0; index--) {
            if (identical(command, this.HIGH_SCORE_COMMANDS[index]!)) {
                return index;
            }
        }
        throw JException('Exception', "No Such Command");
    }
}

