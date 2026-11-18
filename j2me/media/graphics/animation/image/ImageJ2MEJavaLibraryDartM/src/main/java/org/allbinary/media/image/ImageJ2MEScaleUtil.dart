/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2023 AllBinary
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

class ImageJ2MEScaleUtil {
    static final ImageJ2MEScaleUtil instance = ImageJ2MEScaleUtil();
    

    static ImageJ2MEScaleUtil getInstance() {
        return ImageJ2MEScaleUtil.instance;
    }
    

    ImageJ2MEScaleUtil() {
    }
    

    List<Image?> scaleArray(List<Image?> images, int width, int height) {
        final List<Image?> scaledImages = List<Image?>.filled(images.length, null);
        for (int index = images.length; --index >= 0; ) {
            scaledImages[index] = this.scale(images[index]!, width, height);
        }
        return scaledImages;
    }
    

    Image scale(Image image, int width, int height) {
        final int sourceWidth = image.getWidth();
        final int sourceHeight = image.getHeight();
        final List<int> originalData = List<int>.filled(image.getWidth() * image.getHeight(), 0);
        image.getRGB(originalData, 0, image.getWidth(), 0, 0, image.getWidth(), image.getHeight());
        final List<int> scaledData = List<int>.filled(width * height, 0);
        final int heightRatioFactor = (8 * sourceHeight) ~/ height;
        final int widthRatioFactor = (8 * sourceWidth) ~/ width;
        int scaledIndex = scaledData.length - 1;
        int dx = 0;
        int dy = 0;
        for (int index = height; --index >= 0; ) {
            dy = (index * heightRatioFactor) >> 3;
            for (int index2 = width; --index2 >= 0; ) {
                dx = (index2 * widthRatioFactor) >> 3;
                scaledData[scaledIndex--] = originalData[(sourceWidth * dy) + dx];
            }
        }
        final Image scaledImage = Image.createRGBImage(scaledData, width, height, true);
        return scaledImage;
    }
}

