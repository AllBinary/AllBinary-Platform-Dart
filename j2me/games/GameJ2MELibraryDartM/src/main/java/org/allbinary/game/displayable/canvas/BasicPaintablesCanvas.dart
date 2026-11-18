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
import 'package:allbinary/javax/microedition/lcdui/CommandListener.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/game/layer/AllBinaryGameLayerManager.dart';
import 'package:allbinary/org/allbinary/game/paint/ColorFillBasePaintable.dart';
import 'package:allbinary/org/allbinary/game/paint/ColorFillPaintableFactory.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';
import 'package:allbinary/org/allbinary/game/displayable/canvas/GameCommandCanvas.dart';

class BasicPaintablesCanvas extends GameCommandCanvas {
    late List<Paintable?> paintableArray;
    late ColorFillBasePaintable colorFillPaintable;

    // Java field initializers run after the base constructor
    void initFieldsBasicPaintablesCanvas() {
    
    
    }
    

    BasicPaintablesCanvas(CommandListener cmdListener, String name, AllBinaryGameLayerManager allBinaryGameLayerManager, List<Paintable?> paintableArray) : super(cmdListener, name, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor()) {
        this.initFieldsBasicPaintablesCanvas();
        
        this.paintableArray = paintableArray;
        this.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance2(allBinaryGameLayerManager.getBackgroundBasicColor(), false);
    }
    

    @override
    void paint(Graphics graphics) {
        this.colorFillPaintable.paint(graphics);
        graphics.setColor(this.foregroundColor);
        for (int index = this.paintableArray.length - 1; index >= 0; index--) {
            this.paintableArray[index]!.paint(graphics);
        }
        super.paint(graphics);
    }
}

