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
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/Anchor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/ColorChangeEvent.dart';
import 'package:allbinary/org/allbinary/graphics/color/ColorChangeListener.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/game/score/NullHighScoresSingletonFactory.dart';
import 'package:allbinary/org/allbinary/game/score/HighScores.dart';
import 'package:allbinary/org/allbinary/game/score/HighScore.dart';

class HighScoresPaintable extends Paintable implements ColorChangeListener, UpdateMyFontInterface {
    late DisplayInfoSingleton displayInfoSingleton;
    late MyFontProcessor myFontProcessor;
    late BasicColor basicColor;
    late HighScores highScores;
    int anchor = 0;
    int charHeight = 0;

    // Java field initializers run after the base constructor
    void initFieldsHighScoresPaintable() {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.myFontProcessor = UpdateMyFontProcessor(this);
    this.basicColor = BasicColorFactory.getInstance().WHITE;
    this.highScores = NullHighScoresSingletonFactory.getInstance();
    this.anchor = Anchor.TOP_LEFT;
    this.charHeight = 0;
    }
    

    HighScoresPaintable() {
        this.initFieldsHighScoresPaintable();
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        this.charHeight = font.getHeight();
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    @override
    void onEvent(AllBinaryEventObject eventObject) {
        final ColorChangeEvent colorChangeEvent = (eventObject as ColorChangeEvent);
        this.basicColor = colorChangeEvent.getBasicColorP();
    }
    

    @override
    void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        final int width = this.displayInfoSingleton.getLastWidth();
        final int height = this.displayInfoSingleton.getLastHeight();
        graphics.setColor(this.getBasicColorP().intValue());
        String heading = this.highScores.getHeading();
        final int topScoresWidth = (graphics.getFont().stringWidth(heading) >> 1);
        final int charHeight = this.charHeight;
        graphics.drawString(heading, (width >> 1) - topScoresWidth, charHeight, this.anchor);
        graphics.drawString(this.highScores.getColumnOneHeading(), 10, charHeight * 3, this.anchor);
        String columnTwoHeading = this.highScores.getColumnTwoHeading();
        final int columnTwoHeadingWidth = graphics.getFont().stringWidth(columnTwoHeading);
        graphics.drawString(columnTwoHeading, width - 10 - columnTwoHeadingWidth, charHeight * 3, this.anchor);
        int index = 4;
        int largestSecondColumnWidth = columnTwoHeadingWidth;
        BasicArrayList list = this.highScores.getList();
        int size = list.size();
        int vectorIndex = 0;
        late HighScore highScore;
        while (vectorIndex < size && charHeight * index < height - (charHeight * 2)) {
            highScore = (list.objectArray[vectorIndex]! as HighScore);
            int nextScoreWidth = graphics.getFont().stringWidth(highScore.getScoreString());
            if (nextScoreWidth > largestSecondColumnWidth) {
                largestSecondColumnWidth = nextScoreWidth;
            }
            vectorIndex++;
        }
        vectorIndex = 0;
        while (vectorIndex < size && charHeight * index < height - (charHeight * 2)) {
            highScore = (list.objectArray[vectorIndex]! as HighScore);
            graphics.drawString(highScore.getName(), 10, charHeight * index, this.anchor);
            graphics.drawString(highScore.getScoreString(), width - 10 - largestSecondColumnWidth, charHeight * index, this.anchor);
            index++;
            vectorIndex++;
        }
    }
    

    @override
    void setBasicColorP(BasicColor basicColor) {
        this.basicColor = basicColor;
    }
    

    BasicColor getBasicColorP() {
        return this.basicColor;
    }
    

    void setHighScores(HighScores highScores) {
        this.highScores = highScores;
    }
}

