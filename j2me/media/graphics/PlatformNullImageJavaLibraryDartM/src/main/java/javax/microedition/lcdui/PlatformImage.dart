/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package javax.microedition.lcdui

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/javax/microedition/lcdui/NullImage.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/javax/microedition/lcdui/Graphics.dart';

//PlatformNullImageJavaLibrary
class PlatformImage {
    

    Object getImage(Object graphicsSurface2) {
        return NullImage.NULL_IMAGE;
    }
    

    int getSurfaceWidth(Object graphicsSurface2, int width) {
        return width;
    }
    

    int getSurfaceHeight(Object graphicsSurface2, int height) {
        return height;
    }
    

    int getWidth(Image image, int width) {
        return width;
    }
    

    int getHeight(Image image, int height) {
        return height;
    }
    

    Graphics getGraphics(Object graphicsSurface, int width, int height, Image image) {
        throw JException('RuntimeException', '');
    }
    

    void drawImage(Image image, int x, int y, int anchor, Graphics g2, Object g) {
    }
    

    void drawRegion(Image image, int x_src, int y_src, int width, int height, int transform, int x_dst, int y_dst, int anchor, Graphics g) {
    }
    

    void getRGB(JArray<int> argb, int offset, int scanlength, int x, int y, int width, int height, Image image) {
    }
    

    void setRGB(JArray<int> argb, int offset, int scanlength, int x, int y, int width, int height, Image image) {
    }
    

    JArray<int> getData(Image image) {
        return NullUtil.getInstance().NULL_INT_ARRAY;
    }
}

