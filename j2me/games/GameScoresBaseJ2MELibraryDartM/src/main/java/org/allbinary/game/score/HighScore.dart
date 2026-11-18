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
import 'package:allbinary/java/io/ByteArrayOutputStream.dart';
import 'package:allbinary/java/io/DataOutputStream.dart';
import 'package:allbinary/org/allbinary/game/GameInfo.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';

class HighScore {
    int id = 0;
    late String name;
    late GameInfo gameInfo;
    int score = 0;
    late String scoreString;

    // Java field initializers run after the base constructor
    void initFieldsHighScore() {
    
    
    
    
    
    }
    

    HighScore(int id, String name, GameInfo gameInfo, int score) {
        this.initFieldsHighScore();
        this.id = id;
        this.name = name;
        this.gameInfo = gameInfo;
        this.score = score;
        this.scoreString = jstr(this.score);
    }
    

    int getId() {
        return this.id;
    }
    

    String getName() {
        return this.name;
    }
    

    int getScore() {
        return this.score;
    }
    

    List<int> getAsBytes() {
        final ByteArrayOutputStream byteArrayOutputStream = ByteArrayOutputStream();
        final DataOutputStream outputStream = DataOutputStream(byteArrayOutputStream);
        outputStream.writeUTF(this.getName());
        outputStream.writeLong(this.getScore());
        return byteArrayOutputStream.toByteArray();
    }
    

    GameInfo getGameInfo() {
        return this.gameInfo;
    }
    

    String getScoreString() {
        return this.scoreString;
    }
    

    void setName(String name) {
        this.name = name;
    }
    

    @override
    String toString() {
        final CommonSeps commonSeps = CommonSeps.getInstance();
        return StringMaker().append(this.name).append(commonSeps.COLON).appendlong(this.score).append(commonSeps.FORWARD_SLASH).append(this.scoreString).toString();
    }
}

