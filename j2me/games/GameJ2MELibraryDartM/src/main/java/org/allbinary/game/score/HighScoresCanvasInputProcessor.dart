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
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/game/input/PlayerGameInput.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';
import 'package:allbinary/org/allbinary/game/score/displayable/HighScoresCanvas.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';

class HighScoresCanvasInputProcessor extends PlayerGameInput {
    late HighScoresCanvas highScoresCanvas;

    // Java field initializers run after the base constructor
    void initFieldsHighScoresCanvasInputProcessor() {
    
    }
    

    HighScoresCanvasInputProcessor(HighScoresCanvas highScoresCanvas) : super(BasicArrayListD(), BasicArrayListD(), -1) {
        this.initFieldsHighScoresCanvasInputProcessor();
        
        this.highScoresCanvas = highScoresCanvas;
    }
    

    void open() {
    }
    

    void close() {
    }
    

    @override
    void onPressGameKeyEvent(GameKeyEvent gameKeyEvent) {
        super.onPressGameKeyEvent(gameKeyEvent);
        this.update();
    }
    

    @override
    void onDownGameKeyEvent(GameKeyEvent gameKeyEvent) {
        super.onDownGameKeyEvent(gameKeyEvent);
        this.update();
    }
    

    @override
    void onUpGameKeyEvent(GameKeyEvent gameKeyEvent) {
        super.onUpGameKeyEvent(gameKeyEvent);
        this.update();
    }
    

    void paint(Graphics graphics) {
    }
    

    HighScoresCanvas getHighScoresCanvas() {
        return this.highScoresCanvas;
    }
}

