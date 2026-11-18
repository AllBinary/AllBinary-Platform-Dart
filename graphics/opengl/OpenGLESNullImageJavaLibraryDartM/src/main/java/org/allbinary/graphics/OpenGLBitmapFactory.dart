// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.graphics

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/java/io/InputStream.dart';
import 'package:allbinary/javax/microedition/lcdui/Image.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/platform/graphics/PlatformBitmapBase.dart';
import 'package:allbinary/org/allbinary/platform/graphics/PlatformBitmapBaseFactory.dart';
import 'package:allbinary/org/allbinary/graphics/OpenGLBitmapConfig.dart';
import 'package:allbinary/org/allbinary/graphics/OpenGLBitmap.dart';

class OpenGLBitmapFactory extends PlatformBitmapBaseFactory {
    static final OpenGLBitmapFactory instance = OpenGLBitmapFactory();
    late OpenGLBitmapConfig ARGB_8888;

    // Java field initializers run after the base constructor
    void initFieldsOpenGLBitmapFactory() {
    this.ARGB_8888 = OpenGLBitmapConfig(NullUtil.getInstance().NULL_OBJECT);
    }

    OpenGLBitmapFactory() {
        this.initFieldsOpenGLBitmapFactory();
    }
    

    static OpenGLBitmapFactory getInstance() {
        return OpenGLBitmapFactory.instance;
    }
    

    @override
    PlatformBitmapBase createBitmap([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (!identical(p2, jnone) && p0 is int && p1 is int && p2 is OpenGLBitmapConfig) {
            return this.createBitmap$3(p0, p1, p2) as dynamic;
        }
        if (!identical(p0, jnone) && identical(p1, jnone) && p0 is Image) {
            return this.createBitmap$1(p0) as dynamic;
        }
        throw JException('NoSuchMethodError', 'createBitmap');
    }

    OpenGLBitmap createBitmap$3(int width, int height, OpenGLBitmapConfig config) {
        return OpenGLBitmap(NullUtil.getInstance().NULL_OBJECT);
    }
    

    OpenGLBitmap decodeStream(InputStream inputStream) {
        return OpenGLBitmap(NullUtil.getInstance().NULL_OBJECT);
    }
    

    PlatformBitmapBase createBitmap$1(Image image) {
        return OpenGLBitmap(NullUtil.getInstance().NULL_OBJECT);
    }
}

