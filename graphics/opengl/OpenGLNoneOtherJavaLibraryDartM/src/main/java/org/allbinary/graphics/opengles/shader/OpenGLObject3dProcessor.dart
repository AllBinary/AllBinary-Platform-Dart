// Generated Code Do Not Modify
// ignore_for_file: unused_import, unnecessary_import, unused_local_variable, unnecessary_null_comparison, unnecessary_cast
// package org.allbinary.graphics.opengles.shader

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/khronos/opengles/GL10.dart';
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';

class OpenGLObject3dProcessor {
    late CommonStrings commonStrings;

    // Java field initializers run after the base constructor
    void initFieldsOpenGLObject3dProcessor() {
    this.commonStrings = CommonStrings.getInstance();
    }

    OpenGLObject3dProcessor() {
        this.initFieldsOpenGLObject3dProcessor();
    }
    

    void process([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (!identical(p1, jnone) && identical(p2, jnone) && p0 is GL10) {
            this.process$2(p0, p1);
            return;
        }
        if (!identical(p2, jnone) && p0 is GL10 && p2 is int) {
            this.process$3(p0, p1, p2);
            return;
        }
        throw JException('NoSuchMethodError', 'process');
    }

    void process$2(GL10 gl, Object object3d) {
    }
    

    void process$3(GL10 gl, Object object3d, int index) {
    }
}

