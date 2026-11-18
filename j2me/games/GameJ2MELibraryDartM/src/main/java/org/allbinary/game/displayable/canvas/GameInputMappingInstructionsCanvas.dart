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
import 'package:allbinary/org/allbinary/game/layer/AllBinaryGameLayerManager.dart';
import 'package:allbinary/org/allbinary/game/paint/ColorFillBasePaintable.dart';
import 'package:allbinary/org/allbinary/game/paint/ColorFillPaintableFactory.dart';
import 'package:allbinary/org/allbinary/graphics/Anchor.dart';
import 'package:allbinary/org/allbinary/graphics/draw/DrawStringUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameCommandCanvas.dart';

class GameInputMappingInstructionsCanvas extends GameCommandCanvas {
    static final Command DISPLAY = Command.with4("Help", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    static final Command CLOSE = Command.with4("Close", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1);
    static const String NAME = "GameInputMappingInstructionsCanvas";
    late DrawStringUtil drawStringUtil;
    late String TITLE;
    late List<String?> instructions;
    late ColorFillBasePaintable colorFillPaintable;
    int anchor = 0;

    // Java field initializers run after the base constructor
    void initFieldsGameInputMappingInstructionsCanvas() {
    this.drawStringUtil = DrawStringUtil.getInstance();
    this.TITLE = "Input Instructions";
    this.instructions = <String?>["Add Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the '1' key to select the Fire action)", "2. Make the newly desired input for the selected action.", "(Example: Press 'f' to add it to the selected action)", "Note: If the input is already mapped to another action then it will not be added. You", "will need to deleted from the other action before adding it to another.", "Warning: Not all keys map for a given platform and show as Unknown.", StringUtil.getInstance().EMPTY_STRING, "Remove Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the key '1' to select the Fire action)", "2. Select a mapped input for the selected action.", "(Example: Press the key '1' to select the '1' key input for the selected Fire action)", "3. Press the Delete Key."];
    
    this.anchor = Anchor.TOP_LEFT;
    }
    

    GameInputMappingInstructionsCanvas(CommandListener commandListener, AllBinaryGameLayerManager allBinaryGameLayerManager) : super(commandListener, GameInputMappingInstructionsCanvas.NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor()) {
        this.initFieldsGameInputMappingInstructionsCanvas();
        
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance2(allBinaryGameLayerManager.getBackgroundBasicColor(), false);
    }
    

    @override
    void initCommands(CommandListener cmdListener) {
        this.removeAllCommands();
        this.addCommand(GameInputMappingInstructionsCanvas.CLOSE);
        this.setCommandListener(cmdListener);
    }
    

    @override
    void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        this.colorFillPaintable.paint(graphics);
        int halfWidth = this.displayInfo.getLastHalfWidth();
        int beginWidth = (graphics.getFont().stringWidth(this.TITLE) >> 1);
        graphics.setColor(this.foregroundColor);
        graphics.drawString(this.TITLE, halfWidth - beginWidth, this.fontHeight, this.anchor);
        this.drawStringUtil.drawCenterStrings(graphics, this.instructions, this.displayInfo.getLastWidth(), this.fontHeight, halfWidth, 3 * this.fontHeight);
        super.paint(graphics);
    }
}

