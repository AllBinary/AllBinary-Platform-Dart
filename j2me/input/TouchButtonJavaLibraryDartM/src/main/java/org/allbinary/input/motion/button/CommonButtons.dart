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
import 'package:allbinary/org/allbinary/graphics/PointFactory.dart';
import 'package:allbinary/org/allbinary/graphics/Rectangle.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';

class CommonButtons {
    static final CommonButtons instance = CommonButtons();
    int STANDARD_BUTTON_SIZE = 0;
    late Rectangle NORMAL_BUTTON;
    late Rectangle LARGE_BUTTON;

    // Java field initializers run after the base constructor
    void initFieldsCommonButtons() {
    
    
    
    }
    

    static CommonButtons getInstance() {
        return CommonButtons.instance;
    }
    

    CommonButtons() {
        this.initFieldsCommonButtons();
        DisplayInfoSingleton displayInfo = DisplayInfoSingleton.getInstance();
        int commonButtonSize = 128;
        while (commonButtonSize > 64) {
            int totalColumns = displayInfo.getLastWidth() ~/ commonButtonSize;
            int totalRows = displayInfo.getLastHeight() ~/ commonButtonSize;
            int max = totalColumns;
            if (totalRows > max) {
                max = totalRows;
            }
            if (max > 9) {
                break;
            }
            commonButtonSize = commonButtonSize >> 1;
        }
        this.STANDARD_BUTTON_SIZE = commonButtonSize;
        this.NORMAL_BUTTON = Rectangle(PointFactory.getInstance().ZERO_ZERO, this.STANDARD_BUTTON_SIZE, this.STANDARD_BUTTON_SIZE);
        this.LARGE_BUTTON = Rectangle(PointFactory.getInstance().ZERO_ZERO, this.STANDARD_BUTTON_SIZE << 1, this.STANDARD_BUTTON_SIZE << 1);
    }
}

