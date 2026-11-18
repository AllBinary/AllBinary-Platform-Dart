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
// package org.allbinary.input.motion.button

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/CellPositionFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/paint/Paintable.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonLocationHelper.dart';
import 'package:allbinary/org/allbinary/input/motion/button/CommonButtons.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButton.dart';
import 'package:allbinary/org/allbinary/input/motion/button/BasicTouchInputFactory.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonBlankResource.dart';

class TouchButtonsMappingPaintable extends Paintable {
    late LogUtil logUtil;
    int foregroundColor = 0;
    late List<List<Paintable?>?> paintableTable;
    late TouchButtonLocationHelper touchButtonLocationHelper;

    // Java field initializers run after the base constructor
    void initFieldsTouchButtonsMappingPaintable() {
    this.logUtil = LogUtil.getInstance();
    
    this.paintableTable = List<List<Paintable?>>.generate(0, (_) => List<Paintable?>.filled(0, null));
    this.touchButtonLocationHelper = TouchButtonLocationHelper();
    }
    

    TouchButtonsMappingPaintable(BasicColor basicColor) {
        this.initFieldsTouchButtonsMappingPaintable();
        this.foregroundColor = basicColor.intValue();
        this.init();
    }
    

    void init() {
        try {
            this.paintableTable = this.createPaintableTable();
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "updateRectangle", e);
            }
        }
    }
    

    List<List<Paintable?>?> createPaintableTable() {
        int totalColumns = this.touchButtonLocationHelper.getTotalColumns();
        int totalRows = this.touchButtonLocationHelper.getTotalRows();
        List<List<Paintable?>?> paintableTable = List<List<Paintable?>>.generate(totalColumns, (_) => List<Paintable?>.filled(totalRows, null));
        CellPositionFactory cellPositionFactory = CellPositionFactory.getInstance();
        CommonButtons commonButtons = CommonButtons.getInstance();
        for (int index = totalColumns - 1; index >= 0; index--) {
            for (int rowIndex = totalRows - 1; rowIndex >= 0; rowIndex--) {
                this.paintableTable[index]![rowIndex] = TouchButton.createButton(BasicTouchInputFactory.getInstance().NONE, TouchButtonBlankResource.getInstance(), commonButtons.NORMAL_BUTTON, cellPositionFactory.getInstanceColRow(index, rowIndex), this.touchButtonLocationHelper.getColumnsRemainderHalf(), this.touchButtonLocationHelper.getRowsRemainderHalf());
            }
        }
        return paintableTable;
    }
    

    @override
    void paint(Graphics graphics) {
        int totalColumns = this.touchButtonLocationHelper.getTotalColumns();
        int totalRows = this.touchButtonLocationHelper.getTotalRows();
        for (int index = totalColumns - 1; index >= 0; index--) {
            for (int rowIndex = totalRows - 1; rowIndex >= 0; rowIndex--) {
                this.paintableTable[index]![rowIndex]!.paint(graphics);
            }
        }
    }
}

