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
import 'package:allbinary/org/allbinary/game/GameInfo.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresBase.dart';
import 'package:allbinary/org/allbinary/game/score/HighScores.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresResultsListener.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresHelperBase.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresHelperBaseInterface.dart';

class NoHighScoresFactory extends HighScoresBase {
    static final NoHighScoresFactory instance = NoHighScoresFactory();
    late LogUtil logUtil;
    late List<HighScores?> NO_HIGH_SCORES;

    // Java field initializers run after the base constructor
    void initFieldsNoHighScoresFactory() {
    this.logUtil = LogUtil.getInstance();
    this.NO_HIGH_SCORES = List<HighScores?>.filled(0, null);
    }
    

    static NoHighScoresFactory getInstance() {
        return NoHighScoresFactory.instance;
    }
    

    NoHighScoresFactory() {
        this.initFieldsNoHighScoresFactory();
    }
    

    @override
    void fetchHighScores(GameInfo gameInfo, HighScoresResultsListener highScoresResultsListener) {
        this.logUtil.putF("Getting No HighScores", this, "fetchHighScores");
        highScoresResultsListener.setHighScoresArray(this.NO_HIGH_SCORES);
    }
    

    @override
    HighScoresHelperBaseInterface createHighScoresHelper() {
        return HighScoresHelperBase();
    }
}

