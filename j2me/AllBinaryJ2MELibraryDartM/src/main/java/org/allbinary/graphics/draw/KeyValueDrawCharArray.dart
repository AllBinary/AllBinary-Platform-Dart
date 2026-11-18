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
// package org.allbinary.graphics.draw

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/logic/java/character/CharArrayFactory.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontProcessor.dart';

class KeyValueDrawCharArray implements UpdateMyFontInterface {
    late MyFontProcessor myFontProcessor;
    late String LABEL;
    int labelX = 0;
    int valueX = 0;
    late List<int> value;
    int len = 0;

    // Java field initializers run after the base constructor
    void initFieldsKeyValueDrawCharArray() {
    this.myFontProcessor = UpdateMyFontProcessor(this);
    
    
    this.valueX = 0;
    this.value = CharArrayFactory.getInstance().getZeroCharArray();
    this.len = 0;
    }
    

    KeyValueDrawCharArray(String label, int x) {
        this.initFieldsKeyValueDrawCharArray();
        this.LABEL = label;
        this.labelX = x;
    }
    

    @override
    void updateMeasurement(Graphics graphics) {
        int labelWidth = graphics.getFont().stringWidth(this.LABEL) - this.LABEL.length;
        this.valueX = labelWidth + this.labelX;
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    void paint(Graphics graphics, int y) {
        this.myFontProcessor.process(graphics);
        graphics.drawString(this.LABEL, this.labelX, y, 0);
        graphics.drawChars(this.value, 0, this.len, this.valueX, y, 0);
    }
    

    void update(List<int> value, int len) {
        this.value = value;
        this.len = len;
    }
}

