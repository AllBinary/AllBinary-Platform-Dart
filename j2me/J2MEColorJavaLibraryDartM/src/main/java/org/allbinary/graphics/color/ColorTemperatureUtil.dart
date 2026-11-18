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
// package org.allbinary.graphics.color

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';

class ColorTemperatureUtil {
    static final ColorTemperatureUtil instance = ColorTemperatureUtil();
    late BasicColorFactory basicColorFactory;

    // Java field initializers run after the base constructor
    void initFieldsColorTemperatureUtil() {
    this.basicColorFactory = BasicColorFactory.getInstance();
    }

    ColorTemperatureUtil() {
        this.initFieldsColorTemperatureUtil();
    }
    

    static ColorTemperatureUtil getInstance() {
        return ColorTemperatureUtil.instance;
    }
    

    BasicColor getBasicColor(int thirdTemp) {
        BasicColor basicColor = this.basicColorFactory.RED;
        if (thirdTemp > 3700) {
            basicColor = this.basicColorFactory.PURPLE;
        } else if (thirdTemp > 3200) {
            basicColor = this.basicColorFactory.BLUE;
        } else if (thirdTemp > 2700) {
            basicColor = this.basicColorFactory.PUCE;
        } else if (thirdTemp > 2200) {
            basicColor = this.basicColorFactory.WHITE;
        } else if (thirdTemp > 1700) {
            basicColor = this.basicColorFactory.GREEN;
        } else if (thirdTemp > 1200) {
            basicColor = this.basicColorFactory.YELLOW;
        } else if (thirdTemp > 700) {
            basicColor = this.basicColorFactory.ORANGE;
        }
        return basicColor;
    }
}

