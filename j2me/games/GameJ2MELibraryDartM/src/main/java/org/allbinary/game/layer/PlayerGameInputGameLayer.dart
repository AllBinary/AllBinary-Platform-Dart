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
// package org.allbinary.game.layer

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/game/input/PlayerGameInput.dart';
import 'package:allbinary/org/allbinary/game/input/PlayerGameInputCompositeInterface.dart';
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/CanvasStrings.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayerManager.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/util/BasicArrayListD.dart';
import 'package:allbinary/org/allbinary/view/StaticViewPosition.dart';
import 'package:allbinary/org/allbinary/game/layer/AllBinaryGameLayer.dart';

class PlayerGameInputGameLayer extends AllBinaryGameLayer implements PlayerGameInputCompositeInterface {
    late PlayerGameInput playerGameInput;

    // Java field initializers run after the base constructor
    void initFieldsPlayerGameInputGameLayer() {
    
    }
    

    PlayerGameInputGameLayer(int playerInputId) : super(StringUtil.getInstance().EMPTY_STRING, Rectangle(PointFactory.getInstance().ZERO_ZERO, 0, 0), StaticViewPosition(0, 0, 0)) {
        this.initFieldsPlayerGameInputGameLayer();
        
        this.playerGameInput = PlayerGameInput(this.getGameKeyEventList(), BasicArrayListD(), playerInputId);
        final CanvasStrings canvasStrings = CanvasStrings.getInstance();
        this.logUtil.putF("Danger Danger Danger: Should Not Be Called Except For Testing Input", this, canvasStrings.PAINT);
    }
    

    @override
    PlayerGameInput getPlayerGameInput() {
        return this.playerGameInput;
    }
    

    @override
    void initInputProcessors() {
    }
    

    @override
    void processInput(AllBinaryLayerManager myManager) {
    }
    

    @override
    void paint(Graphics graphics) {
    }
}

