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
// package org.allbinary.game.ag.ai

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/ai/ArtificialIntelligenceInterface.dart';
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/util/ABHashtable.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/NumberInSameGroupSequence.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/NumberOnOwnGroupSequenceAI.dart';

class NumberOnOwnGroupSequenceAIFactory {
    late LogUtil logUtil;

    // Java field initializers run after the base constructor
    void initFieldsNumberOnOwnGroupSequenceAIFactory() {
    this.logUtil = LogUtil.getInstance();
    }

    NumberOnOwnGroupSequenceAIFactory() {
        this.initFieldsNumberOnOwnGroupSequenceAIFactory();
    }
    

    ArtificialIntelligenceInterface getInstance4(ABHashtable hashtable, List<ArtificialIntelligenceInterface?> artificialIntelligenceInterface, AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        final List<int?> integerArray = NumberInSameGroupSequence.getInstance().NUMBER_ON_SAME_TEAM_SEQUENCE;
        final BasicArrayList list = BasicArrayListD();
        for (int index = 0; index < integerArray.length; index++) {
            Object integerCanBeNull = hashtable.get(integerArray[index]!);
            if (integerCanBeNull == null) {
                break;
            }
            list.add(integerCanBeNull);
        }
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append("Total AI Properties: ");
        stringBuffer.appendint(list.size());
        stringBuffer.append(" == Total AI: ");
        stringBuffer.appendint(artificialIntelligenceInterface.length);
        stringBuffer.append(" + 1");
        final CommonStrings commonStrings = CommonStrings.getInstance();
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.GET_INSTANCE);
        if (artificialIntelligenceInterface.length - 1 > list.size()) {
            throw JException('Exception', "Not enough AI properties.");
        }
        if (artificialIntelligenceInterface.length - 1 < list.size()) {
            throw JException('Exception', "Too Many AI properties.");
        }
        List<int?> numberOnSameTeam = List<int?>.filled(list.size(), null);
        for (int index = 0; index < numberOnSameTeam.length; index++) {
            numberOnSameTeam[index] = (list.objectArray[index]! as int);
        }
        return NumberOnOwnGroupSequenceAI(numberOnSameTeam, artificialIntelligenceInterface, ownerLayerInterface, gameInput);
    }
}

