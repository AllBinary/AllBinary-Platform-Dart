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
// package org.allbinary.graphics.form.item

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Command.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABTextItem.dart';

class CommandTextItem extends ABTextItem {
    late Command command;

    // Java field initializers run after the base constructor
    void initFieldsCommandTextItem() {
    
    }
    

    CommandTextItem(Command command, int layout, String altText, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) : super(command.getLabel(), layout, altText, backgroundBasicColor, foregroundBasicColor) {
        this.initFieldsCommandTextItem();
        
        this.command = command;
    }
    

    @override
    bool isFocusable() {
        return true;
    }
    

    Command getCommand() {
        return this.command;
    }
}

