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
// package org.allbinary.game.layer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/GameInfo.dart';
import 'package:allbinary/org/allbinary/game/input/NullPlayerGameInputComposite.dart';
import 'package:allbinary/org/allbinary/game/input/PlayerGameInputCompositeInterface.dart';
import 'package:allbinary/org/allbinary/graphics/ItemColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/layer/LayerProcessor.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';

class AllBinaryGameLayerManager extends AllBinaryLayerManager {
    static Object NULL_ALLBINARY_LAYER_MANAGER = NullUtil.getInstance().NULL_OBJECT;
    static final int ID = SmallIntegerSingletonFactory.getInstance().getAt(22);
    late BasicColor backgroundBasicColor;
    late BasicColor foregroundBasicColor;
    late GameInfo gameInfo;
    late PlayerGameInputCompositeInterface playerGameInputCompositeInterface;

    // Java field initializers run after the base constructor
    void initFieldsAllBinaryGameLayerManager() {
    
    
    
    this.playerGameInputCompositeInterface = NullPlayerGameInputComposite.NULL_PLAYER_GAME_INPUT_COMPOSITE;
    }
    

    static AllBinaryGameLayerManager getNullInstance() {
        if (AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER == NullUtil.getInstance().NULL_OBJECT) {
            AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER = AllBinaryGameLayerManager(BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE, GameInfo.NONE);
        }
        return (AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER as AllBinaryGameLayerManager);
    }
    

    AllBinaryGameLayerManager(BasicColor backgroundBasicColor, BasicColor foregroundBasicColor, GameInfo gameInfo) {
        this.initFieldsAllBinaryGameLayerManager();
        this.backgroundBasicColor = backgroundBasicColor;
        this.foregroundBasicColor = foregroundBasicColor;
        ItemColorFactory itemColorFactory = ItemColorFactory.getInstance();
        itemColorFactory.INVERT_PAINT = this.backgroundBasicColor.intValue();
        itemColorFactory.PAINT = this.foregroundBasicColor.intValue();
        this.gameInfo = gameInfo;
    }
    

    AllBinaryLayerManager getLayerManager() {
        return this;
    }
    

    void init() {
    }
    

    BasicColor getBackgroundBasicColor() {
        return this.backgroundBasicColor;
    }
    

    void setBackgroundBasicColor(BasicColor backgroundBasicColor) {
        this.backgroundBasicColor = backgroundBasicColor;
        ItemColorFactory.getInstance().INVERT_PAINT = this.backgroundBasicColor.intValue();
    }
    

    BasicColor getForegroundBasicColor() {
        return this.foregroundBasicColor;
    }
    

    void setForegroundBasicColor(BasicColor foregroundBasicColor) {
        this.foregroundBasicColor = foregroundBasicColor;
        ItemColorFactory.getInstance().PAINT = this.foregroundBasicColor.intValue();
    }
    

    GameInfo getGameInfo() {
        return this.gameInfo;
    }
    

    void setGameInfo(GameInfo gameInfo) {
        this.gameInfo = gameInfo;
    }
    

    void setLayerProcessorList(BasicArrayList list) {
        final List<LayerProcessor?> layerProcessorInterfaceArray = List<LayerProcessor?>.filled(list.size(), null);
        int size = layerProcessorInterfaceArray.length;
        for (int index = 0; index < size; index++) {
            layerProcessorInterfaceArray[index] = (list.objectArray[index]! as LayerProcessor);
        }
        this.setLayerProcessorArray(layerProcessorInterfaceArray);
    }
    

    void setPlayerGameInputCompositeInterface(PlayerGameInputCompositeInterface playerGameInputCompositeInterface) {
        this.playerGameInputCompositeInterface = playerGameInputCompositeInterface;
    }
    

    PlayerGameInputCompositeInterface getPlayerGameInputCompositeInterface() {
        return this.playerGameInputCompositeInterface;
    }
}

