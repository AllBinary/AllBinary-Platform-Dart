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
// package org.allbinary.media.image

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/org/allbinary/image/GameFeatureImageCacheFactory.dart';

class ImageCreationUtil {
    static final ImageCreationUtil instance = ImageCreationUtil();
    

    static ImageCreationUtil getInstance() {
        return ImageCreationUtil.instance;
    }
    

    ImageCreationUtil() {
    }
    

    Image createImageWH(int width, int height) {
        final Image image = GameFeatureImageCacheFactory.getInstance().get(jClassName(this), width, height);
        return image;
    }
    

    Image createImage(int width, int height, double maxScaleX, double maxScaleY) {
        final Image image = GameFeatureImageCacheFactory.getInstance().get(jClassName(this), JMath.toInt32(((width).toDouble() * maxScaleX)) + 1, JMath.toInt32(((height).toDouble() * maxScaleY)) + 1);
        return image;
    }
}

