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
// package org.allbinary.game.score.displayable

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/javax/microedition/lcdui/TextField.dart';
import 'package:allbinary/org/allbinary/PostGameCommandFactory.dart';
import 'package:allbinary/org/allbinary/game/GameInfo.dart';
import 'package:allbinary/org/allbinary/game/score/HighScore.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresHelperBaseInterface.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresFactoryInterface.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/CustomTextBox.dart';
import 'package:allbinary/org/allbinary/graphics/paint/NullPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/SimpleTextPaintable.dart';
import 'package:allbinary/org/allbinary/input/event/VirtualKeyboardEventHandler.dart';
import 'package:allbinary/org/allbinary/logic/system/os/GenericOperatingSystem.dart';
import 'package:allbinary/org/allbinary/logic/system/os/OperatingSystemFactory.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory.dart';
import 'package:allbinary/org/allbinary/game/score/displayable/HighScoreUtil.dart';

class HighScoreTextBox extends CustomTextBox {
    late VirtualKeyboardEventHandler virtualKeyboardEventHandler;
    late HighScoreUtil highScoreUtil;
    late Paintable pleaseWait;
    late Paintable paintable;
    bool submitted = false;

    // Java field initializers run after the base constructor
    void initFieldsHighScoreTextBox() {
    this.virtualKeyboardEventHandler = VirtualKeyboardEventHandler.getInstance();
    
    this.pleaseWait = SimpleTextPaintable(this.commonStrings.PLEASE_WAIT, BasicColorFactory.getInstance().WHITE);
    this.paintable = NullPaintable.getInstance();
    this.submitted = false;
    }
    

    HighScoreTextBox(HighScoresFactoryInterface highScoresFactoryInterface, HighScoresHelperBaseInterface highScoresHelper, AbeClientInformationInterface abeClientInformation, GameInfo gameInfo, CommandListener cmdListener, String name, HighScore highScore, BasicColor backgrounBasicColor, BasicColor foregroundBasicColor) : super(cmdListener, "New High Score Enter Name:", name, 12, TextField.ANY, Font.getDefaultFont(), backgrounBasicColor, foregroundBasicColor) {
        this.initFieldsHighScoreTextBox();
        
        this.highScoreUtil = HighScoreUtil(highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore);
        final GenericOperatingSystem operatingSystemInterface = OperatingSystemFactory.getInstance().getOperatingSystemInstance();
        if (operatingSystemInterface.isOverScan()) {
            String username = InApplicationPurchaseFactory.getInstance().getUserName();
            this.getTextFieldItem().setString(username);
        }
    }
    

    @override
    void initCommands(CommandListener cmdListener) {
        this.removeAllCommands();
        PostGameCommandFactory.getInstance().addCommands(this);
        this.addCommand(HighScoreUtil.SUBMIT_TEXTBOX_COMMAND);
        this.setCommandListener(cmdListener);
    }
    

    @override
    void open() {
        this.virtualKeyboardEventHandler.open();
        this.paintable = NullPaintable.getInstance();
        super.open();
    }
    

    @override
    void close() {
        this.virtualKeyboardEventHandler.close();
        this.paintable = this.pleaseWait;
        this.repaintBehavior.onChangeRepaint(this);
        super.close();
        this.removeCommand(HighScoreUtil.SUBMIT_TEXTBOX_COMMAND);
        this.update();
        if (this.submitted) {
            this.highScoreUtil.saveHighScore();
        } else {
        }
        this.paintable = NullPaintable.getInstance();
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    @override
    void update() {
        final String name = this.getTextFieldItem().getString();
        this.highScoreUtil.update(name);
        super.update();
    }
    

    @override
    void paint(Graphics graphics) {
        super.paint(graphics);
        this.paintable.paint(graphics);
    }
    

    void saveHighScore() {
        this.highScoreUtil.saveHighScore();
    }
    

    @override
    void submit() {
        this.highScoreUtil.submit(this);
    }
}

