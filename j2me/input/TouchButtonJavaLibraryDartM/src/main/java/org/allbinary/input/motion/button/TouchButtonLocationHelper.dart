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
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/input/motion/button/CommonButtons.dart';

class TouchButtonLocationHelper {
    int totalColumns = 0;
    int totalRows = 0;
    int columnsRemainder = 0;
    int rowsRemainder = 0;
    int columnsRemainderHalf = 0;
    int rowsRemainderHalf = 0;

    // Java field initializers run after the base constructor
    void initFieldsTouchButtonLocationHelper() {
    
    
    
    
    
    
    }
    

    TouchButtonLocationHelper() {
        this.initFieldsTouchButtonLocationHelper();
        int buttonSize = CommonButtons.getInstance().STANDARD_BUTTON_SIZE;
        DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        this.totalColumns = JMath.round((displayInfo.getLastWidth()).toDouble() / (buttonSize).toDouble());
        this.totalRows = JMath.round((displayInfo.getLastHeight()).toDouble() / (buttonSize).toDouble());
        this.columnsRemainder = (displayInfo.getLastWidth()).remainder(buttonSize);
        this.columnsRemainderHalf = (this.columnsRemainder >> 1);
        this.rowsRemainder = (displayInfo.getLastHeight()).remainder(buttonSize);
        this.rowsRemainderHalf = (this.rowsRemainder >> 1);
    }
    

    int getTotalColumns() {
        return this.totalColumns;
    }
    

    int getTotalRows() {
        return this.totalRows;
    }
    

    int getColumnsRemainder() {
        return this.columnsRemainder;
    }
    

    int getRowsRemainder() {
        return this.rowsRemainder;
    }
    

    int getColumnsRemainderHalf() {
        return this.columnsRemainderHalf;
    }
    

    int getRowsRemainderHalf() {
        return this.rowsRemainderHalf;
    }
    

    @override
    String toString() {
        StringMaker stringBuffer = StringMaker();
        stringBuffer.append("totalColumns: ");
        stringBuffer.appendint(this.totalColumns);
        stringBuffer.append(" totalRows: ");
        stringBuffer.appendint(this.totalRows);
        stringBuffer.append(" columnsRemainder: ");
        stringBuffer.appendint(this.columnsRemainder);
        stringBuffer.append(" rowsRemainder: ");
        stringBuffer.appendint(this.rowsRemainder);
        stringBuffer.append(" columnsRemainderHalf: ");
        stringBuffer.appendint(this.columnsRemainderHalf);
        stringBuffer.append(" rowsRemainderHalf: ");
        stringBuffer.appendint(this.rowsRemainderHalf);
        return stringBuffer.toString();
    }
}

