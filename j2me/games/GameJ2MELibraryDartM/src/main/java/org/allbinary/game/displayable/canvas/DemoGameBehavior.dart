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
import 'package:allbinary/org/allbinary/game/GameTypeFactory.dart';
import 'package:allbinary/org/allbinary/graphics/paint/NullPaintable.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.dart';

class DemoGameBehavior {
    static final DemoGameBehavior instance = DemoGameBehavior();
    late LogUtil logUtil;

    // Java field initializers run after the base constructor
    void initFieldsDemoGameBehavior() {
    this.logUtil = LogUtil.getInstance();
    }

    DemoGameBehavior() {
        this.initFieldsDemoGameBehavior();
    }
    

    static DemoGameBehavior getInstance() {
        return DemoGameBehavior.instance;
    }
    

    void init() {
    }
    

    void pause(AllBinaryGameCanvas allBinaryGameCanvas) {
    }
    

    void unPause(AllBinaryGameCanvas allBinaryGameCanvas) {
    }
    

    void updateTouch(AllBinaryGameCanvas allBinaryGameCanvas) {
    }
    

    void updateScreenButtonPaintable(AllBinaryGameCanvas allBinaryGameCanvas) {
        allBinaryGameCanvas.setTouchPaintableP(NullPaintable.getInstance());
    }
    

    void setGameState(AllBinaryGameCanvas allBinaryGameCanvas) {
    }
    

    void removeAllGameKeyInputListeners(AllBinaryGameCanvas allBinaryGameCanvas) {
    }
    

    void updateEndGameProcessor(AllBinaryGameCanvas allBinaryGameCanvas) {
    }
    

    void buildGame(AllBinaryGameCanvas allBinaryGameCanvas) {
    }
    

    void run(AllBinaryGameCanvas allBinaryGameCanvas) {
        final CommonStrings commonStrings = CommonStrings.getInstance();
        this.logUtil.putF(GameTypeFactory.getInstance().BOT.toString(), this, commonStrings.RUN);
    }
    

    void setHighScore(AbeClientInformationInterface abeClientInformation, AllBinaryGameCanvas allBinaryGameCanvas, String name, int score, bool autoSubmit, bool isLast) {
    }
}

