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
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEventHandler.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEventUtil.dart';
import 'package:allbinary/org/allbinary/game/score/displayable/HighScoresCanvas.dart';
import 'package:allbinary/org/allbinary/graphics/Anchor.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontProcessor.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresCanvasInputProcessor.dart';

class HighScoresCanvasLevelChangeInputProcessor extends HighScoresCanvasInputProcessor implements UpdateMyFontInterface {
    late DisplayInfoSingleton displayInfoSingleton;
    late String INSTRUCTIONS;
    late MyFontProcessor myFontProcessor;
    int anchor = 0;
    int fontHeight = 0;

    // Java field initializers run after the base constructor
    void initFieldsHighScoresCanvasLevelChangeInputProcessor() {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.INSTRUCTIONS = "(Right = Next Track, Left = Previous Track)";
    this.myFontProcessor = UpdateMyFontProcessor(this);
    this.anchor = Anchor.TOP_LEFT;
    this.fontHeight = 0;
    }
    

    HighScoresCanvasLevelChangeInputProcessor(HighScoresCanvas highScoresCanvas) : super(highScoresCanvas) {
        this.initFieldsHighScoresCanvasLevelChangeInputProcessor();
        
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        this.fontHeight = font.getHeight();
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    @override
    void open() {
        GameKeyEventHandler.getInstance().addListener(this);
    }
    

    @override
    void close() {
        GameKeyEventHandler.getInstance().removeListener(this);
    }
    

    @override
    void update() {
        final BasicArrayList list = this.getGameKeyEventList();
        final int size = list.size();
        for (int index = 0; index < size; index++) {
            final Object anyType = list.objectArray[index]!;
            final int key = GameKeyEventUtil.getKey(anyType);
            if (key == Canvas.RIGHT) {
                this.getHighScoresCanvas().getGameInfo().nextGameLevel();
            } else if (key == Canvas.LEFT) {
                this.getHighScoresCanvas().getGameInfo().previousGameLevel();
            }
            this.getHighScoresCanvas().executeUpdate();
        }
        list.clear();
    }
    

    @override
    void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        final int width = this.displayInfoSingleton.getLastWidth();
        final int topScoresWidth = (graphics.getFont().stringWidth(this.INSTRUCTIONS) >> 1);
        graphics.drawString(this.INSTRUCTIONS, (width >> 1) - topScoresWidth, this.fontHeight * 2, this.anchor);
    }
}

