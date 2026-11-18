// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.graphics.displayable

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/org/allbinary/graphics/displayable/DisplayInfoSingleton.dart';

class ScreenRelationalUtil {
    static final ScreenRelationalUtil instance = ScreenRelationalUtil();
    

    static ScreenRelationalUtil getInstance() {
        return ScreenRelationalUtil.instance;
    }
    

    double getScaleImage(Image image) {
        return this.getScaleWH(image.getWidth(), image.getHeight());
    }
    

    double getScaleWH(int aWidth, int aHeight) {
        return this.getScaleWHA(aWidth, aHeight, 20);
    }
    

    double getScaleWHA(int aWidth, int aHeight, int add) {
        final DisplayInfoSingleton displayInfoSingleton = DisplayInfoSingleton.getInstance();
        final List<int> last = displayInfoSingleton.getLast();
        final double width = (last[displayInfoSingleton.WIDTH]).toDouble();
        final double height = (last[displayInfoSingleton.HEIGHT]).toDouble();
        double largestSize = width;
        if (largestSize < height) {
            largestSize = height;
        }
        double scale = (largestSize) / (aWidth).toDouble();
        return scale;
    }
    

    int getScaledHeight(int aWidth, int aHeight) {
        return JMath.toInt32((this.getScaleWH(aWidth, aHeight) * (aHeight).toDouble()));
    }
    

    int getScaledHeightAdd(int aWidth, int aHeight, int add) {
        return JMath.toInt32((this.getScaleWHA(aWidth, aHeight, add) * (aHeight).toDouble()));
    }
}

