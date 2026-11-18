/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.graphics.font

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';
import 'package:allbinary/org/allbinary/graphics/font/MyFontProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/font/UpdateMyFontInterface.dart';

class UpdateMyFontProcessor extends MyFontProcessor {
    late UpdateMyFontInterface updateMeasurementProcessor;

    // Java field initializers run after the base constructor
    void initFieldsUpdateMyFontProcessor() {
    
    }
    

    UpdateMyFontProcessor(UpdateMyFontInterface keyValueDrawCharArray) {
        this.initFieldsUpdateMyFontProcessor();
        this.updateMeasurementProcessor = keyValueDrawCharArray;
    }
    

    @override
    void process(Graphics graphics) {
        this.updateMeasurementProcessor.updateMeasurement(graphics);
    }
}

