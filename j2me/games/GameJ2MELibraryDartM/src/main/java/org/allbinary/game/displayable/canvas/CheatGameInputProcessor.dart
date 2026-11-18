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
import 'package:allbinary/org/allbinary/game/input/GameKeyFactory.dart';
import 'package:allbinary/org/allbinary/game/input/PlayerGameInput.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEventUtil.dart';
import 'package:allbinary/org/allbinary/game/layer/AllBinaryGameLayerManager.dart';
import 'package:allbinary/org/allbinary/game/layer/special/SpecialGameInputFactory.dart';
import 'package:allbinary/org/allbinary/game/layer/special/SpecialGameInputInterface.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.dart';

class CheatGameInputProcessor extends PlayerGameInput {
    static SpecialGameInputInterface inputProcessor = SpecialGameInputFactory.NO_SPECIAL_GAME_INPUT;
    late String PROCESS_GAME;
    late AllBinaryGameCanvas gameCanvas;
    late GameKeyFactory gameKeyFactory;

    // Java field initializers run after the base constructor
    void initFieldsCheatGameInputProcessor() {
    this.PROCESS_GAME = "processGame";
    
    this.gameKeyFactory = GameKeyFactory.getInstance();
    }
    

    CheatGameInputProcessor(AllBinaryGameCanvas gameCanvas) : super(BasicArrayListD(), BasicArrayListD(), -1) {
        this.initFieldsCheatGameInputProcessor();
        
        this.gameCanvas = gameCanvas;
    }
    

    @override
    void update() {
        try {
            final AllBinaryGameLayerManager gameLayerManager = this.gameCanvas.getLayerManager();
            final BasicArrayList list = this.getGameKeyEventList();
            final int size = list.size();
            for (int index = 0; index < size; index++) {
                final Object anyType = list.objectArray[index]!;
                final int key = GameKeyEventUtil.getKey(anyType);
                if (key == this.gameKeyFactory.LEVEL_DOWN.getId()) {
                    CheatGameInputProcessor.inputProcessor.strafeLeft();
                    break;
                } else if (key == this.gameKeyFactory.LEVEL_UP.getId()) {
                    CheatGameInputProcessor.inputProcessor.strafeRight();
                    break;
                }
                if (key == this.gameKeyFactory.LEFT.getId()) {
                    CheatGameInputProcessor.inputProcessor.left();
                    break;
                } else if (key == this.gameKeyFactory.RIGHT.getId()) {
                    CheatGameInputProcessor.inputProcessor.right();
                    break;
                } else if (key == this.gameKeyFactory.UP.getId()) {
                    CheatGameInputProcessor.inputProcessor.up();
                    break;
                } else if (key == this.gameKeyFactory.DOWN.getId()) {
                    CheatGameInputProcessor.inputProcessor.down();
                    break;
                } else if (key == this.gameKeyFactory.KEY_NUM1.getId()) {
                    CheatGameInputProcessor.inputProcessor.special1(gameLayerManager, GameKeyEvent.NONE);
                    break;
                } else if (key == this.gameKeyFactory.KEY_NUM3.getId()) {
                    CheatGameInputProcessor.inputProcessor.special2(gameLayerManager, GameKeyEvent.NONE);
                    break;
                }
            }
            list.clear();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e);
            }
        }
    }
}

