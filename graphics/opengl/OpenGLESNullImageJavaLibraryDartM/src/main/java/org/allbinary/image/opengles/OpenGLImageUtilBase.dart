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
// package org.allbinary.image.opengles

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/io/InputStream.dart';
import 'package:allbinary/org/allbinary/graphics/OpenGLBitmap.dart';
import 'package:allbinary/org/allbinary/graphics/color/BasicColor.dart';

class OpenGLImageUtilBase {
    

    OpenGLBitmap paint([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone, dynamic p3 = jnone]) {
        if (!identical(p2, jnone) && identical(p3, jnone) && p0 is OpenGLBitmap && p1 is OpenGLBitmap && p2 is int) {
            return this.paint$3(p0, p1, p2);
        }
        if (!identical(p3, jnone) && p0 is OpenGLBitmap && p1 is OpenGLBitmap && p2 is int && p3 is BasicColor) {
            return this.paint$4(p0, p1, p2, p3);
        }
        throw JException('NoSuchMethodError', 'paint');
    }

    OpenGLBitmap paint$3(OpenGLBitmap alphaBitmap, OpenGLBitmap originalBitmap, int index) {
        throw JException('RuntimeException', '');
    }
    

    OpenGLBitmap paint$4(OpenGLBitmap colorBitmap, OpenGLBitmap originalBitmap, int alpha, BasicColor basicColor) {
        throw JException('RuntimeException', '');
    }
    

    OpenGLBitmap createImage(String name) {
        throw JException('RuntimeException', '');
    }
    

    OpenGLBitmap createImageFromInputStream(InputStream inputStream) {
        throw JException('RuntimeException', '');
    }
}

