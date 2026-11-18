// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.graphics.form.item

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABCustomItem.dart';

class CustomCustomItem extends ABCustomItem implements UpdateMyFontInterface {
    late MyFontProcessor updateMyFontProcessor;
    late MyFontProcessor myFontProcessor;

    // Java field initializers run after the base constructor
    void initFieldsCustomCustomItem() {
    this.updateMyFontProcessor = UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    CustomCustomItem(String label, BasicColor backgroundBasicColor, BasicColor foregroundBasicColor) : super(label, backgroundBasicColor, foregroundBasicColor) {
        this.initFieldsCustomCustomItem();
        
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
    }
}

