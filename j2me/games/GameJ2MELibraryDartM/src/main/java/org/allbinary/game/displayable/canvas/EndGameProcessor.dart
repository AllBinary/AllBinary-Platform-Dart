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
// package org.allbinary.game.displayable.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/canvas/Processor.dart';
import 'package:allbinary/org/allbinary/game/score/HighScores.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresHelperBase.dart';
import 'package:allbinary/org/allbinary/game/score/NullHighScoresSingletonFactory.dart';
import 'package:allbinary/org/allbinary/game/state/GameStateFactory.dart';
import 'package:allbinary/org/allbinary/graphics/paint/NullPaintable.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.dart';

class EndGameProcessor extends Processor {
    late GameStateFactory gameStateFactory;
    late AllBinaryGameCanvas gameCanvas;
    int WAIT = 0;

    // Java field initializers run after the base constructor
    void initFieldsEndGameProcessor() {
    this.gameStateFactory = GameStateFactory.getInstance();
    
    this.WAIT = 5000;
    }
    

    EndGameProcessor(AllBinaryGameCanvas gameCanvas) {
        this.initFieldsEndGameProcessor();
        this.gameCanvas = gameCanvas;
    }
    

    @override
    void process() {
        if (this.gameCanvas.isHighScoreSubmitted()) {
            if (this.gameCanvas.getGameStateTimeHelper().isElapsedTNT(this.WAIT)) {
                if (this.gameCanvas.getGameState() == this.gameStateFactory.SHOW_END_RESULT_GAME_STATE) {
                    final HighScoresHelperBase highScoresBase = (this.gameCanvas.highScoresHelper as HighScoresHelperBase);
                    final HighScores highScores = highScoresBase.getSelectedHighScores();
                    if (highScores != NullHighScoresSingletonFactory.getInstance()) {
                        highScoresBase.selectHighScores();
                        this.gameCanvas.getRealHighScoresPaintable().setHighScores(highScores);
                        this.gameCanvas.setGameState(this.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE);
                        this.gameCanvas.setHighScoresPaintable(this.gameCanvas.getRealHighScoresPaintable());
                    }
                } else if (this.gameCanvas.getGameState() == this.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE) {
                    this.gameCanvas.setGameState(this.gameStateFactory.SHOW_END_RESULT_GAME_STATE);
                    this.gameCanvas.setHighScoresPaintable(NullPaintable.getInstance());
                }
            }
        }
    }
}

