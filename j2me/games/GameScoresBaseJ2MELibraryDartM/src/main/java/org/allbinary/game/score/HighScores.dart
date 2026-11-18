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
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresInterface.dart';
import 'package:allbinary/org/allbinary/game/score/HighScore.dart';

class HighScores implements HighScoresInterface {
    late BasicArrayList orderedHighScoresList;
    late String name;
    late String heading;
    late String columnOneHeading;
    late String columnTwoHeading;

    // Java field initializers run after the base constructor
    void initFieldsHighScores() {
    this.orderedHighScoresList = BasicArrayListD();
    
    
    this.columnOneHeading = "Name";
    
    }
    

    HighScores(String name, String heading, String columnTwoHeading) {
        this.initFieldsHighScores();
        this.name = name;
        this.heading = heading;
        this.columnTwoHeading = columnTwoHeading;
    }
    

    void setList(BasicArrayList orderedHighScoresList) {
        this.orderedHighScoresList = orderedHighScoresList;
    }
    

    @override
    BasicArrayList getList() {
        return this.orderedHighScoresList;
    }
    

    String getName() {
        return this.name;
    }
    

    @override
    int getTotal() {
        return this.getList().size();
    }
    

    @override
    void addHighScore(HighScore newHighScore) {
        this.orderedHighScoresList.add(newHighScore);
    }
    

    String getHeading() {
        return this.heading;
    }
    

    String getColumnOneHeading() {
        return this.columnOneHeading;
    }
    

    String getColumnTwoHeading() {
        return this.columnTwoHeading;
    }
    

    @override
    bool isBestScore(HighScore newHighScore) {
        return false;
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append("HighScores: ");
        stringBuffer.append(this.heading);
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(CommonLabels.getInstance().TOTAL_LABEL);
        stringBuffer.appendint(this.orderedHighScoresList.size());
        return stringBuffer.toString();
    }
}

