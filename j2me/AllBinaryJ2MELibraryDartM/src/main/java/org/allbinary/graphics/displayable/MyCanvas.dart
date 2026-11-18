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
// package org.allbinary.graphics.displayable

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/javax/microedition/lcdui/Command.dart';
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/javax/microedition/lcdui/NullCommandListener.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/command/MyCommandInterface.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/command/MyCommandsFactory.dart';
import 'package:allbinary/org/allbinary/input/TouchJ2ME.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/media/audio/Sound.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/logic/StdUtil.dart';
import 'package:allbinary/org/allbinary/util/ABStack.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayableInterface.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/CanvasStrings.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';

class MyCanvas extends Canvas implements DisplayableInterface, MyCommandInterface {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late CanvasStrings canvasStrings;
    late StringUtil stringUtil;
    late DisplayInfoSingleton displayInfo;
    late String name;
    late BasicArrayList childNameList;
    late ABStack commandStack;
    late CommandListener commandListener;
    bool paused = false;
    late TouchJ2ME touchME;

    // Java field initializers run after the base constructor
    void initFieldsMyCanvas() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.canvasStrings = CanvasStrings.getInstance();
    this.stringUtil = StringUtil.getInstance();
    this.displayInfo = DisplayInfoSingleton.getInstance();
    
    
    
    this.commandListener = NullCommandListener.NULL_COMMAND_LISTENER;
    this.paused = false;
    this.touchME = TouchJ2ME();
    }
    

    MyCanvas(String name, BasicArrayList childNameList) {
        this.initFieldsMyCanvas();
        this.logUtil.putF(this.commonStrings.CONSTRUCTOR, this, this.commonStrings.CONSTRUCTOR);
        this.displayInfo.update(this, this.canvasStrings.CONSTRUCTOR);
        this.name = name;
        this.childNameList = childNameList;
        this.commandStack = StdUtil.getInstance().createStack();
    }
    

    @override
    int getWidth() {
        return super.getWidth();
    }
    

    @override
    int getHeight() {
        return super.getHeight();
    }
    

    @override
    void setFullScreenMode(bool mode) {
        super.setFullScreenMode(mode);
        this.displayInfo.update(this, this.canvasStrings.SET_FULL_SCREEN_MODE);
    }
    

    @override
    void sizeChanged(int w, int h) {
        this.displayInfo.update(this, this.canvasStrings.SIZE_CHANGED);
    }
    

    ABStack getCommandStack() {
        return this.commandStack;
    }
    

    bool isCommand(Command command) {
        return this.commandStack.contains(command);
    }
    

    @override
    void addCommand(Command command) {
        if (!this.commandStack.contains(command)) {
            this.commandStack.push(command);
            super.addCommand(command);
        }
    }
    

    @override
    void removeCommand(Command command) {
        this.commandStack.removeElement(command);
        super.removeCommand(command);
    }
    

    @override
    void removeAllCommands() {
        int size = this.commandStack.size();
        for (int index = 0; index < size; index++) {
            super.removeCommand((this.commandStack.pop() as Command));
        }
    }
    

    @override
    void setCommandListener(CommandListener l) {
        super.setCommandListener(l);
        this.commandListener = l;
    }
    

    CommandListener getCustomCommandListener() {
        return this.commandListener;
    }
    

    bool isPaused() {
        return this.paused;
    }
    

    void removePauseCommand() {
        this.removeCommand(MyCommandsFactory.getInstance().PAUSE_COMMAND);
    }
    

    void pause() {
        this.logUtil.putF(this.commonStrings.START, this, this.canvasStrings.PAUSE);
        this.removePauseCommand();
        this.addCommand(MyCommandsFactory.getInstance().RESUME_COMMAND);
        this.setPaused(true);
    }
    

    void unPause() {
        this.logUtil.putF(this.commonStrings.START, this, this.canvasStrings.UN_PAUSE);
        this.removeCommand(MyCommandsFactory.getInstance().RESUME_COMMAND);
        this.addCommand(MyCommandsFactory.getInstance().PAUSE_COMMAND);
        this.setPaused(false);
    }
    

    void process() {
        this.displayInfo.process();
    }
    

    @override
    void paint(Graphics graphics) {
    }
    

    void draw(Graphics graphics) {
    }
    

    bool hasChild(MyCanvas displayable) {
        return this.childNameList.contains(displayable.name);
    }
    

    void destroy() {
        this.logUtil.putF("Destroyed MyCanvas", this, "destroy");
    }
    

    void setPaused(bool isPaused) {
        this.paused = isPaused;
    }
    

    void keyPressedByDevice(int keyCode, int deviceId) {
    }
    

    void keyRepeatedByDevice(int keyCode, int deviceId) {
    }
    

    void keyReleasedByDevice(int keyCode, int deviceId) {
    }
    

    @override
    void pointerDragged(int x, int y) {
        this.touchME.pointerDragged(x, y);
    }
    

    @override
    void pointerPressed(int x, int y) {
        this.touchME.pointerPressed(x, y);
    }
    

    @override
    void pointerReleased(int x, int y) {
        this.touchME.pointerReleased(x, y);
    }
    

    void nextSong(Sound nextSongSound, int leftVolume, int rightVolume) {
    }
}

