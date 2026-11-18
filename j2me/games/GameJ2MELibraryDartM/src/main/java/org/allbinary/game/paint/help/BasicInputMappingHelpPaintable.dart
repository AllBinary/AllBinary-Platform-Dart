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
import 'package:allbinary/org/allbinary/game/input/GameKey.dart';
import 'package:allbinary/org/allbinary/game/input/GameKeyFactory.dart';
import 'package:allbinary/org/allbinary/game/input/Input.dart';
import 'package:allbinary/org/allbinary/game/input/PlatformInputMappingFactory.dart';
import 'package:allbinary/org/allbinary/game/input/mapping/GameInputMapping.dart';
import 'package:allbinary/org/allbinary/game/input/mapping/PersistentInputMapping.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/game/paint/help/HelpPaintable.dart';

class BasicInputMappingHelpPaintable extends HelpPaintable {
    late List<GameInputMapping?> gameInputMappingArray;
    late GameKey NONE;

    // Java field initializers run after the base constructor
    void initFieldsBasicInputMappingHelpPaintable() {
    
    this.NONE = GameKeyFactory.getInstance().NONE;
    }
    

    BasicInputMappingHelpPaintable(List<GameInputMapping?> gameInputMappingArray, BasicColor basicColor) : super("Help Screen", BasicColorFactory.getInstance().BLACK, basicColor) {
        this.initFieldsBasicInputMappingHelpPaintable();
        
        this.gameInputMappingArray = gameInputMappingArray;
        this.update(this.NONE, this.NONE);
    }
    

    void update(GameKey selectedGameKey, Input selectedInput) {
        final PersistentInputMapping gameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance();
        final String EQUAL = " = ";
        final StringMaker stringMaker = StringMaker();
        final int size = this.gameInputMappingArray.length;
        final List<String?> keyInfo = List<String?>.filled(size, null);
        late GameInputMapping gameInputMapping;
        late GameKey gameKey;
        late BasicArrayList list;
        for (int index = 0; index < size; index++) {
            gameInputMapping = this.gameInputMappingArray[index]!;
            gameKey = gameInputMapping.getGameKey();
            list = gameKeyMapping.getInputMapping().getMappedInput(gameKey);
            stringMaker.delete(0, stringMaker.length());
            keyInfo[index] = stringMaker.append(gameInputMapping.getName()).append(EQUAL).append(this.get(list)).toString();
        }
        super.setInputInfoP(keyInfo);
    }
    

    String get(BasicArrayList keyList) {
        final CommonSeps commonSeps = CommonSeps.getInstance();
        final StringMaker stringBuffer = StringMaker();
        final String AND = "and ";
        late Input key;
        final int size = keyList.size();
        for (int index = 0; index < size; index++) {
            key = (keyList.objectArray[index]! as Input);
            stringBuffer.append(key.getName());
            if (index + 1 < keyList.size()) {
                if (keyList.size() == 2) {
                    stringBuffer.append(commonSeps.SPACE).append(AND);
                } else {
                    if (index + 2 == keyList.size()) {
                        stringBuffer.append(commonSeps.COMMA_SEP);
                        stringBuffer.append(AND);
                    } else {
                        stringBuffer.append(commonSeps.COMMA_SEP);
                    }
                }
            }
        }
        return stringBuffer.toString();
    }
}

