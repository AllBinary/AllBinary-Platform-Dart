// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.graphics.form.item

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/javax/microedition/lcdui/NullImage.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';
import 'package:allbinary/org/allbinary/graphics/form/item/ABCustomItem.dart';

class ABCustomImageItem extends ABCustomItem {
    int yOffset = 0;

    // Java field initializers run after the base constructor
    void initFieldsABCustomImageItem() {
    this.yOffset = 0;
    }
    

    ABCustomImageItem(String label, Image image, int layout, String altText, BasicColor basicColor, int yOffset) : super(label, basicColor, basicColor) {
        this.initFieldsABCustomImageItem();
        
    }
    

    Image getImage() {
        return NullImage.NULL_IMAGE;
    }
}

