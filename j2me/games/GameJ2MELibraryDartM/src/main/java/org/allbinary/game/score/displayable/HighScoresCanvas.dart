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
import 'package:allbinary/javax/microedition/lcdui/Command.dart';
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/game/GameInfo.dart';
import 'package:allbinary/org/allbinary/game/commands/GameCommandsFactory.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameCommandCanvas.dart';
import 'package:allbinary/org/allbinary/game/layer/AllBinaryGameLayerManager.dart';
import 'package:allbinary/org/allbinary/game/paint/ColorFillBasePaintable.dart';
import 'package:allbinary/org/allbinary/game/paint/ColorFillPaintableFactory.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoreCommandsFactory.dart';
import 'package:allbinary/org/allbinary/game/score/HighScores.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresCanvasInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresCanvasInputProcessorFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresHelperBase.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresPaintable.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresResultsListener.dart';
import 'package:allbinary/org/allbinary/game/score/NoHighScoresFactory.dart';
import 'package:allbinary/org/allbinary/game/score/NullHighScoresSingletonFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/paint/NullPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/SimpleTextPaintable.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/thread/SecondaryThreadPool.dart';
import 'package:allbinary/org/allbinary/game/score/displayable/HighScoreRunnable.dart';

class HighScoresCanvas extends GameCommandCanvas implements HighScoresResultsListener {
    static const String NAME = "HighScoresCanvas";
    late Paintable paintable;
    late HighScoreCommandsFactory highScoreCommandsFactory;
    late SimpleTextPaintable waitPaintable;
    late HighScoresPaintable highScoresPaintable;
    late HighScoresFactoryInterface highScoresFactoryInterface;
    late ColorFillBasePaintable colorFillPaintable;
    late HighScoresHelperBase highScoresHelper;
    late GameInfo gameInfo;
    late HighScoresCanvasInputProcessor highScoresCanvasInputProcessor;
    late Command currentCommand;
    bool hasPainted = false;

    // Java field initializers run after the base constructor
    void initFieldsHighScoresCanvas() {
    this.paintable = NullPaintable.getInstance();
    this.highScoreCommandsFactory = HighScoreCommandsFactory.getInstance();
    this.waitPaintable = SimpleTextPaintable(this.commonStrings.PLEASE_WAIT_FOR_SERVER, BasicColorFactory.getInstance().WHITE);
    
    
    
    this.highScoresHelper = HighScoresHelperBase();
    
    
    this.currentCommand = this.highScoreCommandsFactory.HIGH_SCORE_COMMANDS[0]!;
    this.hasPainted = false;
    }
    

    HighScoresCanvas(CommandListener commandListener, AllBinaryGameLayerManager allBinaryGameLayerManager, GameInfo gameInfo, HighScoresPaintable paintable, HighScoresFactoryInterface highScoresFactoryInterface, HighScoresCanvasInputProcessorFactoryInterface highScoresCanvasInputProcessorFactoryInterface) : super(commandListener, HighScoresCanvas.NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor()) {
        this.initFieldsHighScoresCanvas();
        
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.highScoresPaintable = paintable;
        this.highScoresFactoryInterface = highScoresFactoryInterface;
        this.highScoresCanvasInputProcessor = highScoresCanvasInputProcessorFactoryInterface.getInstance1(this);
        this.gameInfo = gameInfo;
        this.waitPaintable.setBasicColorP(allBinaryGameLayerManager.getForegroundBasicColor());
        this.getHighScoresPaintable().setBasicColorP(allBinaryGameLayerManager.getForegroundBasicColor());
        this.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance2(allBinaryGameLayerManager.getBackgroundBasicColor(), false);
        if (this.highScoresHelper.getHighScoresArray().length == NoHighScoresFactory.getInstance().NO_HIGH_SCORES.length) {
            this.setPaintable(this.waitPaintable);
        } else {
            this.logUtil.putF("Show HighScores that are already loaded", this, this.commonStrings.CONSTRUCTOR);
            this.updateCommand(this.currentCommand);
            this.setPaintable(this.getHighScoresPaintable());
        }
        SecondaryThreadPool.getInstance().runTask(HighScoreRunnable(this));
    }
    

    @override
    void initCommands(CommandListener cmdListener) {
        this.removeAllCommands();
        this.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS);
        this.setCommandListener(cmdListener);
    }
    

    @override
    void open() {
        super.open();
        this.highScoresCanvasInputProcessor.open();
    }
    

    @override
    void close() {
        super.close();
        this.highScoresCanvasInputProcessor.close();
    }
    

    @override
    void paint(Graphics graphics) {
        this.colorFillPaintable.paint(graphics);
        this.paintable.paint(graphics);
        if (!identical(this.waitPaintable, this.paintable)) {
            this.highScoresCanvasInputProcessor.paint(graphics);
        }
        super.paint(graphics);
        this.hasPainted = true;
    }
    

    void executeUpdate() {
        try {
            this.highScoresFactoryInterface.fetchHighScores(this.getGameInfo(), this);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e);
            }
        }
    }
    

    HighScoresPaintable getHighScoresPaintable() {
        return this.highScoresPaintable;
    }
    

    @override
    void setHighScoresArray(List<HighScores?> highScoresArray) {
        try {
            if (highScoresArray != null) {
                this.logUtil.putF(StringMaker().append(this.commonStrings.START).appendint(highScoresArray.length).toString(), this, "setHighScoresArray");
            } else {
                this.logUtil.putF(this.commonStrings.START, this, "setHighScoresArray");
            }
            this.highScoresHelper.setHighScoresArray(highScoresArray);
            this.updateCommand(this.currentCommand);
            this.setPaintable(this.getHighScoresPaintable());
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e);
            }
        }
    }
    

    void updateCommand(Command command) {
        this.logUtil.putF(StringMaker().append(this.commonStrings.START).append(this.stringUtil.toString1(command)).toString(), this, this.commonStrings.UPDATE);
        final GameCommandsFactory gameCommandsFactory = GameCommandsFactory.getInstance();
        if (this.highScoreCommandsFactory.isHighScoreCommand(command)) {
            final int index = this.highScoreCommandsFactory.getIndex(command);
            int nextIndex = index + 1;
            final List<HighScores?> highScoresArray = this.highScoresHelper.getHighScoresArray();
            if (nextIndex >= highScoresArray.length) {
                nextIndex = 0;
            }
            if (highScoresArray.length > 0) {
                this.getHighScoresPaintable().setHighScores(highScoresArray[index]!);
            } else {
                this.getHighScoresPaintable().setHighScores(NullHighScoresSingletonFactory.getInstance());
            }
            if (index != nextIndex) {
                this.removeAllCommands();
                this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
                this.addCommand(this.highScoreCommandsFactory.HIGH_SCORE_COMMANDS[nextIndex]!);
            }
        }
        this.currentCommand = command;
        this.close();
        super.initMenu();
        this.open();
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    GameInfo getGameInfo() {
        return this.gameInfo;
    }
    

    void setPaintable(Paintable paintable) {
        this.paintable = paintable;
        this.repaintBehavior.onChangeRepaint(this);
    }
}

