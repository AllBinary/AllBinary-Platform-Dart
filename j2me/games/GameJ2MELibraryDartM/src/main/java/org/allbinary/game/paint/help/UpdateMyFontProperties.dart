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
// package org.allbinary.game.paint.help

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';

class UpdateMyFontProperties {
    late List<String?> actionStringArray;
    late List<int> keymappingBeginWidthArray;
    late List<int> actionStringDeltaXArray;
    late List<List<int>?> inputDeltaXArray;
    late List<List<String?>?> sepArray;
    late List<List<int>?> sepWidthArray;
    int charHeight = 0;

    // Java field initializers run after the base constructor
    void initFieldsUpdateMyFontProperties() {
    this.actionStringArray = StringUtil.getInstance().getArrayInstance();
    this.keymappingBeginWidthArray = NullUtil.getInstance().NULL_INT_ARRAY;
    this.actionStringDeltaXArray = NullUtil.getInstance().NULL_INT_ARRAY;
    this.inputDeltaXArray = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY;
    this.sepArray = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY_OF_ARRAYS;
    this.sepWidthArray = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY;
    this.charHeight = 0;
    }

    UpdateMyFontProperties() {
        this.initFieldsUpdateMyFontProperties();
    }
}

