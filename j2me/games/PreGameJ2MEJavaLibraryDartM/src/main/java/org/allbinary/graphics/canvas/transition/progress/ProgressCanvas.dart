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
// package org.allbinary.graphics.canvas.transition.progress

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/javax/microedition/lcdui/NullCanvas.dart';
import 'package:allbinary/javax/microedition/lcdui/NullCommandListener.dart';
import 'package:allbinary/org/allbinary/canvas/Processor.dart';
import 'package:allbinary/org/allbinary/canvas/RunnableCanvas.dart';
import 'package:allbinary/org/allbinary/game/commands/GameCommandsFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/CanvasStrings.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABCustomGaugeItem.dart';
import 'package:allbinary/org/allbinary/graphics/paint/NullPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/PaintableInterface.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/PreLogUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/midlet/AllBinaryMidlet.dart';
import 'package:allbinary/org/allbinary/thread/PathFindingThreadPool.dart';
import 'package:allbinary/org/allbinary/thread/ThreadPool.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/canvas/transition/progress/ProgressEndListener.dart';

class ProgressCanvas extends RunnableCanvas implements PaintableInterface, UpdateMyFontInterface {
    bool hasPainted = false;
    late BasicColor backgroundBasicColor;
    late Paintable GAUGE_PAINTABLE;
    double maxValue = 0.0;
    late ABCustomGaugeItem gauge;
    late String TEXT;
    late MyFontProcessor updateMyFontProcessor;
    late MyFontProcessor myFontProcessor;
    late AllBinaryMidlet allbinaryMidlet;
    double value = 0.0;
    late String text;
    bool background = false;
    late PaintableInterface paintable;
    bool inProgress = false;
    late Processor IN_GAME_PROCESSOR;
    late Processor inGameProcessor;
    late ProgressEndListener progressEndListener;
    late String backgroundLabel;
    late String START_BACKGROUND;
    late String ADD_PORTION;
    late String ADD_EARLY_PORTION;

    // Java field initializers run after the base constructor
    void initFieldsProgressCanvas() {
    this.hasPainted = false;
    
    this.GAUGE_PAINTABLE = ProgressPaintable(this);
    this.maxValue = 100.0;
    
    this.TEXT = this.commonStrings.LOADING;
    this.updateMyFontProcessor = UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.allbinaryMidlet = AllBinaryMidlet.getNullInstance();
    this.value = 0.0;
    this.text = this.TEXT;
    this.background = true;
    this.paintable = this.GAUGE_PAINTABLE;
    this.inProgress = false;
    this.IN_GAME_PROCESSOR = Processor() /* Java anonymous class body: implement it as a named subclass
        this.pathFindingThreadPool = PathFindingThreadPool.getInstance();
        

        void process() {
            this.pathFindingThreadPool.runAPriorityTask();
        } */;
    this.inGameProcessor = Processor.getInstance();
    this.progressEndListener = ProgressEndListener.instance;
    this.backgroundLabel = "Background AI Game Loading...";
    this.START_BACKGROUND = "startBackground";
    this.ADD_PORTION = "addPortion";
    this.ADD_EARLY_PORTION = "addEarlyPortion";
    }
    

    ProgressCanvas(String title, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) : super(NullCommandListener.NULL_COMMAND_LISTENER, CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST, false) {
        this.initFieldsProgressCanvas();
        
        this.backgroundBasicColor = backgroundBasicColor;
        this.gauge = ABCustomGaugeItem(StringUtil.getInstance().EMPTY_STRING, JMath.toInt32(this.maxValue), 0, backgroundBasicColor, foregroundBasicColor);
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        this.gauge.setHeight(font.getHeight() + 2);
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    void init(AllBinaryMidlet gameMidlet) {
        this.allbinaryMidlet = gameMidlet;
    }
    

    void update(Graphics graphics) {
    }
    

    @override
    void initCommands(CommandListener cmdListener) {
    }
    

    double getMaxValue() {
        return this.maxValue;
    }
    

    void start() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.START_METHOD_NAME);
        this.setBackground(true);
        this.gauge.setHeight(30);
        this.gauge.setLabel(this.commonStrings.PLEASE_WAIT);
        this.setText(this.TEXT);
        this.setValue(0);
        this.inGameProcessor = Processor.getInstance();
        this.paintable = this.GAUGE_PAINTABLE;
        this.inProgress = true;
    }
    

    void startBackground(bool background) {
        this.logUtil.putF(this.commonStrings.START, this, this.START_BACKGROUND);
        this.setBackground(background);
        this.myFontProcessor = this.updateMyFontProcessor;
        this.gauge.setLabel(this.backgroundLabel);
        this.setText(this.TEXT);
        this.setValue(0);
        this.inGameProcessor = Processor.getInstance();
        this.paintable = this.GAUGE_PAINTABLE;
    }
    

    void endActual() {
        this.allbinaryMidlet.commandAction(GameCommandsFactory.getInstance().SHOW_GAME_CANVAS, NullCanvas.NULL_CANVAS);
        this.inProgress = false;
        this.inGame();
    }
    

    void inGame() {
        this.progressEndListener.onEndEvent();
        this.inGameProcessor = this.IN_GAME_PROCESSOR;
    }
    

    void end() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.END_METHOD_NAME);
        this.gauge.setValue(this.getMaxValue());
        this.endActual();
        this.paintable = NullPaintable.getInstance();
    }
    

    void endFromInitialLazyLoadingComplete() {
        this.progressEndListener.onEndEvent();
        this.gauge.setValue(this.getMaxValue());
        this.inGameProcessor = this.IN_GAME_PROCESSOR;
    }
    

    bool isInGame() {
        if (identical(this.inGameProcessor, this.IN_GAME_PROCESSOR)) {
            return true;
        }
        return false;
    }
    

    void endIfPaintedSinceStart() {
    }
    

    void addEarlyPortion(int value, String text, int index) {
        this.setText(StringMaker().append(text).append(SmallIntegerSingletonFactory.getInstance().getAt(index).toString()).toString());
        this.gauge.setValue(this.gauge.getValue() + this.getMaxValue() / (value).toDouble());
    }
    

    void addPortion(int value, String text, int index) {
        this.setText(StringMaker().append(text).append(SmallIntegerSingletonFactory.getInstance().getAt(index).toString()).toString());
        PreLogUtil.put(this.text, this, this.ADD_PORTION);
        this.gauge.setValue(this.gauge.getValue() + this.getMaxValue() / (value).toDouble());
    }
    

    void addNormalPortion(int value, String text) {
        if (this.text != text) {
            PreLogUtil.put(text, this, this.ADD_PORTION);
        }
        this.setText(text);
        this.gauge.setValue(this.gauge.getValue() + this.getMaxValue() / (value).toDouble());
    }
    

    void setValue(int value) {
        this.value = (value).toDouble();
        this.gauge.setValue((value).toDouble());
    }
    

    @override
    void paint(Graphics graphics) {
        this.paintable.paint(graphics);
    }
    

    void paint2(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        graphics.setColor(this.backgroundBasicColor.intValue());
        graphics.fillRect(0, 0, this.displayInfo.getLastWidth(), this.displayInfo.getLastHeight());
        this.gauge.paintXY(graphics, 0, 0);
        this.hasPainted = true;
    }
    

    @override
    void paintThreed(Graphics graphics) {
    }
    

    double getValue() {
        return this.value;
    }
    

    void setText(String text) {
        this.text = text;
    }
    

    String getText() {
        return this.text;
    }
    

    void setBackground(bool background) {
        this.background = background;
    }
    

    bool isBackground() {
        return this.background;
    }
}

