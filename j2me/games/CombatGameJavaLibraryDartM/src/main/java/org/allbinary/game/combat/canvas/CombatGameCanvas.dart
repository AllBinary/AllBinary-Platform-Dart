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
// package org.allbinary.game.combat.canvas

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/org/allbinary/game/combat/destroy/DestroyedLayerProcessor.dart';
import 'package:allbinary/org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool.dart';
import 'package:allbinary/org/allbinary/game/combat/destroy/event/DestroyedEventHandler.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/Features.dart';
import 'package:allbinary/org/allbinary/game/configuration/feature/GameFeatureFactory.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.dart';
import 'package:allbinary/org/allbinary/game/init/BasicBuildGameInitializerFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/AllBinaryGameLayerManager.dart';
import 'package:allbinary/org/allbinary/game/layer/drop/DropLayerProcessor.dart';
import 'package:allbinary/org/allbinary/game/layer/identification/GroupLayerManagerListener.dart';
import 'package:allbinary/org/allbinary/game/score/HighScoresFactoryInterface.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.dart';
import 'package:allbinary/org/allbinary/layer/BasicLayerProcessor.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';

class CombatGameCanvas extends AllBinaryGameCanvas {
    static List<BasicLayerProcessor?> basicLayerProcessor = List<BasicLayerProcessor?>.filled(0, null);
    

    CombatGameCanvas(CommandListener cmdListener, AllBinaryGameLayerManager gameLayerManager, HighScoresFactoryInterface highScoresFactoryInterface, BasicBuildGameInitializerFactory gameInitializationInterfaceFactoryInterface, bool buffered) : super(cmdListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered) {
        
    }
    

    void CombatGameCanvas_init() {
        DestroyEventCircularStaticPool.getInstance().init(this);
        ProgressCanvasFactory.getInstance().addNormalPortion(50, "Destroy Events");
    }
    

    @override
    void initApp(AbeClientInformationInterface abeClientInformation) {
        this.CombatGameCanvas_init();
        super.initApp(abeClientInformation);
    }
    

    void initConfigurablePortion(int portion) {
        DestroyedLayerProcessor.init();
        ProgressCanvasFactory.getInstance().addNormalPortion(portion, "Basic Processors");
        final Features features = Features.getInstance();
        final GameFeatureFactory gameFeatureFactory = GameFeatureFactory.getInstance();
        if (features.isFeature(gameFeatureFactory.DROPPED_ITEMS) && features.isFeature(gameFeatureFactory.DROPPED_ITEMS_FROM_DEATH)) {
            CombatGameCanvas.basicLayerProcessor = List<BasicLayerProcessor?>.filled(2, null);
            CombatGameCanvas.basicLayerProcessor[0] = DestroyedLayerProcessor.getInstance();
            CombatGameCanvas.basicLayerProcessor[1] = DropLayerProcessor.getInstance();
        } else {
            CombatGameCanvas.basicLayerProcessor = List<BasicLayerProcessor?>.filled(1, null);
            CombatGameCanvas.basicLayerProcessor[0] = DestroyedLayerProcessor.getInstance();
        }
    }
    

    @override
    void processPlayingGame() {
        super.processPlayingGame();
        for (int index = CombatGameCanvas.basicLayerProcessor.length; --index >= 0; ) {
            CombatGameCanvas.basicLayerProcessor[index]!.process(this.gameLayerManager);
        }
    }
    

    @override
    void cleanupGame() {
        super.cleanupGame();
        for (int index = CombatGameCanvas.basicLayerProcessor.length; --index >= 0; ) {
            CombatGameCanvas.basicLayerProcessor[index]!.getList().clear();
        }
        GroupLayerManagerListener.getInstance().clear();
        GroupLayerManagerListener.getInstance().log();
        DestroyedEventHandler.getInstance().removeAllListeners();
        this.cleanupManager();
    }
    

    void cleanupManager() {
        this.gameLayerManager.cleanup();
    }
}

