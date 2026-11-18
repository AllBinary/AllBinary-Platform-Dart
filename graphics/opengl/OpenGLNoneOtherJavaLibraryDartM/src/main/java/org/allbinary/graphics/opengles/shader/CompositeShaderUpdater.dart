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
import 'package:allbinary/javax/microedition/khronos/egl/EGLConfig.dart';
import 'package:allbinary/javax/microedition/khronos/opengles/GL10.dart';
import 'package:allbinary/org/allbinary/logic/NullUtil.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/string/CommonSeps.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/shader/ShaderUpdater.dart';

class CompositeShaderUpdater extends ShaderUpdater {
    static final CompositeShaderUpdater instanceC = CompositeShaderUpdater(StringUtil.getInstance().getArrayInstance(), StringUtil.getInstance().getArrayInstance(), StringUtil.getInstance().getArrayInstance(), NullUtil.getInstance().NULL_INT_ARRAY);
    late CommonSeps commonSeps;

    // Java field initializers run after the base constructor
    void initFieldsCompositeShaderUpdater() {
    this.commonSeps = CommonSeps.getInstance();
    }
    

    static CompositeShaderUpdater getInstance() {
        return CompositeShaderUpdater.instanceC;
    }
    

    CompositeShaderUpdater(List<String?> uniformBlockArray, List<String?> uniformArray, List<String?> attributeArray, List<int> attributeHandleArray) {
        this.initFieldsCompositeShaderUpdater();
    }
    

    @override
    void onSurfaceCreated([dynamic p0 = jnone, dynamic p1 = jnone, dynamic p2 = jnone]) {
        if (!identical(p2, jnone) && p0 is GL10 && p1 is EGLConfig && p2 is int) {
            this.onSurfaceCreated$3(p0, p1, p2);
            return;
        }
        if (!identical(p1, jnone) && identical(p2, jnone) && p0 is GL10 && p1 is EGLConfig) {
            this.onSurfaceCreated$2(p0, p1);
            return;
        }
        throw JException('NoSuchMethodError', 'onSurfaceCreated');
    }

    dynamic onSurfaceCreated$2(dynamic p0, dynamic p1) {
        return super.onSurfaceCreated(p0, p1);
    }

    void onSurfaceCreated$3(GL10 gl, EGLConfig eglConfig, int programHandle) {
    }
    

    void onSurfaceDestroyed(GL10 gl) {
    }
}

