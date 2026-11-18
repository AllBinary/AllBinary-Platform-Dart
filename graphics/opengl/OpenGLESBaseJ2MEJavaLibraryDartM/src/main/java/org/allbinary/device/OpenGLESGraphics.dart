// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.device

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/khronos/opengles/GL.dart';
import 'package:allbinary/javax/microedition/khronos/opengles/GL10.dart';
import 'package:allbinary/javax/microedition/lcdui/Font.dart';
import 'package:allbinary/org/allbinary/graphics/font/FontDebugBase.dart';
import 'package:allbinary/org/allbinary/image/opengles/OpenGLSurfaceChangedInterface.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/device/GraphicsInterface.dart';
import 'package:allbinary/org/allbinary/device/NullGL10.dart';

class OpenGLESGraphics implements OpenGLSurfaceChangedInterface, GraphicsInterface {
    late CommonStrings commonStrings;
    late GL10 gl;

    // Java field initializers run after the base constructor
    void initFieldsOpenGLESGraphics() {
    this.commonStrings = CommonStrings.getInstance();
    this.gl = NullGL10.NULL_GL10;
    }
    

    OpenGLESGraphics() {
        this.initFieldsOpenGLESGraphics();
    }
    

    void updateGL(GL gl) {
    }
    

    @override
    void set(GL gl) {
    }
    

    void init() {
    }
    

    void update() {
    }
    

    void setOrthoginalMode() {
    }
    

    void setCameraMode() {
    }
    

    GL10 getGlP() {
        return this.gl;
    }
    

    @override
    void setFontDebug(Font font, FontDebugBase fontDebug) {
        throw JException('RuntimeException', '');
    }
}

