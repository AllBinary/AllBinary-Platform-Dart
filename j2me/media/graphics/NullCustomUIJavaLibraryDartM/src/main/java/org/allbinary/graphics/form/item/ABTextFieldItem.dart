// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.graphics.form.item

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Canvas.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/logic/util/visitor/Visitor.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABTextItem.dart';

class ABTextFieldItem extends ABTextItem {
    late Font font;

    // Java field initializers run after the base constructor
    void initFieldsABTextFieldItem() {
    
    }
    

    ABTextFieldItem(Canvas canvas, Visitor visitor, String label, String value, int maxSize, int layout, String altText, Font font, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) : super(label, layout, altText, backgroundBasicColor, foregroundBasicColor) {
        this.initFieldsABTextFieldItem();
        
        this.font = font;
    }
    

    @override
    String getLabel() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    @override
    void setLabel(String label) {
    }
    

    String getString() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    void setString(String string) {
    }
    

    void setFocus(bool state) {
    }
    

    int getFontHeight() {
        return this.font.getHeight();
    }
    

    void setBackgroundBasicColorP(BasicColor basicColor) {
    }
    

    void setForegroundBasicColorP(BasicColor basicColor) {
    }
}

