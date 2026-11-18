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
// package org.allbinary.game.displayable.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/business/advertisement/GameAdStateFactory.dart';
import 'package:allbinary/org/allbinary/game/GameAdState.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/CurrentDisplayableFactory.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLFeatureFactory.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/DemoGameBehavior.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.dart';

class BaseGameBehavior extends DemoGameBehavior {
    static final BaseGameBehavior instanceC = BaseGameBehavior();
    

    static DemoGameBehavior getInstance() {
        return BaseGameBehavior.instanceC;
    }
    

    @override
    void init() {
        final GameAdState gameAdState = GameAdStateFactory.getInstance().getCurrentInstance();
        gameAdState.playingAdState();
    }
    

    @override
    void pause(AllBinaryGameCanvas allBinaryGameCanvas) {
        final Features features = Features.getInstance();
        if (features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL_AS_GAME_THREAD)) {
            final CurrentDisplayableFactory currentDisplayableFactory = CurrentDisplayableFactory.getInstance();
            currentDisplayableFactory.setRunnable(allBinaryGameCanvas.gamePauseRunnable);
        }
    }
    

    @override
    void unPause(AllBinaryGameCanvas allBinaryGameCanvas) {
        if (Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL_AS_GAME_THREAD)) {
            final CurrentDisplayableFactory currentDisplayableFactory = CurrentDisplayableFactory.getInstance();
            currentDisplayableFactory.setRunnable(allBinaryGameCanvas.gameRunnable);
            currentDisplayableFactory.setDisplayable(allBinaryGameCanvas);
        }
    }
    

    @override
    void updateTouch(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.updateTouch2();
    }
    

    @override
    void updateScreenButtonPaintable(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.updateScreenButtonPaintable2();
    }
    

    @override
    void setGameState(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.updateGameState();
    }
    

    @override
    void removeAllGameKeyInputListeners(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.removeAllGameKeyInputListeners2();
    }
    

    @override
    void updateEndGameProcessor(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.updateEndGameProcessor2();
    }
    

    @override
    void buildGame(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.buildGame2();
    }
    

    @override
    void run(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.run2();
    }
    

    @override
    void setHighScore(AbeClientInformationInterface abeClientInformation, AllBinaryGameCanvas allBinaryGameCanvas, String name, int score, bool autoSubmit, bool isLast) {
        allBinaryGameCanvas.setHighScore2(abeClientInformation, name, score, autoSubmit, isLast);
    }
}

