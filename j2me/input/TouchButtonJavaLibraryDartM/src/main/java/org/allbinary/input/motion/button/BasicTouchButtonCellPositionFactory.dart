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
import 'package:allbinary/org/allbinary/graphics/CellPosition.dart';
import 'package:allbinary/org/allbinary/graphics/CellPositionFactory.dart';
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/input/motion/button/TouchButtonLocationHelper.dart';

class BasicTouchButtonCellPositionFactory {
    late LogUtil logUtil;
    late CommonStrings commonStrings;
    late CellPosition TOP_RIGHT;
    late CellPosition TOP_LEFT;
    late CellPosition SECOND_FROM_TOP_LEFT;
    late CellPosition SECOND_FROM_TOP_RIGHT;
    late CellPosition TOP_SECOND_FROM_LEFT;
    late CellPosition TOP_SECOND_FROM_RIGHT;
    late CellPosition BOTTOM_RIGHT;
    late CellPosition BOTTOM_SECOND_FROM_RIGHT;
    late CellPosition SECOND_FROM_BOTTOM_RIGHT;
    late CellPosition THIRD_FROM_BOTTOM_RIGHT;
    late CellPosition FOURTH_FROM_BOTTOM_RIGHT;
    late CellPosition SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT;
    late CellPosition SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT;
    late CellPosition SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT;
    late CellPosition BOTTOM_THIRD_FROM_RIGHT;
    late CellPosition BOTTOM_FOURTH_FROM_RIGHT;
    late CellPosition BOTTOM_SECOND_FROM_LEFT;
    late CellPosition SECOND_FROM_BOTTOM_LEFT;
    late CellPosition THIRD_FROM_BOTTOM_LEFT;
    late CellPosition BOTTOM_LEFT;
    late CellPosition SECOND_FROM_BOTTOM_SECOND_FROM_LEFT;

    // Java field initializers run after the base constructor
    void initFieldsBasicTouchButtonCellPositionFactory() {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    }
    

    BasicTouchButtonCellPositionFactory() {
        this.initFieldsBasicTouchButtonCellPositionFactory();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        final TouchButtonLocationHelper touchButtonLocationHelper = TouchButtonLocationHelper();
        final CellPositionFactory cellPositionFactory = CellPositionFactory.getInstance();
        cellPositionFactory.init(touchButtonLocationHelper.getTotalColumns(), touchButtonLocationHelper.getTotalRows());
        this.TOP_LEFT = cellPositionFactory.getInstanceColRow(0, 0);
        this.TOP_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 1, 0);
        this.BOTTOM_LEFT = cellPositionFactory.getInstanceColRow(0, touchButtonLocationHelper.getTotalRows() - 1);
        this.BOTTOM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 1, touchButtonLocationHelper.getTotalRows() - 1);
        this.BOTTOM_SECOND_FROM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 2, touchButtonLocationHelper.getTotalRows() - 1);
        this.SECOND_FROM_BOTTOM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 1, touchButtonLocationHelper.getTotalRows() - 2);
        this.SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 2, touchButtonLocationHelper.getTotalRows() - 2);
        this.BOTTOM_SECOND_FROM_LEFT = cellPositionFactory.getInstanceColRow(1, touchButtonLocationHelper.getTotalRows() - 1);
        this.SECOND_FROM_BOTTOM_LEFT = cellPositionFactory.getInstanceColRow(0, touchButtonLocationHelper.getTotalRows() - 2);
        this.SECOND_FROM_BOTTOM_SECOND_FROM_LEFT = cellPositionFactory.getInstanceColRow(1, touchButtonLocationHelper.getTotalRows() - 2);
        if (touchButtonLocationHelper.getTotalRows() > 2) {
            this.SECOND_FROM_TOP_LEFT = cellPositionFactory.getInstanceColRow(0, 1);
            this.SECOND_FROM_TOP_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 1, 1);
        } else {
            this.SECOND_FROM_TOP_LEFT = cellPositionFactory.NONE;
            this.SECOND_FROM_TOP_RIGHT = cellPositionFactory.NONE;
        }
        if (touchButtonLocationHelper.getTotalRows() >= 4) {
            this.THIRD_FROM_BOTTOM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 1, touchButtonLocationHelper.getTotalRows() - 3);
            this.FOURTH_FROM_BOTTOM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 1, touchButtonLocationHelper.getTotalRows() - 4);
            this.THIRD_FROM_BOTTOM_LEFT = cellPositionFactory.getInstanceColRow(0, touchButtonLocationHelper.getTotalRows() - 3);
        } else {
            this.THIRD_FROM_BOTTOM_RIGHT = cellPositionFactory.NONE;
            this.FOURTH_FROM_BOTTOM_RIGHT = cellPositionFactory.NONE;
            this.THIRD_FROM_BOTTOM_LEFT = cellPositionFactory.NONE;
        }
        if (touchButtonLocationHelper.getTotalColumns() >= 4) {
            this.SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 3, touchButtonLocationHelper.getTotalRows() - 2);
            this.SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 4, touchButtonLocationHelper.getTotalRows() - 2);
            this.BOTTOM_THIRD_FROM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 3, touchButtonLocationHelper.getTotalRows() - 1);
            this.BOTTOM_FOURTH_FROM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 4, touchButtonLocationHelper.getTotalRows() - 1);
            this.TOP_SECOND_FROM_LEFT = cellPositionFactory.getInstanceColRow(1, 0);
            this.TOP_SECOND_FROM_RIGHT = cellPositionFactory.getInstanceColRow(touchButtonLocationHelper.getTotalColumns() - 2, 0);
        } else {
            this.SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = cellPositionFactory.NONE;
            this.SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = cellPositionFactory.NONE;
            this.BOTTOM_THIRD_FROM_RIGHT = cellPositionFactory.NONE;
            this.BOTTOM_FOURTH_FROM_RIGHT = cellPositionFactory.NONE;
            this.TOP_SECOND_FROM_LEFT = cellPositionFactory.NONE;
            this.TOP_SECOND_FROM_RIGHT = cellPositionFactory.NONE;
        }
    }
}

