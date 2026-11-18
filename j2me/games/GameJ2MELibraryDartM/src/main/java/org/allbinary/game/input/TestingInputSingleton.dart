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
// package org.allbinary.game.input

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEvent.dart';
import 'package:allbinary/org/allbinary/game/layer/AllBinaryGameLayer.dart';
import 'package:allbinary/org/allbinary/graphics/RectangleFactory.dart';
import 'package:allbinary/org/allbinary/graphics/paint/NullPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/PaintableInterface.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/view/ViewPosition.dart';
import 'package:allbinary/org/allbinary/game/input/GameInputInterface.dart';
import 'package:allbinary/org/allbinary/game/input/GameInputProcessor.dart';
import 'package:allbinary/org/allbinary/game/input/InputFactory.dart';
import 'package:allbinary/org/allbinary/game/input/GameInputProcessorUtil.dart';
import 'package:allbinary/org/allbinary/game/input/TestInputInterface.dart';

class TestingInputSingleton extends AllBinaryGameLayer implements GameInputInterface {
    static final TestingInputSingleton instance = TestingInputSingleton();
    late List<GameInputProcessor?> inputProcessorArray;
    late PaintableInterface testInputPaintable;

    // Java field initializers run after the base constructor
    void initFieldsTestingInputSingleton() {
    this.inputProcessorArray = List<GameInputProcessor?>.filled(InputFactory.getInstance().MAX, null);
    this.testInputPaintable = NullPaintable.getInstance();
    }
    

    static TestingInputSingleton getInstance() {
        return TestingInputSingleton.instance;
    }
    

    TestingInputSingleton() : super(StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPosition.getInstanceD()) {
        this.initFieldsTestingInputSingleton();
        
        GameInputProcessorUtil.init(this.inputProcessorArray);
    }
    

    @override
    void initInputProcessors() {
    }
    

    void initInputProcessorsForTestInput(TestInputInterface aTestInputInterface) {
        final TestInputInterface testInputInterface = aTestInputInterface;
        this.testInputPaintable = testInputInterface;
        this.inputProcessorArray[Canvas.UP] = GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            void processEvent(AllBinaryLayerManager allbinaryLayerManager, GameKeyEvent gameKeyEvent) {
                testInputInterface.up();
            } */;
        this.inputProcessorArray[Canvas.DOWN] = GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            void processEvent(AllBinaryLayerManager allbinaryLayerManager, GameKeyEvent gameKeyEvent) {
                testInputInterface.down();
            } */;
        this.inputProcessorArray[Canvas.LEFT] = GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            void processEvent(AllBinaryLayerManager allbinaryLayerManager, GameKeyEvent gameKeyEvent) {
                testInputInterface.left();
            } */;
        this.inputProcessorArray[Canvas.RIGHT] = GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            void processEvent(AllBinaryLayerManager allbinaryLayerManager, GameKeyEvent gameKeyEvent) {
                testInputInterface.right();
            } */;
        this.inputProcessorArray[Canvas.KEY_NUM7] = GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            void processEvent(AllBinaryLayerManager allbinaryLayerManager, GameKeyEvent gameKeyEvent) {
                testInputInterface.strafeLeft();
            } */;
        this.inputProcessorArray[Canvas.KEY_NUM9] = GameInputProcessor() /* Java anonymous class body: implement it as a named subclass
            

            void processEvent(AllBinaryLayerManager allbinaryLayerManager, GameKeyEvent gameKeyEvent) {
                testInputInterface.strafeRight();
            } */;
        GameInputProcessorUtil.init(this.inputProcessorArray);
    }
    

    void processInputList(AllBinaryLayerManager allbinaryLayerManager, BasicArrayList list) {
        int key = 0;
        late GameKeyEvent gameKeyEvent;
        final int size = list.size();
        for (int index = 0; index < size; index++) {
            gameKeyEvent = ((list.objectArray[index]! as GameKeyEvent));
            key = gameKeyEvent.getKey();
            this.inputProcessorArray[key]!.processEvent(allbinaryLayerManager, GameKeyEvent.NONE);
        }
    }
    

    @override
    void processInput(AllBinaryLayerManager allbinaryLayerManager) {
        this.processInputList(allbinaryLayerManager, this.getGameKeyEventList());
        this.getGameKeyEventList().clear();
    }
    

    @override
    void paint(Graphics graphics) {
        this.testInputPaintable.paint(graphics);
    }
    

    @override
    bool implmentsGameInputInterface() {
        return true;
    }
}

