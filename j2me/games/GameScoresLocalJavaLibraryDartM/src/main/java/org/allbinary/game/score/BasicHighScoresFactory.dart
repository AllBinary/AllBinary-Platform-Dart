// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.game.score

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/GameInfo.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/system/SoftwareInformation.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresBase.dart';
import 'package:allbinary/org/allbinary/game/score/HighScores.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresResultsListener.dart';
import 'package:allbinary/org/allbinary/game/score/RecordStoreHighScores.dart';
import 'package:allbinary/org/allbinary/game/score/ScoreComparator.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresHelper2.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresHelperBaseInterface.dart';

class BasicHighScoresFactory extends HighScoresBase {
    late LogUtil logUtil;
    late AbeClientInformationInterface abeClientInformation;
    late List<HighScores?> highScoresArray;
    late String TOP;
    late String SCORES;
    late String PERSONAL_HIGH_SCORES;
    late String FETCH;

    // Java field initializers run after the base constructor
    void initFieldsBasicHighScoresFactory() {
    this.logUtil = LogUtil.getInstance();
    
    this.highScoresArray = List<HighScores?>.filled(1, null);
    this.TOP = "Top";
    this.SCORES = "Scores";
    this.PERSONAL_HIGH_SCORES = "Personal Top Scores";
    this.FETCH = "fetchHighScores";
    }
    

    BasicHighScoresFactory(AbeClientInformationInterface abeClientInformation, SoftwareInformation softwareInformation) {
        this.initFieldsBasicHighScoresFactory();
        this.abeClientInformation = abeClientInformation;
    }
    

    @override
    void fetchHighScores(GameInfo gameInfo, HighScoresResultsListener highScoresResultsListener) {
        this.logUtil.putF("Getting Local HighScores", this, this.FETCH);
        this.fetchHighScoresPreload(gameInfo, highScoresResultsListener, true);
    }
    

    @override
    void fetchHighScoresPreload(GameInfo gameInfo, HighScoresResultsListener highScoresResultsListener, bool preload) {
        try {
            this.highScoresArray[0] = RecordStoreHighScores.getInstance6(this.abeClientInformation, gameInfo, this.TOP, this.PERSONAL_HIGH_SCORES, this.SCORES, ScoreComparator(true));
            highScoresResultsListener.setHighScoresArray(this.highScoresArray);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.FETCH, e);
            }
        }
    }
    

    @override
    HighScoresHelperBaseInterface createHighScoresHelper() {
        return HighScoresHelper2();
    }
    

    static bool loaded(int index2) {
        if (index2 >= 0) {
            return true;
        }
        return false;
    }
}

