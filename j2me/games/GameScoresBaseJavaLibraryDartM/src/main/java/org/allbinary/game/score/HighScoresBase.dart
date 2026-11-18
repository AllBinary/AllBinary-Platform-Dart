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
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresResultsListener.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresHelperBaseInterface.dart';

class HighScoresBase implements HighScoresFactoryInterface {
    late CommonStrings commonStrings;

    // Java field initializers run after the base constructor
    void initFieldsHighScoresBase() {
    this.commonStrings = CommonStrings.getInstance();
    }
    

    HighScoresBase() {
        this.initFieldsHighScoresBase();
    }
    

    @override
    void fetchHighScores(GameInfo gameInfo, HighScoresResultsListener highScoresResultsListener) {
        throw JException('RuntimeException', '');
    }
    

    @override
    void fetchHighScoresPreload(GameInfo gameInfo, HighScoresResultsListener highScoresResultsListener, bool preload) {
        throw JException('RuntimeException', '');
    }
    

    @override
    HighScoresHelperBaseInterface createHighScoresHelper() {
        throw JException('RuntimeException', '');
    }
}

