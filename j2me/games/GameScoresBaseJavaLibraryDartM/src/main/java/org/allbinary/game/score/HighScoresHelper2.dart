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
import 'package:allbinary/org/allbinary/util/CircularIndexUtil.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresHelperBase.dart';
import 'package:allbinary/org/allbinary/game/score/NullHighScoresSingletonFactory.dart';
import 'package:allbinary/org/allbinary/game/score/HighScores.dart';

class HighScoresHelper2 extends HighScoresHelperBase {
    late CircularIndexUtil circularIndexUtil;
    late HighScores selectedHighScores;

    // Java field initializers run after the base constructor
    void initFieldsHighScoresHelper2() {
    this.circularIndexUtil = CircularIndexUtil.createInstanceAt(0, 0);
    this.selectedHighScores = NullHighScoresSingletonFactory.getInstance();
    }

    HighScoresHelper2() {
        this.initFieldsHighScoresHelper2();
    }
    

    @override
    void setSelectedHighScores(HighScores selectedHighScores) {
        this.selectedHighScores = selectedHighScores;
    }
    

    @override
    HighScores getSelectedHighScores() {
        return this.selectedHighScores;
    }
    

    @override
    void setHighScoresArray(List<HighScores?> highScoresArrayP) {
        super.setHighScoresArray(highScoresArrayP);
        this.circularIndexUtil.setSize(this.highScoresArrayP.length);
        this.selectHighScores();
    }
    

    @override
    void selectHighScores() {
        if (this.highScoresArrayP.length == 0) {
            this.setSelectedHighScores(NullHighScoresSingletonFactory.getInstance());
            return;
        }
        this.circularIndexUtil.next();
        HighScores highScores = this.highScoresArrayP[this.circularIndexUtil.getIndex()]!;
        int index = 0;
        while (highScores.getTotal() < 1 && index < this.highScoresArrayP.length) {
            highScores = this.highScoresArrayP[this.circularIndexUtil.next()]!;
            index++;
        }
        this.setSelectedHighScores(highScores);
    }
}

