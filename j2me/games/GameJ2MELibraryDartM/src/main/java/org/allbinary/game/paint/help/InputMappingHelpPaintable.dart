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
// package org.allbinary.game.paint.help

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/game/input/GameKey.dart';
import 'package:allbinary/org/allbinary/game/input/GameKeyFactory.dart';
import 'package:allbinary/org/allbinary/game/input/Input.dart';
import 'package:allbinary/org/allbinary/game/input/PlatformInputMappingFactory.dart';
import 'package:allbinary/org/allbinary/game/input/mapping/GameInputMapping.dart';
import 'package:allbinary/org/allbinary/game/input/mapping/PersistentInputMapping.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorUtil.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonLabels.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/game/paint/help/HelpPaintable.dart';
import 'package:allbinary/org/allbinary/game/paint/help/UpdateMyFontProperties.dart';

class InputMappingHelpPaintable extends HelpPaintable {
    static const String AND = " and ";
    static const String SEP = ", ";
    static const String MORE_THAN_TWO_IN_LIST_AND = ", and ";
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late CommonSeps commonSeps;
    late StringUtil stringUtil;
    late BasicColorFactory basicColorFactory;
    late GameKey NONE;
    late String EMPTY_STRING;
    late List<GameInputMapping?> gameInputMappingArray;
    late List<BasicArrayList?> keyMappingArray;
    late List<BasicColor?> actionBasicColor;
    late List<List<BasicColor?>?> inputBasicColorArray;
    late BasicColor selectedBasicColor;
    late UpdateMyFontProperties updateMyFontProperties;

    // Java field initializers run after the base constructor
    void initFieldsInputMappingHelpPaintable() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.commonSeps = CommonSeps.getInstance();
    this.stringUtil = StringUtil.getInstance();
    this.basicColorFactory = BasicColorFactory.getInstance();
    this.NONE = GameKeyFactory.getInstance().NONE;
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
    
    this.keyMappingArray = List<BasicArrayList?>.filled(0, null);
    this.actionBasicColor = BasicColorUtil.getInstance().ZERO_ARRAY;
    this.inputBasicColorArray = List<List<BasicColor?>>.generate(0, (_) => List<BasicColor?>.filled(0, null));
    
    this.updateMyFontProperties = UpdateMyFontProperties();
    }
    

    InputMappingHelpPaintable(List<GameInputMapping?> gameInputMappingArray, BasicColor backgroundBasicColor, BasicColor basicColor) : super("Input Mapping", backgroundBasicColor, basicColor) {
        this.initFieldsInputMappingHelpPaintable();
        
        this.gameInputMappingArray = gameInputMappingArray;
        this.update(this.NONE, this.NONE);
        if (backgroundBasicColor == this.basicColorFactory.WHITE || basicColor == this.basicColorFactory.WHITE) {
            this.selectedBasicColor = this.basicColorFactory.RED;
        } else {
            this.selectedBasicColor = this.basicColorFactory.WHITE;
        }
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        final UpdateMyFontProperties updateMyFontProperties = UpdateMyFontProperties();
        updateMyFontProperties.charHeight = font.getHeight();
        final StringMaker stringMaker = StringMaker();
        final List<String?> inputInfo = this.inputInfo;
        final int size = inputInfo.length;
        updateMyFontProperties.actionStringArray = List<String?>.filled(size, null);
        updateMyFontProperties.keymappingBeginWidthArray = List<int>.filled(size, 0);
        updateMyFontProperties.actionStringDeltaXArray = List<int>.filled(size, 0);
        updateMyFontProperties.inputDeltaXArray = List<List<int>>.generate(size, (_) => List<int>.filled(0, 0));
        updateMyFontProperties.sepArray = List<List<String?>>.generate(size, (_) => List<String?>.filled(0, null));
        updateMyFontProperties.sepWidthArray = List<List<int>>.generate(size, (_) => List<int>.filled(0, 0));
        late BasicArrayList list;
        late String keyMappings;
        late String actionString;
        late Input input;
        int size2 = 0;
        for (int index = 0; index < size; index++) {
            list = this.keyMappingArray[index]!;
            keyMappings = this.get(list);
            stringMaker.delete(0, stringMaker.length());
            actionString = stringMaker.append(inputInfo[index]!).append(this.commonSeps.COLON).append(this.commonSeps.SPACE).append(this.commonSeps.SPACE).toString();
            updateMyFontProperties.actionStringArray[index] = actionString;
            stringMaker.delete(0, stringMaker.length());
            updateMyFontProperties.keymappingBeginWidthArray[index] = (font.stringWidth(stringMaker.append(updateMyFontProperties.actionStringArray[index]!).append(keyMappings).toString()) >> 1);
            updateMyFontProperties.actionStringDeltaXArray[index] = font.stringWidth(actionString);
            size2 = list.size();
            updateMyFontProperties.inputDeltaXArray[index] = List<int>.filled(size2, 0);
            updateMyFontProperties.sepArray[index] = List<String?>.filled(size2, null);
            updateMyFontProperties.sepWidthArray[index] = List<int>.filled(size2, 0);
            for (int index2 = 0; index2 < size2; index2++) {
                input = (list.objectArray[index2]! as Input);
                updateMyFontProperties.inputDeltaXArray[index]![index2] = font.stringWidth(input.getName());
                updateMyFontProperties.sepArray[index]![index2] = this.EMPTY_STRING;
                if (index2 + 1 < list.size()) {
                    if (list.size() == 2) {
                        updateMyFontProperties.sepArray[index]![index2] = InputMappingHelpPaintable.AND;
                    } else {
                        if (index2 + 2 == list.size()) {
                            updateMyFontProperties.sepArray[index]![index2] = InputMappingHelpPaintable.MORE_THAN_TWO_IN_LIST_AND;
                        } else {
                            updateMyFontProperties.sepArray[index]![index2] = InputMappingHelpPaintable.SEP;
                        }
                    }
                }
                if (updateMyFontProperties.sepArray[index]![index2]! != this.EMPTY_STRING) {
                    updateMyFontProperties.sepWidthArray[index]![index2] = font.stringWidth(updateMyFontProperties.sepArray[index]![index2]!);
                }
            }
        }
        this.updateMyFontProperties = updateMyFontProperties;
        super.updateMeasurement(graphics);
    }
    

    void update(GameKey selectedGameKey, Input selectedInput) {
        final StringMaker stringMaker = StringMaker();
        this.logUtil.putF(stringMaker.append(CommonLabels.getInstance().START_LABEL).append("selected GameKey: ").append(this.stringUtil.toString1(selectedGameKey)).append(" Input: ").append(this.stringUtil.toString1(selectedInput)).toString(), this, this.commonStrings.UPDATE);
        final PersistentInputMapping gameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance();
        final int size = this.gameInputMappingArray.length;
        final List<String?> keyInfo = List<String?>.filled(size, null);
        final List<BasicArrayList?> keyMappingArray = List<BasicArrayList?>.filled(size, null);
        final List<BasicColor?> actionBasicColor = List<BasicColor?>.filled(size, null);
        final List<List<BasicColor?>?> inputBasicColorArray = List<List<BasicColor?>?>.filled(size, null);
        late GameInputMapping gameInputMapping;
        late GameKey gameKey;
        late BasicArrayList list;
        for (int index = 0; index < size; index++) {
            gameInputMapping = this.gameInputMappingArray[index]!;
            gameKey = gameInputMapping.getGameKey();
            list = gameKeyMapping.getInputMapping().getMappedInput(gameKey);
            int size2 = list.size();
            inputBasicColorArray[index] = List<BasicColor?>.filled(size2, null);
            for (int index2 = 0; index2 < size2; index2++) {
                inputBasicColorArray[index]![index2] = this.basicColor;
            }
            if (identical(gameKey, selectedGameKey)) {
                stringMaker.delete(0, stringMaker.length());
                this.logUtil.putF(stringMaker.append("Found: selected GameKey: ").append(this.stringUtil.toString1(selectedGameKey)).toString(), this, this.commonStrings.UPDATE);
                actionBasicColor[index] = this.selectedBasicColor;
                int indexOfSelectedInput = list.indexOf(selectedInput);
                if (indexOfSelectedInput >= 0) {
                    stringMaker.delete(0, stringMaker.length());
                    this.logUtil.putF(stringMaker.append("Found: selected Input: ").append(this.stringUtil.toString1(selectedInput)).toString(), this, this.commonStrings.UPDATE);
                    inputBasicColorArray[index]![indexOfSelectedInput] = this.selectedBasicColor;
                }
            } else {
                actionBasicColor[index] = this.basicColor;
            }
            keyInfo[index] = gameInputMapping.getName();
            keyMappingArray[index] = list;
        }
        this.keyMappingArray = keyMappingArray;
        this.actionBasicColor = actionBasicColor;
        this.inputBasicColorArray = inputBasicColorArray;
        super.setInputInfoP(keyInfo);
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    String get(BasicArrayList keyList) {
        final StringMaker stringBuffer = StringMaker();
        late Input key;
        final int size = keyList.size();
        for (int index = 0; index < size; index++) {
            key = (keyList.objectArray[index]! as Input);
            stringBuffer.append(key.getName());
            if (index + 1 < keyList.size()) {
                if (keyList.size() == 2) {
                    stringBuffer.append(InputMappingHelpPaintable.AND);
                } else {
                    if (index + 2 == keyList.size()) {
                        stringBuffer.append(InputMappingHelpPaintable.MORE_THAN_TWO_IN_LIST_AND);
                    } else {
                        stringBuffer.append(InputMappingHelpPaintable.SEP);
                    }
                }
            }
        }
        return stringBuffer.toString();
    }
    

    @override
    void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        final int halfWidth = this.displayInfo.getLastHalfWidth();
        graphics.setColor(this.basicColor.intValue());
        graphics.drawString(this.title, halfWidth - this.titleBeginWidth, this.updateMyFontProperties.charHeight, this.anchor);
        final List<String?> inputInfo = this.inputInfo;
        final int size = inputInfo.length;
        int y = 0;
        int deltaX = 0;
        int size2 = 0;
        late String actionString;
        late Input input;
        late BasicArrayList list;
        late String sep;
        int beginWidth = 0;
        for (int index = 0; index < size; index++) {
            y = (index + 3) * this.updateMyFontProperties.charHeight;
            deltaX = 0;
            list = this.keyMappingArray[index]!;
            size2 = list.size();
            beginWidth = this.updateMyFontProperties.keymappingBeginWidthArray[index];
            graphics.setColor(this.actionBasicColor[index]!.intValue());
            actionString = this.updateMyFontProperties.actionStringArray[index]!;
            graphics.drawString(actionString, halfWidth - beginWidth + deltaX, y, this.anchor);
            deltaX += this.updateMyFontProperties.actionStringDeltaXArray[index];
            for (int index2 = 0; index2 < size2; index2++) {
                input = (list.objectArray[index2]! as Input);
                graphics.setColor(this.inputBasicColorArray[index]![index2]!.intValue());
                graphics.drawString(input.getName(), halfWidth - beginWidth + deltaX, y, this.anchor);
                deltaX += this.updateMyFontProperties.inputDeltaXArray[index]![index2];
                sep = this.updateMyFontProperties.sepArray[index]![index2]!;
                graphics.setColor(this.basicColor.intValue());
                graphics.drawString(sep, halfWidth - beginWidth + deltaX, y, this.anchor);
                deltaX += this.updateMyFontProperties.sepWidthArray[index]![index2];
            }
        }
    }
}

