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
// package org.allbinary.game.score.displayable

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Command.dart';
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/org/allbinary/game/GameInfo.dart';
import 'package:allbinary/org/allbinary/game/score/HighScore.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoreNamePersistanceSingleton.dart';
import 'package:allbinary/org/allbinary/game/score/HighScores.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresFactoryInterface.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresHelperBaseInterface.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresResultsListener.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/MyCanvas.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class HighScoreUtil implements HighScoresResultsListener {
    static final Command SUBMIT_TEXTBOX_COMMAND = Command.with4("Submit", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late HighScoresFactoryInterface highScoresFactoryInterface;
    late List<HighScores?> highScoresArray;
    late HighScore highScore;
    late AbeClientInformationInterface abeClientInformation;
    late GameInfo gameInfo;
    late HighScoresHelperBaseInterface highScoresHelper;
    bool firstTime = false;

    // Java field initializers run after the base constructor
    void initFieldsHighScoreUtil() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    
    
    
    
    this.firstTime = true;
    }
    

    HighScoreUtil(HighScoresFactoryInterface highScoresFactoryInterface, HighScoresHelperBaseInterface highScoresHelper, AbeClientInformationInterface abeClientInformation, GameInfo gameInfo, CommandListener cmdListener, String name, HighScore highScore) {
        this.initFieldsHighScoreUtil();
        this.highScoresFactoryInterface = highScoresFactoryInterface;
        this.highScoresHelper = highScoresHelper;
        this.highScoresArray = this.highScoresHelper.getHighScoresArray();
        this.highScore = highScore;
        this.abeClientInformation = abeClientInformation;
        this.gameInfo = gameInfo;
    }
    

    @override
    void setHighScoresArray(List<HighScores?> highScoresArray) {
        this.highScoresArray = highScoresArray;
        this.firstTime = false;
        this.saveHighScore();
    }
    

    void update(String name) {
        HighScoreNamePersistanceSingleton.getInstance().save(this.abeClientInformation, this.gameInfo, name);
        this.highScore.setName(name);
    }
    

    void saveHighScore() {
        this.logUtil.putF(StringMaker().append(this.commonStrings.START).append(StringUtil.getInstance().toString1(this.highScore)).toString(), this, "saveHighScore");
        final int size = this.highScoresArray.length;
        if (this.firstTime && size == 0) {
            this.logUtil.putF("Games canvas did not give us any HighScores", this, "saveHighScore");
            this.highScoresFactoryInterface.fetchHighScores(this.gameInfo, this);
            return;
        }
        late HighScores highScores;
        late String highScoresAsString;
        for (int index = 0; index < size; index++) {
            highScores = this.highScoresArray[index]!;
            highScores.addHighScore(this.highScore);
            highScoresAsString = highScores.toString();
            this.logUtil.putF(StringMaker().append("Added/Adding Score: ").append(highScoresAsString).toString(), this, "saveHighScore");
        }
        this.highScoresHelper.setHighScoresArray(this.highScoresArray);
    }
    

    void submit(MyCanvas myCanvas) {
        final CommandListener commandListener = myCanvas.getCustomCommandListener();
        commandListener.commandAction(HighScoreUtil.SUBMIT_TEXTBOX_COMMAND, myCanvas);
    }
}

