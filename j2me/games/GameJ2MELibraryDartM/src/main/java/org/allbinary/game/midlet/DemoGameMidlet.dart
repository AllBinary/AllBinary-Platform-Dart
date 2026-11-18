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
// package org.allbinary.game.midlet

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.dart';
import 'package:allbinary/org/allbinary/game/layer/AllBinaryGameLayerManager.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/ClientInformationFactory.dart';
import 'package:allbinary/org/allbinary/thread/PrimaryThreadPool.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/NullGameCanvasRunnable.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/game/midlet/GameMidlet.dart';
import 'package:allbinary/org/allbinary/game/midlet/DemoRunnable.dart';
import 'package:allbinary/org/allbinary/game/midlet/CreateGameRunnable.dart';

class DemoGameMidlet extends GameMidlet {
    

    DemoGameMidlet(ClientInformationFactory clientInformationFactory) : super(clientInformationFactory) {
        
    }
    

    bool isContinue() {
        ABHashtable hashtable = this.getStartStateHashtable();
        if (hashtable != null && hashtable.size() > 0) {
            return true;
        } else {
            return false;
        }
    }
    

    int getHighestLevel() {
        return 1;
    }
    

    GameCanvasRunnableInterface createDemoGameCanvasRunnableInterface() {
        this.logUtil.putF(this.commonStrings.NOT_IMPLEMENTED, this, this.commonStrings.CREATE);
        return NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE;
    }
    

    GameCanvasRunnableInterface createGameCanvasRunnable(AllBinaryGameLayerManager allBinaryGameLayerManager) {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    GameCanvasRunnableInterface createGameCanvasRunnableInterface() {
        return this.createGameCanvasRunnable(this.createGameLayerManager());
    }
    

    void demoSetup() {
    }
    

    void postDemoSetup() {
    }
    

    @override
    void setDemo() {
        this.logUtil.putF(this.commonStrings.START, this, "setDemo");
        final ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        progressCanvas.start();
        PrimaryThreadPool.getInstance().runTask(DemoRunnable(this));
    }
    

    @override
    void createGame() {
        final String CREATE_GAME = "createGame";
        this.logUtil.putF(this.commonStrings.START, this, CREATE_GAME);
        final ProgressCanvas progressCanvas = ProgressCanvasFactory.getInstance();
        progressCanvas.start();
        ABHashtable hashtable = this.getStartStateHashtable();
        this.setStartStateHashtable(StdUtil.getInstance().NULL_TABLE);
        PrimaryThreadPool.getInstance().runTask(CreateGameRunnable(this, hashtable));
        this.logUtil.putF(this.commonStrings.END, this, CREATE_GAME);
    }
    

    bool isReady() {
        return true;
    }
}

