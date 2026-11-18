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
// package org.allbinary.image

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/io/InputStream.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/org/allbinary/MIDPUtil.dart';

//ImageCacheBaseJavaLibrary - J2ME
class ImageFactory {
    static final ImageFactory instance = ImageFactory();
    

    static ImageFactory getInstance() {
        return ImageFactory.instance;
    }
    

    Image createImageUrl(String url) {
        return Image.createImage(url);
    }
    

    Image createImage(String caller, int width, int height) {
        return MIDPUtil.getInstance().createImageWH(width, height);
    }
    

    Image createImageFromInputStream([dynamic p0 = jnone, dynamic p1 = jnone]) {
        if (!identical(p0, jnone) && identical(p1, jnone) && p0 is InputStream) {
            return this.createImageFromInputStream$1(p0);
        }
        if (!identical(p1, jnone) && p1 is InputStream) {
            return this.createImageFromInputStream$2(p0, p1);
        }
        throw JException('NoSuchMethodError', 'createImageFromInputStream');
    }

    Image createImageFromInputStream$2(Object key, InputStream inputStream) {
        final Image image = MIDPUtil.getInstance().createImageFromInputStream(inputStream);
        return image;
    }
    

    Image createImageFromInputStream$1(InputStream inputStream) {
        return MIDPUtil.getInstance().createImageFromInputStream(inputStream);
    }
}

