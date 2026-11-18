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
// package org.allbinary.graphics.displayable.command

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Command.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';

class MyCommandsFactory {
    static final MyCommandsFactory instance = MyCommandsFactory();
    late Command NO_COMMAND;
    late Command GAUGE_CHANGE;
    late Command SET_DISPLAYABLE;
    late Command PAUSE_COMMAND;
    late Command RESUME_COMMAND;

    // Java field initializers run after the base constructor
    void initFieldsMyCommandsFactory() {
    this.NO_COMMAND = Command.with4(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING, -1, -1);
    this.GAUGE_CHANGE = Command.with4("GAUGE_CHANGE", StringUtil.getInstance().EMPTY_STRING, Command.ITEM, 1);
    this.SET_DISPLAYABLE = Command.with4("Display", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2);
    this.PAUSE_COMMAND = Command.with4("Pause", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 0);
    this.RESUME_COMMAND = Command.with4("Resume", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 0);
    }
    

    static MyCommandsFactory getInstance() {
        return MyCommandsFactory.instance;
    }
    

    MyCommandsFactory() {
        this.initFieldsMyCommandsFactory();
    }
}

