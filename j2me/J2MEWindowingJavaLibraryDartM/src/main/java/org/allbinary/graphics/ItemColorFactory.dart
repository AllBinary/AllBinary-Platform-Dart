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

class ItemColorFactory {
    static final ItemColorFactory instance = ItemColorFactory();
    int INVERT_PAINT = 0;
    int PAINT = 0;
    int TEXT_FIELD_NO_FOCUS = 0;

    // Java field initializers run after the base constructor
    void initFieldsItemColorFactory() {
    this.INVERT_PAINT = 0xFF000000;
    this.PAINT = 0xFFe07718;
    this.TEXT_FIELD_NO_FOCUS = 0x7F7F7F;
    }

    ItemColorFactory() {
        this.initFieldsItemColorFactory();
    }
    

    static ItemColorFactory getInstance() {
        return ItemColorFactory.instance;
    }
}

