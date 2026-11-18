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
import 'package:allbinary/org/allbinary/logic/communication/log/LogUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/graphics/CellPosition.dart';

class CellPositionFactory {
    static CellPositionFactory SINGLETON = CellPositionFactory();
    late LogUtil logUtil;
    late CellPosition NONE;
    late List<List<CellPosition?>?> cellPositionArray;
    int columns = 0;
    int rows = 0;

    // Java field initializers run after the base constructor
    void initFieldsCellPositionFactory() {
    this.logUtil = LogUtil.getInstance();
    this.NONE = CellPosition(-1, -1, -1, -1);
    this.cellPositionArray = List<List<CellPosition?>>.generate(0, (_) => List<CellPosition?>.filled(0, null));
    this.columns = 0;
    this.rows = 0;
    }
    

    static CellPositionFactory getInstance() {
        return CellPositionFactory.SINGLETON;
    }
    

    CellPositionFactory() {
        this.initFieldsCellPositionFactory();
    }
    

    void init(int columns, int rows) {
        final CommonStrings commonStrings = CommonStrings.getInstance();
        final StringMaker stringBuffer = StringMaker();
        stringBuffer.append("Init: columns: ");
        stringBuffer.appendint(columns);
        stringBuffer.append(" rows: ");
        stringBuffer.appendint(rows);
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT);
        this.cellPositionArray = List<List<CellPosition?>>.generate(columns, (_) => List<CellPosition?>.filled(rows, null));
        this.columns = columns;
        this.rows = rows;
        for (int column = 0; column < columns; column++) {
            for (int row = 0; row < rows; row++) {
                this.createInstance(column, row);
            }
        }
    }
    

    CellPosition getInstanceColRow(int i_column, int i_row) {
        try {
            return this.cellPositionArray[i_column]![i_row]!;
        } catch (jcaught) {
            {
                final dynamic e = jcaught;
            final CommonStrings commonStrings = CommonStrings.getInstance();
            this.logUtil.put(StringMaker().append("columns: ").appendint(this.getColumns()).append(" rows: ").appendint(this.getRows()).append(" col: ").appendint(i_column).append(" row: ").appendint(i_row).toString(), this, commonStrings.GET_INSTANCE, e);
            return this.NONE;
            }
        }
    }
    

    CellPosition createInstance(int i_column, int i_row) {
        CellPosition cellPositionCanBeNull = this.cellPositionArray[i_column]![i_row]!;
        if (cellPositionCanBeNull == null) {
            cellPositionCanBeNull = CellPosition(i_column, i_row, this.columns, this.rows);
            this.cellPositionArray[i_column]![i_row] = cellPositionCanBeNull;
        }
        return cellPositionCanBeNull;
    }
    

    int getColumns() {
        return this.columns;
    }
    

    int getRows() {
        return this.rows;
    }
}

