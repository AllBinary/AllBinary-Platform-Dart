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
// package org.allbinary.game.displayable.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/javax/microedition/lcdui/NullCommandListener.dart';
import 'package:allbinary/org/allbinary/game/init/BasicBuildGameInitializerFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/AllBinaryGameLayerManager.dart';
import 'package:allbinary/org/allbinary/game/score/NoHighScoresFactory.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.dart';

class NullGameCanvas extends AllBinaryGameCanvas {
    static Object instance = NullUtil.getInstance().NULL_OBJECT;
    static const String NO_GAME = "No Background Game";
    static const int TYPE = 1;
    bool runningNull = false;

    // Java field initializers run after the base constructor
    void initFieldsNullGameCanvas() {
    this.runningNull = true;
    }
    

    static NullGameCanvas createNull() {
        try {
            return NullGameCanvas(AllBinaryGameLayerManager.getNullInstance());
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            LogUtil.getInstance().put(CommonStrings.getInstance().EXCEPTION, "NullGameCanvas", CommonStrings.getInstance().GET_INSTANCE, e);
            throw JException('RuntimeException', '');
            }
        }
    }
    

    static NullGameCanvas getInstance() {
        if (NullGameCanvas.instance == NullUtil.getInstance().NULL_OBJECT) {
            NullGameCanvas.instance = NullGameCanvas.createNull();
        }
        return (NullGameCanvas.instance as NullGameCanvas);
    }
    

    static NullGameCanvas createCanvas(AllBinaryGameLayerManager gameLayerManager) {
        final NullGameCanvas nullGameCanvas = NullGameCanvas(gameLayerManager);
        nullGameCanvas.setInitialized(true);
        nullGameCanvas.setTitle(NullGameCanvas.NO_GAME);
        return nullGameCanvas;
    }
    

    NullGameCanvas(AllBinaryGameLayerManager gameLayerManager) : super(NullCommandListener.NULL_COMMAND_LISTENER, gameLayerManager, NoHighScoresFactory.getInstance(), BasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY, false) {
        this.initFieldsNullGameCanvas();
        
        super.setWait(1200);
    }
    

    @override
    bool isGameOver() {
        return false;
    }
    

    @override
    void setRunning(bool running) {
        this.runningNull = running;
    }
    

    @override
    bool isRunning() {
        return this.runningNull;
    }
    

    @override
    void pause() {
        this.setPaused(true);
    }
    

    @override
    void unPause() {
        this.setPaused(false);
    }
    

    @override
    void initCommands(CommandListener cmdListener) {
        this.removeAllCommands();
        this.setCommandListener(cmdListener);
    }
    

    @override
    void buildGameInit(bool isProgress) {
    }
    

    @override
    void draw(Graphics graphics) {
    }
    

    @override
    void run() {
        try {
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN);
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e);
            }
        }
    }
    

    @override
    int getType() {
        return NullGameCanvas.TYPE;
    }
}

