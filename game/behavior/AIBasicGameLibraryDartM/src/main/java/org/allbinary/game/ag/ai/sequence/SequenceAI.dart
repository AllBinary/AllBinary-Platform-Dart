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
// package org.allbinary.game.ag.ai.sequence

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/ai/ArtificialIntelligence.dart';
import 'package:allbinary/org/allbinary/ai/ArtificialIntelligenceInterface.dart';
import 'package:allbinary/org/allbinary/ai/ArtificialIntelligenceTransitionInterface.dart';
import 'package:allbinary/org/allbinary/game/ag/ai/ArrayAI.dart';
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';

class SequenceAI extends ArrayAI {
    static const String SEQUENCE_AI = "Sequence AI";
    int index = 0;

    // Java field initializers run after the base constructor
    void initFieldsSequenceAI() {
    this.index = 0;
    }
    

    SequenceAI(List<ArtificialIntelligenceInterface?> artificialIntelligenceInterfaceArray, AllBinaryLayer ownerLayerInterface, GameInput gameInput) : super(artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput) {
        this.initFieldsSequenceAI();
        
    }
    

    @override
    void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        this.getArtificialIntelligenceInterface()[this.index]!.processAI(allBinaryLayerManager);
    }
    

    void next() {
        this.index++;
        final ArtificialIntelligenceInterface artificialIntelligenceInterface = this.getSelectedArtificialIntelligenceInterface();
        if (artificialIntelligenceInterface.getId() == ArtificialIntelligence.AI_ID) {
            final ArtificialIntelligenceTransitionInterface artificialIntelligenceTransitionInterface = (artificialIntelligenceInterface as ArtificialIntelligenceTransitionInterface);
            artificialIntelligenceTransitionInterface.transition();
        }
    }
    

    int getIndex() {
        return this.index;
    }
    

    void setIndex(int index) {
        this.index = index;
    }
    

    ArtificialIntelligenceInterface getSelectedArtificialIntelligenceInterface() {
        return this.getArtificialIntelligenceInterface()[this.index]!;
    }
    

    @override
    String getName() {
        return SequenceAI.SEQUENCE_AI;
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append(super.toString());
        stringBuffer.append(" Selected AI: ");
        stringBuffer.append(StringUtil.getInstance().toString1(this.getSelectedArtificialIntelligenceInterface()));
        return stringBuffer.toString();
    }
}

