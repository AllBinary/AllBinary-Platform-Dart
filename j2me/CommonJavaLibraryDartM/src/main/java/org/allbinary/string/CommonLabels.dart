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
// ignore_for_file: unused_import, unused_local_variable, unnecessary_null_comparison
// package org.allbinary.string

import 'package:allbinary/allbinary_java.dart';

class CommonLabels {
    static final CommonLabels instance = CommonLabels();
    late String WIDTH_LABEL;
    late String HEIGHT_LABEL;
    late String END_LABEL;
    late String TOTAL_LABEL;
    late String INDEX_LABEL;
    late String START_LABEL;
    late String COMMAND_LABEL;
    late String NAME_LABEL;
    late String START;
    late String ELAPSED;
    late String CURRENT;
    late String NEXT;
    late String ITEM_LABEL;
    late String RESULT_;
    late String COLON_SEP;

    // Java field initializers run after the base constructor
    void initFieldsCommonLabels() {
    this.WIDTH_LABEL = " Width: ";
    this.HEIGHT_LABEL = " Height: ";
    this.END_LABEL = "End: ";
    this.TOTAL_LABEL = "Total: ";
    this.INDEX_LABEL = "index: ";
    this.START_LABEL = "Start: ";
    this.COMMAND_LABEL = "Command: ";
    this.NAME_LABEL = "Name: ";
    this.START = this.START_LABEL;
    this.ELAPSED = " Elapsed: ";
    this.CURRENT = " Current: ";
    this.NEXT = "Next";
    this.ITEM_LABEL = "Item: ";
    this.RESULT_ = "Result: ";
    this.COLON_SEP = ": ";
    }

    CommonLabels() {
        this.initFieldsCommonLabels();
    }
    

    static CommonLabels getInstance() {
        return CommonLabels.instance;
    }
}

