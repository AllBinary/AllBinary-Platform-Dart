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
import 'package:allbinary/org/allbinary/image/ImageCache.dart';

class ImageScaleUtil {
    static final ImageScaleUtil instance = ImageScaleUtil();
    

    static ImageScaleUtil getInstance() {
        return ImageScaleUtil.instance;
    }
    

    ImageScaleUtil() {
    }
    

    Image createImage2(ImageCache imageCache, Image originalImage, double scaleNominatorX, double scaleDenominatorX, double scaleNominatorY, double scaleDenominatorY, bool cached) {
        return this.createImage3(imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, true);
    }
    

    Image createImage3(ImageCache imageCache, Image originalImage, double scaleNominatorX, double scaleDenominatorX, double scaleNominatorY, double scaleDenominatorY, bool cached, bool mutable) {
        return originalImage;
    }
}

