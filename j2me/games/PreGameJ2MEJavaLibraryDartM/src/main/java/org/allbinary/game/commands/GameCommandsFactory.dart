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
// package org.allbinary.game.commands

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Command.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/CanvasStrings.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class GameCommandsFactory {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    late Command TOGGLE_FULLSCREEN;
    late Command TOGGLE_KEYBOARD;
    late Command SET_MENU_DISPLAYABLE;
    late Command APPLICATION_UPDATE;
    late Command DISPLAY_ABOUT;
    late Command OPEN_WEB_URL;
    late Command CLOSE_OPTIONS;
    late Command DISPLAY_OPTIONS;
    late Command START_TRACE;
    late Command STOP_TRACE;
    late Command DEFAULT_OPTIONS;
    late Command SHOW_GAME_CANVAS;
    late Command CLOSE_AND_SHOW_GAME_CANVAS;
    late Command QUIT_COMMAND;
    late Command RESTART_COMMAND;
    late Command DISPLAY_SAVE_FORM;
    late Command SAVE;
    late Command DISPLAY_LOAD_FORM;
    late Command LOAD_FILE;
    late Command DELETE_FILE;
    late Command EXIT_COMMAND;
    late Command EXIT_WITHOUT_PROGRESS_COMMAND;
    late Command START_COMMAND;
    late Command CONTINUE_COMMAND;
    late Command SELECT_COMMAND;
    late Command FEATURE_UPDATE;
    late Command BUY_COMMAND;

    // Java field initializers run after the base constructor
    void initFieldsGameCommandsFactory() {
    this.TOGGLE_FULLSCREEN = Command.with4("Toggle FullScreen", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.TOGGLE_KEYBOARD = Command.with4("Keyboard", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.SET_MENU_DISPLAYABLE = Command.with4("Set Menu Displayable", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.APPLICATION_UPDATE = Command.with4(CommonStrings.getInstance().UPDATE, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.DISPLAY_ABOUT = Command.with4(CanvasStrings.getInstance().ABOUT, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2);
    this.OPEN_WEB_URL = Command.with4("Open Web URL", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2);
    this.CLOSE_OPTIONS = Command.with4("Back", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.DISPLAY_OPTIONS = Command.with4(CanvasStrings.getInstance().OPTIONS, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2);
    this.START_TRACE = Command.with4("Start Trace", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.STOP_TRACE = Command.with4("Stop Trace", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.DEFAULT_OPTIONS = Command.with4("Default", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.SHOW_GAME_CANVAS = Command.with4("Back to Game", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.CLOSE_AND_SHOW_GAME_CANVAS = Command.with4("Back", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.QUIT_COMMAND = Command.with4("Quit", StringUtil.getInstance().EMPTY_STRING, Command.STOP, 1);
    this.RESTART_COMMAND = Command.with4("Restart", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 0);
    this.DISPLAY_SAVE_FORM = Command.with4("Save To", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3);
    this.SAVE = Command.with4("Save", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3);
    this.DISPLAY_LOAD_FORM = Command.with4("Load", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3);
    this.LOAD_FILE = Command.with4("Load File", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 3);
    this.DELETE_FILE = Command.with4("Delete File", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.EXIT_COMMAND = Command.with4("Exit", StringUtil.getInstance().EMPTY_STRING, Command.EXIT, 2);
    this.EXIT_WITHOUT_PROGRESS_COMMAND = Command.with4("Exit Without Progress", StringUtil.getInstance().EMPTY_STRING, Command.EXIT, 2);
    this.START_COMMAND = Command.with4(CommonStrings.getInstance().START, StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.CONTINUE_COMMAND = Command.with4("Continue", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.SELECT_COMMAND = Command.with4("Select", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.FEATURE_UPDATE = Command.with4("Feature Update", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    this.BUY_COMMAND = Command.with4("BUY", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    }
    

    static GameCommandsFactory getInstance() {
        if (GameCommandsFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            GameCommandsFactory.instance = GameCommandsFactory();
        }
        return (GameCommandsFactory.instance as GameCommandsFactory);
    }
    

    GameCommandsFactory() {
        this.initFieldsGameCommandsFactory();
    }
}

