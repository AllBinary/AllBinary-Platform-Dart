// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.graphics.form.item

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/javax/microedition/lcdui/Screen.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';

class ABCustomItem {
    static Object NULL_CUSTOM_ITEM = NullUtil.getInstance().NULL_OBJECT;
    

    static ABCustomItem getNullInstance() {
        if (ABCustomItem.NULL_CUSTOM_ITEM == NullUtil.getInstance().NULL_OBJECT) {
            ABCustomItem.NULL_CUSTOM_ITEM = ABCustomItem(StringUtil.getInstance().EMPTY_STRING, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE);
        }
        return (ABCustomItem.NULL_CUSTOM_ITEM as ABCustomItem);
    }
    

    ABCustomItem(String label, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) {
    }
    

    void setOwner(Screen owner) {
    }
    

    void paintXY(Graphics graphics, int x, int y) {
    }
    

    void paintUnselected(Graphics graphics, int x, int y) {
    }
    

    bool isFocusable() {
        return false;
    }
    

    String getLabel() {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    void setLabel(String label) {
    }
    

    int getHeight() {
        return 0;
    }
    

    void setHeight(int height) {
    }
    

    double getValue() {
        return 0.0;
    }
    

    void setValue(double value) {
    }
    

    int getMinimumWidth() {
        return 0;
    }
    

    int getMinimumHeight() {
        return 0;
    }
    

    void preMeasurement(Graphics graphics) {
    }
}

