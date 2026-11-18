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
// package org.allbinary.game.part

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/paint/PaintableInterface.dart';
import 'package:allbinary/org/allbinary/layer/AllBinaryLayer.dart';
import 'package:allbinary/org/allbinary/game/part/PartInterface.dart';
import 'package:allbinary/org/allbinary/game/part/CountedLayerInterfaceFactoryPart.dart';

class CountedLayersHudPaintable implements PaintableInterface, UpdateMyFontInterface {
    static int XXStringWidth = 0;
    late DisplayInfoSingleton displayInfoSingleton;
    late List<PartInterface?> partInterfaceArray;
    int countedTotalStringColor = 0;
    int countedPartsBorder = 0;
    int startIndex = 0;
    int dropSize = 0;
    late MyFontProcessor myFontProcessor;
    int height = 0;

    // Java field initializers run after the base constructor
    void initFieldsCountedLayersHudPaintable() {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    
    
    
    
    
    this.myFontProcessor = UpdateMyFontProcessor(this);
    this.height = 0;
    }
    

    CountedLayersHudPaintable(List<PartInterface?> partInterfaceArray, int dropSize, int startIndex, int countedTotalStringColor, int countedPartsBorder) {
        this.initFieldsCountedLayersHudPaintable();
        this.partInterfaceArray = partInterfaceArray;
        this.startIndex = startIndex;
        this.countedTotalStringColor = countedTotalStringColor;
        this.countedPartsBorder = countedPartsBorder;
        this.dropSize = dropSize;
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        final Font font = graphics.getFont();
        this.height = font.getHeight();
        if (this.dropSize > font.getHeight()) {
            this.height = this.dropSize;
        }
        if (CountedLayersHudPaintable.XXStringWidth == 0) {
            final String XXString = "XX";
            CountedLayersHudPaintable.XXStringWidth = font.stringWidth(XXString);
        }
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    @override
    void paint(Graphics graphics) {
        this.myFontProcessor.process(graphics);
        final int lastWidth = this.displayInfoSingleton.getLastWidth();
        final int widthEdge = lastWidth - this.dropSize;
        final int size = this.partInterfaceArray.length;
        int count = 0;
        int y = 0;
        late CountedLayerInterfaceFactoryPart countedLayerInterfaceFactory;
        late PickedUpLayerInterfaceFactoryInterface pickedUpLayerInterfaceFactoryInterface;
        late AllBinaryLayer layerInterface;
        late List<int> charArray;
        for (int index = this.startIndex; index < size; index++) {
            countedLayerInterfaceFactory = (this.partInterfaceArray[index]! as CountedLayerInterfaceFactoryPart);
            if (countedLayerInterfaceFactory.getTotal() > 0) {
                pickedUpLayerInterfaceFactoryInterface = countedLayerInterfaceFactory.getCountedPickedUpLayerInterfaceFactory();
                layerInterface = pickedUpLayerInterfaceFactoryInterface.getIconLayer();
                y = 40 + (count * this.height);
                layerInterface.setPosition(widthEdge, y, layerInterface.getZP());
                layerInterface.paint(graphics);
                graphics.setColor(this.countedTotalStringColor);
                countedLayerInterfaceFactory.paint(graphics);
                charArray = countedLayerInterfaceFactory.getTotalString();
                graphics.drawChars(charArray, 0, charArray.length, widthEdge - countedLayerInterfaceFactory.getXOffset(), y, 0);
                count++;
            }
        }
        if (count > 0) {
            graphics.setColor(this.countedPartsBorder);
            graphics.drawRect(lastWidth - (CountedLayersHudPaintable.XXStringWidth + this.dropSize), 40, CountedLayersHudPaintable.XXStringWidth + this.dropSize, (count * this.height) + 3);
        }
    }
    

    @override
    void paintThreed(Graphics graphics) {
    }
}

