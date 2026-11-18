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
// package org.allbinary.graphics.opengles.shader

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/javax/microedition/khronos/opengles/GL10.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/shader/OpenGLObject3dProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/shader/ShaderComposite.dart';

class UniformLightPositionOpenGLProcessor extends OpenGLObject3dProcessor {
    

    UniformLightPositionOpenGLProcessor(ShaderComposite shaderComposite, int handleIndex) {
    }
    

    @override
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

    @override
    void process$2(GL10 gl, Object unused) {
    }
}

