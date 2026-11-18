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
// package org.allbinary.graphics

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graph/V.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';

class CellPosition extends V {
    int id = 0;
    int column = 0;
    int row = 0;

    // Java field initializers run after the base constructor
    void initFieldsCellPosition() {
    
    
    
    }
    

    CellPosition(int column, int row, int columns, int rows) {
        this.initFieldsCellPosition();
        this.column = column;
        this.row = row;
        this.id = (row * columns) + column;
    }
    

    int getColumn() {
        return this.column;
    }
    

    int getRow() {
        return this.row;
    }
    

    @override
    String toString() {
        return CellPosition.toStringColRow(this.getColumn(), this.getRow());
    }
    

    static String toStringCellPosition(CellPosition basicGeographicMapCellPosition) {
        return CellPosition.toStringColRow(basicGeographicMapCellPosition.getColumn(), basicGeographicMapCellPosition.getRow());
    }
    

    static String toStringColRow(int i_column, int i_row) {
        StringMaker stringBuffer = StringMaker();
        CommonSeps commonSeps = CommonSeps.getInstance();
        stringBuffer.append(commonSeps.PARENTHESIS_OPEN);
        stringBuffer.appendint(i_column);
        stringBuffer.append(commonSeps.COMMA);
        stringBuffer.appendint(i_row);
        stringBuffer.append(commonSeps.PARENTHESIS_CLOSE);
        return stringBuffer.toString();
    }
    

    @override
    int getId() {
        return this.id;
    }
}

