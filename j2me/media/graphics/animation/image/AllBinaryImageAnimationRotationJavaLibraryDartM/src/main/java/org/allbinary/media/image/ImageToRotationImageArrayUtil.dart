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
import 'package:allbinary/org/allbinary/media/image/ImageRotationUtil.dart';

class ImageToRotationImageArrayUtil {
    static final ImageToRotationImageArrayUtil instance = ImageToRotationImageArrayUtil();
    

    static ImageToRotationImageArrayUtil getInstance() {
        return ImageToRotationImageArrayUtil.instance;
    }
    

    ImageToRotationImageArrayUtil() {
    }
    

    List<Image?> generate(Image image, int angleIncrement, int totalAngle) {
        final ImageRotationUtil imageRotationUtil = ImageRotationUtil.getInstance();
        final int totalFrames = totalAngle ~/ angleIncrement;
        final List<Image?> imageArray = List<Image?>.filled(totalFrames, null);
        imageArray[0] = image;
        for (int index = 1; index < totalFrames; index++) {
            imageArray[index] = imageRotationUtil.createRotatedImage(image, index * angleIncrement);
        }
        return imageArray;
    }
}

