// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.graphics.form.item

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/CustomCustomItem.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABCustomItemInterface.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABStringComponent.dart';

class ABTextItem extends CustomCustomItem implements ABCustomItemInterface {
    

    ABTextItem(String label, int layout, String altText, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) : super(label, backgroundBasicColor, foregroundBasicColor) {
        
    }
    

    void keyPressed(int keyCode) {
    }
    

    @override
    void paintUnselected(Graphics graphics, int x, int y) {
    }
    

    ABStringComponent getLabelStringComponent() {
        return ABStringComponent.NULL_STRING_COMPONENT;
    }
    

    @override
    int getMinimumWidth() {
        return super.getMinimumWidth();
    }
    

    @override
    int getMinimumHeight() {
        return super.getMinimumHeight();
    }
    

    @override
    String getLabel() {
        return super.getLabel();
    }
    

    @override
    void paintXY(Graphics graphics, int x, int y) {
        super.paintXY(graphics, x, y);
    }
}

