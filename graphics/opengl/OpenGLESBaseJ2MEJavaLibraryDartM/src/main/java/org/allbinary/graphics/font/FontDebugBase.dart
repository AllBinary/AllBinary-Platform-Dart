// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.graphics.font

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/org/allbinary/logic/string/StringMaker.dart';

//OpenGLESBaseJ2MEJavaLibrary
class FontDebugBase {
    static final FontDebugBase instanceBase = FontDebugBase();
    late String SET_FONT;

    // Java field initializers run after the base constructor
    void initFieldsFontDebugBase() {
    this.SET_FONT = "setFont";
    }

    FontDebugBase() {
        this.initFieldsFontDebugBase();
    }
    

    static FontDebugBase getInstance() {
        return FontDebugBase.instanceBase;
    }
    

    void debugMetrics(Font currentFont, double convertedTextSize, Object displayMetrics, StringMaker stringBuffer) {
    }
    

    void debugDpi(int densityDpi, StringMaker stringBuffer) {
    }
    

    void debugDimension(Font currentFont, double convertedTextSize, int longestDimensionTotalPixels, StringMaker stringBuffer) {
    }
}

