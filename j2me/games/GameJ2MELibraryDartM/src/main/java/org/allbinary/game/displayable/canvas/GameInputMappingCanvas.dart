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
import 'package:allbinary/javax/microedition/lcdui/Command.dart';
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/game/commands/GameCommandsFactory.dart';
import 'package:allbinary/org/allbinary/game/input/GameKey.dart';
import 'package:allbinary/org/allbinary/game/input/GameKeyFactory.dart';
import 'package:allbinary/org/allbinary/game/input/Input.dart';
import 'package:allbinary/org/allbinary/game/input/InputFactory.dart';
import 'package:allbinary/org/allbinary/game/input/PlatformInputMappingFactory.dart';
import 'package:allbinary/org/allbinary/game/input/mapping/InputMappingInterface.dart';
import 'package:allbinary/org/allbinary/game/input/mapping/PersistentInputMapping.dart';
import 'package:allbinary/org/allbinary/game/layer/AllBinaryGameLayerManager.dart';
import 'package:allbinary/org/allbinary/game/paint/ColorFillBasePaintable.dart';
import 'package:allbinary/org/allbinary/game/paint/ColorFillPaintableFactory.dart';
import 'package:allbinary/org/allbinary/game/paint/help/HelpPaintable.dart';
import 'package:allbinary/org/allbinary/game/paint/help/InputMappingHelpPaintable.dart';
import 'package:allbinary/org/allbinary/graphics/paint/ProcessPaintable.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameCommandCanvas.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas.dart';

class GameInputMappingCanvas extends GameCommandCanvas implements InputMappingInterface {
    static const String NAME = "GameInputMappingCanvas";
    static final Command DISPLAY = Command.with4("Controls", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2);
    static final Command DEFAULT = Command.with4("Default", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2);
    late ProcessPaintable paintable;
    late InputMappingHelpPaintable helpPaintable;
    late ColorFillBasePaintable colorFillPaintable;
    late PersistentInputMapping inputMapping;
    late GameKey NONE;
    late AbeClientInformationInterface abeClientInformation;
    late GameKey selectedGameKey;
    late Input selectedInput;
    late InputFactory inputFactory;

    // Java field initializers run after the base constructor
    void initFieldsGameInputMappingCanvas() {
    
    
    
    
    this.NONE = GameKeyFactory.getInstance().NONE;
    
    this.selectedGameKey = this.NONE;
    this.selectedInput = this.NONE;
    this.inputFactory = InputFactory.getInstance();
    }
    

    GameInputMappingCanvas(AbeClientInformationInterface abeClientInformation, CommandListener commandListener, AllBinaryGameLayerManager allBinaryGameLayerManager, HelpPaintable helpPaintable) : super(commandListener, GameInputMappingCanvas.NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor()) {
        this.initFieldsGameInputMappingCanvas();
        
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        if (helpPaintable == null) {
            throw JException('Exception', "Help Paintable Exception");
        }
        this.abeClientInformation = abeClientInformation;
        this.helpPaintable = (helpPaintable as InputMappingHelpPaintable);
        this.inputMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance();
        this.paintable = ProcessPaintable();
        this.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance2(allBinaryGameLayerManager.getBackgroundBasicColor(), false);
    }
    

    @override
    void close() {
        super.close();
        this.paintable.process();
        this.selectedGameKey = this.NONE;
        this.selectedInput = this.NONE;
        this.update();
    }
    

    @override
    void initCommands(CommandListener cmdListener) {
        this.removeAllCommands();
        this.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS);
        this.addCommand(GameInputMappingCanvas.DEFAULT);
        this.addCommand(GameInputMappingInstructionsCanvas.DISPLAY);
        this.setCommandListener(cmdListener);
    }
    

    @override
    void keyPressed(int keyCode) {
        this.keyPressedByDevice(keyCode, 0);
    }
    

    @override
    void keyReleased(int keyCode) {
        this.keyReleasedByDevice(keyCode, 0);
    }
    

    @override
    void keyRepeated(int keyCode) {
        this.keyRepeatedByDevice(keyCode, 0);
    }
    

    @override
    void keyPressedByDevice(int keyCode, int deviceId) {
        this.addGameKey(keyCode, false);
        super.keyPressedByDevice(keyCode, 0);
    }
    

    void addGameKey(int keyCode, bool repeated) {
        try {
            this.logUtil.putF(StringMaker().append("Raw Device Key Code: ").append(Integer.toHexString(keyCode)).toString(), this, this.gameInputStrings.ADD_KEY_EVENT);
            GameKey gameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode);
            Input input = this.inputFactory.getInstanceById(keyCode);
            this.processInputMapping(gameKey, input);
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.ADD_KEY_EVENT, e);
            }
        }
    }
    

    @override
    void processInputMapping(GameKey gameKey, Input input) {
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append("Start Passed GameKey: ");
        stringBuffer.append(this.stringUtil.toString1(gameKey));
        stringBuffer.append(" Input: ");
        stringBuffer.append(this.stringUtil.toString1(input));
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.PROCESS);
        if (!identical(this.selectedGameKey, this.NONE)) {
            this.gameActionCrud(gameKey, input);
        } else {
            this.setSelectedAction(gameKey);
        }
    }
    

    void setSelectedAction(GameKey gameKey) {
        this.logUtil.putF(StringMaker().append("Selected GameKey: ").append(this.stringUtil.toString1(gameKey)).toString(), this, "setSelectedAction");
        this.selectedGameKey = gameKey;
        this.selectedInput = this.NONE;
        this.helpPaintable.update(this.selectedGameKey, this.selectedInput);
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    void gameActionCrud(GameKey gameKey, Input input) {
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append("Start GameKey: ");
        stringBuffer.append(this.stringUtil.toString1(this.selectedGameKey));
        stringBuffer.append(" Input: ");
        stringBuffer.append(this.stringUtil.toString1(this.selectedInput));
        this.logUtil.putF(stringBuffer.toString(), this, "gameActionCrud");
        if (identical(this.selectedInput, this.NONE)) {
            BasicArrayList list = this.inputMapping.getInputMapping().getMappedInput(this.selectedGameKey);
            bool isInputAlreadyMappedToSelectedAction = list.contains(input);
            if (isInputAlreadyMappedToSelectedAction) {
                this.logUtil.putF(StringMaker().append("Already Mapped Input: ").append(this.stringUtil.toString1(input)).toString(), this, "gameActionCrud");
                this.selectedInput = input;
                this.helpPaintable.update(this.selectedGameKey, this.selectedInput);
                this.repaintBehavior.onChangeRepaint(this);
            } else {
                this.addNewMapping(gameKey, input);
            }
        } else if (this.inputMapping.isDelete(input)) {
            this.deleteCurrentMapping();
        } else {
            this.setSelectedAction(gameKey);
        }
    }
    

    void addNewMapping(GameKey gameKey, Input input) {
        final String METHOD_NAME = "addNewMapping";
        this.logUtil.putF(this.commonStrings.START, this, METHOD_NAME);
        bool isInputAlreadyMapped = this.inputMapping.getInputMapping().isMapped(input);
        if (!isInputAlreadyMapped && !this.inputMapping.isSystemInput(input)) {
            final StringMaker stringBuffer = StringMaker();
            stringBuffer.append("Add Key Mapping : GameKey: ");
            stringBuffer.append(this.stringUtil.toString1(this.selectedGameKey));
            stringBuffer.append(" Input: ");
            stringBuffer.append(this.stringUtil.toString1(this.selectedInput));
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
            this.inputMapping.getInputMapping().add(this.selectedGameKey, input);
            this.selectedInput = input;
            this.update();
        } else {
            this.logUtil.putF("Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to", this, METHOD_NAME);
            this.setSelectedAction(gameKey);
        }
    }
    

    void deleteCurrentMapping() {
        final String METHOD_NAME = "deleteCurrentMapping";
        BasicArrayList list = this.inputMapping.getInputMapping().getMappedInput(this.selectedGameKey);
        if (list.size() > 1) {
            final StringMaker stringBuffer = StringMaker();
            stringBuffer.append("Start GameKey: ");
            stringBuffer.append("Remove Key Mapping: GameKey: ");
            stringBuffer.append(this.stringUtil.toString1(this.selectedGameKey));
            stringBuffer.append(" Input: ");
            stringBuffer.append(this.stringUtil.toString1(this.selectedInput));
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME);
            this.inputMapping.getInputMapping().remove(this.selectedGameKey, this.selectedInput);
            this.selectedInput = this.NONE;
            this.update();
        } else {
            this.logUtil.putF("Can't Remove Last Key Mapping", this, METHOD_NAME);
        }
    }
    

    void setDefault() {
        this.inputMapping.setDefault(this.abeClientInformation);
        this.helpPaintable.update(this.NONE, this.NONE);
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    @override
    void update() {
        this.inputMapping.update(this.abeClientInformation);
        this.helpPaintable.update(this.selectedGameKey, this.selectedInput);
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    @override
    void paint(Graphics graphics) {
        this.colorFillPaintable.paint(graphics);
        this.helpPaintable.paint(graphics);
        this.paintable.paint(graphics);
        super.paint(graphics);
    }
}

