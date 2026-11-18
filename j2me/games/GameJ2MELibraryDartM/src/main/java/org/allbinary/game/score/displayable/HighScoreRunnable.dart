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
import 'package:allbinary/org/allbinary/J2MEUtil.dart';
import 'package:allbinary/org/allbinary/logic/ABSystemWrapper.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/thread/ARunnable.dart';
import 'package:allbinary/org/allbinary/game/score/displayable/HighScoresCanvas.dart';

class HighScoreRunnable extends ARunnable {
    late HighScoresCanvas highScoresCanvas;

    // Java field initializers run after the base constructor
    void initFieldsHighScoreRunnable() {
    
    }
    

    HighScoreRunnable(HighScoresCanvas highScoresCanvas) {
        this.initFieldsHighScoreRunnable();
        this.highScoresCanvas = highScoresCanvas;
    }
    

    @override
    void run() {
        final CommonStrings commonStrings = CommonStrings.getInstance();
        final LogUtil logUtil = LogUtil.getInstance();
        final HighScoresCanvas highScoresCanvas = this.highScoresCanvas;
        try {
            final bool isHTML = J2MEUtil.isHTML();
            if (!isHTML) {
                while (!highScoresCanvas.hasPainted) {
                }
                highScoresCanvas.hasPainted = false;
            }
            final StringMaker stringMaker = StringMaker();
            final ABSystemWrapper systemWrapper = ABSystemWrapper.getInstance();
            final int currentTimeMillis = systemWrapper.currentTimeMillis();
            logUtil.putF(stringMaker.append("HighScoresCanvas - Request repaint to be sure: ").appendlong(currentTimeMillis).toString(), this, commonStrings.RUN);
            highScoresCanvas.repaintBehavior.onChangeRepaint(highScoresCanvas);
            if (!isHTML) {
                while (!highScoresCanvas.hasPainted) {
                }
            }
            stringMaker.delete(0, stringMaker.length());
            logUtil.putF(stringMaker.append("HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: ").appendlong(currentTimeMillis).toString(), this, commonStrings.RUN);
            highScoresCanvas.executeUpdate();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.RUN, e);
            }
        }
    }
}

