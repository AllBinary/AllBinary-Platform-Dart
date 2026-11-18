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
// package org.allbinary.game.ai

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/ai/ArtificialIntelligence.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/CanvasUtil.dart';
import 'package:allbinary/org/allbinary/game/input/GameInput.dart';
import 'package:allbinary/org/allbinary/game/input/GameKeyEventSourceInterface.dart';
import 'package:allbinary/org/allbinary/game/input/event/GameKeyEventFactory.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/math/SmallIntegerSingletonFactory.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class BasicAI extends ArtificialIntelligence implements GameKeyEventSourceInterface {
    static final int AI_VISITOR = SmallIntegerSingletonFactory.getInstance().getAt(2);
    static final int ID = SmallIntegerSingletonFactory.getInstance().getAt(1);
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late GameKeyEventFactory gameKeyEventFactory;
    late AllBinaryLayer ownerLayerInterface;
    late GameInput gameInput;
    int lastKey = 0;

    // Java field initializers run after the base constructor
    void initFieldsBasicAI() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance();
    
    
    this.lastKey = -1;
    }
    

    BasicAI(AllBinaryLayer ownerLayerInterface, GameInput gameInput) {
        this.initFieldsBasicAI();
        this.ownerLayerInterface = ownerLayerInterface;
        this.gameInput = gameInput;
    }
    

    @override
    void processAI(AllBinaryLayerManager allBinaryLayerManager) {
        throw JException('Exception', this.commonStrings.NOT_IMPLEMENTED);
    }
    

    void processKeyAI(int key) {
        if (key != -1) {
            this.gameInput.add(this.gameKeyEventFactory.getInstanceForKey(this, key));
        }
    }
    

    void setLastKey(int lastKey) {
        this.lastKey = lastKey;
    }
    

    int getLastKey() {
        return this.lastKey;
    }
    

    AllBinaryLayer getOwnerLayerInterface() {
        return this.ownerLayerInterface;
    }
    

    GameInput getGameInput() {
        return this.gameInput;
    }
    

    String getName() {
        return jClassName(this);
    }
    

    @override
    String toString() {
        StringMaker stringBuffer = StringMaker();
        stringBuffer.append(CommonSeps.getInstance().NEW_LINE);
        stringBuffer.append(this.getName());
        stringBuffer.append(" LastKey: ");
        stringBuffer.append(CanvasUtil.getKeyName(this.getLastKey()));
        return stringBuffer.toString();
    }
    

    @override
    int getSourceId() {
        return 1;
    }
}

