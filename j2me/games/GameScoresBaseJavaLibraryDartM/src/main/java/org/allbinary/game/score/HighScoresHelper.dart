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
import 'package:allbinary/org/allbinary/game/score/HighScores.dart';

class HighScoresHelper extends HighScoresHelperBase {
    late CircularIndexUtil circularIndexUtil;
    int lastIndex = 0;

    // Java field initializers run after the base constructor
    void initFieldsHighScoresHelper() {
    this.circularIndexUtil = CircularIndexUtil.createInstanceAt(0, 0);
    this.lastIndex = -1;
    }

    HighScoresHelper() {
        this.initFieldsHighScoresHelper();
    }
    

    @override
    void setHighScoresArray(List<HighScores?> highScoresArrayP) {
        super.setHighScoresArray(highScoresArrayP);
        this.circularIndexUtil.setSize(this.highScoresArrayP.length);
    }
    

    @override
    HighScores getNextHighScores() {
        HighScores highScores = this.highScoresArrayP[this.circularIndexUtil.getIndex()]!;
        int index = 0;
        while ((highScores.getTotal() < 1 || this.lastIndex == this.circularIndexUtil.getIndex()) && index < this.highScoresArrayP.length) {
            this.circularIndexUtil.next();
            highScores = this.highScoresArrayP[this.circularIndexUtil.getIndex()]!;
            index++;
        }
        this.lastIndex = this.circularIndexUtil.getIndex();
        return highScores;
    }
    

    @override
    bool isAnyHighScores() {
        if (this.highScoresArrayP.length < 1) {
            return false;
        }
        bool anyScores = false;
        late HighScores highScores;
        for (int index = this.highScoresArrayP.length - 1; index >= 0; index--) {
            highScores = this.highScoresArrayP[index]!;
            if (highScores.getTotal() > 0) {
                anyScores = true;
            }
        }
        return anyScores;
    }
}

