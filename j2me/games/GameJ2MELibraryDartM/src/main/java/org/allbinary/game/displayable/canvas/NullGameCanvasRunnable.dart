/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.displayable.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/javax/microedition/lcdui/Item.dart';
import 'package:allbinary/org/allbinary/game/state/GameState.dart';
import 'package:allbinary/org/allbinary/game/state/GameStateFactory.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.dart';

class NullGameCanvasRunnable implements GameCanvasRunnableInterface {
    static final NullGameCanvasRunnable NULL_GAME_CANVAS_RUNNABLE = NullGameCanvasRunnable();
    late GameStateFactory gameStateFactory;

    // Java field initializers run after the base constructor
    void initFieldsNullGameCanvasRunnable() {
    this.gameStateFactory = GameStateFactory.getInstance();
    }

    NullGameCanvasRunnable() {
        this.initFieldsNullGameCanvasRunnable();
    }
    

    @override
    String getTitle() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    @override
    bool isInitialized() {
        return false;
    }
    

    @override
    bool isPaused() {
        return false;
    }
    

    @override
    void unPause() {
    }
    

    @override
    void pause() {
    }
    

    @override
    bool isHighScoreSubmitted() {
        return false;
    }
    

    @override
    void setHighScoreSubmitted(bool highScoreSubmitted) {
    }
    

    @override
    void processGameOver() {
    }
    

    @override
    bool isGameOver() {
        return false;
    }
    

    @override
    void initCommands(CommandListener cmdListener) {
    }
    

    @override
    ABHashtable getCurrentStateHashtable() {
        return StdUtil.getInstance().NULL_TABLE;
    }
    

    @override
    ABHashtable getLoadStateHashtable() {
        return StdUtil.getInstance().NULL_TABLE;
    }
    

    @override
    void setLoadStateHashtable(ABHashtable hashtable) {
    }
    

    @override
    int getType() {
        return -1;
    }
    

    @override
    void setGameState(GameState gameState) {
    }
    

    @override
    GameState getGameState() {
        return this.gameStateFactory.NO_GAME_STATE;
    }
    

    @override
    void itemStateChanged(Item item) {
    }
    

    @override
    void paint(Graphics graphics) {
    }
    

    @override
    void paintThreed(Graphics graphics) {
    }
    

    @override
    bool isRunning() {
        return false;
    }
    

    @override
    void setRunning(bool isRunning) {
    }
    

    @override
    void setThread(Thread thread) {
    }
    

    @override
    void run() {
    }
}

