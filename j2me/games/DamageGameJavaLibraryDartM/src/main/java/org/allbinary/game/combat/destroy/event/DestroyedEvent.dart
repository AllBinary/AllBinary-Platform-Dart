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
// package org.allbinary.game.combat.destroy.event

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/NullGameCanvas.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/event/AllBinaryEventObject.dart';
import 'package:allbinary/org/allbinary/game/combat/destroy/event/DestroyedEventHandler.dart';

class DestroyedEvent extends AllBinaryEventObject {
    late AllBinaryGameCanvas allBinaryGameCanvas;
    late AllBinaryLayer allBinaryLayerInterface;

    // Java field initializers run after the base constructor
    void initFieldsDestroyedEvent() {
    this.allBinaryGameCanvas = NullGameCanvas.getInstance();
    this.allBinaryLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER;
    }
    

    DestroyedEvent(AllBinaryGameCanvas combatGameCanvas) : super(DestroyedEventHandler.getInstance()) {
        this.initFieldsDestroyedEvent();
        
        this.setAllBinaryGameCanvas(combatGameCanvas);
    }
    

    AllBinaryGameCanvas getAllBinaryGameCanvas() {
        return this.allBinaryGameCanvas;
    }
    

    AllBinaryLayer getLayerInterface() {
        return this.allBinaryLayerInterface;
    }
    

    void setAllBinaryGameCanvas(AllBinaryGameCanvas allBinaryGameCanvas) {
        this.allBinaryGameCanvas = allBinaryGameCanvas;
    }
    

    void setLayerInterfaceForCircularStaticPool(AllBinaryLayer allBinaryLayerInterface) {
        this.allBinaryLayerInterface = allBinaryLayerInterface;
    }
    

    @override
    String toString() {
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append("DestroyedEvent: \n");
        stringBuffer.append("AllBinaryLayerInterface: ");
        stringBuffer.append(this.allBinaryLayerInterface.toString());
        stringBuffer.append("\nAllBinaryGameCanvas: ");
        stringBuffer.append(StringUtil.getInstance().toString1(this.getAllBinaryGameCanvas()));
        return stringBuffer.toString();
    }
}

