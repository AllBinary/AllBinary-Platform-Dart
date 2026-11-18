/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresHelperBaseInterface.dart';
import 'package:allbinary/org/allbinary/game/score/LastFetchHighScoresFactory.dart';
import 'package:allbinary/org/allbinary/game/score/HighScores.dart';
import 'package:allbinary/org/allbinary/game/score/NullHighScoresSingletonFactory.dart';

class HighScoresHelperBase implements HighScoresHelperBaseInterface {
    late LogUtil logUtil;
    late List<HighScores?> highScoresArrayP;

    // Java field initializers run after the base constructor
    void initFieldsHighScoresHelperBase() {
    this.logUtil = LogUtil.getInstance();
    this.highScoresArrayP = LastFetchHighScoresFactory.getInstance().highScoresArray;
    }

    HighScoresHelperBase() {
        this.initFieldsHighScoresHelperBase();
    }
    

    @override
    void setHighScoresArray(List<HighScores?> highScoresArrayP) {
        if (highScoresArrayP != null) {
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.putF(StringMaker().append(commonStrings.START).appendint(highScoresArrayP.length).toString(), this, "setHighScoresArray");
        } else {
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.putF(commonStrings.START, this, "setHighScoresArray");
        }
        this.highScoresArrayP = highScoresArrayP;
    }
    

    HighScores getNextHighScores() {
        return NullHighScoresSingletonFactory.getInstance();
    }
    

    bool isAnyHighScores() {
        throw JException('RuntimeException', '');
    }
    

    @override
    void setSelectedHighScores(HighScores selectedHighScores) {
    }
    

    @override
    HighScores getSelectedHighScores() {
        return NullHighScoresSingletonFactory.getInstance();
    }
    

    @override
    List<HighScores?> getHighScoresArray() {
        return this.highScoresArrayP;
    }
    

    void selectHighScores() {
    }
}

