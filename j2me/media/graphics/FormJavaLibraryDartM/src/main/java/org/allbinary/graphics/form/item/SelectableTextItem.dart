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
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABTextItem.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABStringComponent.dart';

class SelectableTextItem extends ABTextItem {
    

    SelectableTextItem(String label, int layout, String altText, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) : super(label, layout, altText, backgroundBasicColor, foregroundBasicColor) {
        
    }
    

    @override
    bool isFocusable() {
        return true;
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        this.myFontProcessor.process(graphics);
        ABStringComponent stringComponent = this.getLabelStringComponent();
        if (stringComponent != null) {
            graphics.setColor(stringComponent.getForegroundBasicColor().intValue());
        }
        graphics.drawString(this.getLabel(), x + 2, y, 0);
    }
}

