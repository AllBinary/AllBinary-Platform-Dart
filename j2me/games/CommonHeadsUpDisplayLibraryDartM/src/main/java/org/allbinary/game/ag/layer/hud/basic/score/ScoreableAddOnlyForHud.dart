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
// package org.allbinary.game.ag.layer.hud.basic.score

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/score/Scoreable.dart';
import 'package:allbinary/org/allbinary/game/ag/layer/hud/basic/score/ScoreHudWidget.dart';

class ScoreableAddOnlyForHud extends Scoreable {
    late ScoreHudWidget scoreHudWidget;

    // Java field initializers run after the base constructor
    void initFieldsScoreableAddOnlyForHud() {
    
    }
    

    ScoreableAddOnlyForHud(ScoreHudWidget scoreVectorGraphic) : super(0) {
        this.initFieldsScoreableAddOnlyForHud();
        
        this.scoreHudWidget = scoreVectorGraphic;
        this.getScoreHudWidget().set(0);
    }
    

    @override
    void removePoints(int points) {
    }
    

    @override
    void addPoints(int points) {
        super.addPoints(points);
        this.getScoreHudWidget().add(points);
    }
    

    ScoreHudWidget getScoreHudWidget() {
        return this.scoreHudWidget;
    }
}

