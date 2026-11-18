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
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/game/score/ScoreableInterface.dart';

class Scoreable implements ScoreableInterface {
    static int ID = SmallIntegerSingletonFactory.getInstance().getAt(3);
    int points = 0;

    // Java field initializers run after the base constructor
    void initFieldsScoreable() {
    
    }
    

    Scoreable(int points) {
        this.initFieldsScoreable();
        this.points = points;
    }
    

    @override
    void addPoints(int points) {
        this.points += points;
    }
    

    @override
    void removePoints(int points) {
        this.points -= points;
    }
    

    void setPoints(int points) {
        this.points = points;
    }
    

    @override
    int getPoints() {
        return this.points;
    }
}

