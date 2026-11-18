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
import 'package:allbinary/org/allbinary/string/CommonStrings.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/shader/Shader.dart';

class ShaderInitializer {
    static final ShaderInitializer instance = ShaderInitializer();
    late CommonStrings commonStrings;

    // Java field initializers run after the base constructor
    void initFieldsShaderInitializer() {
    this.commonStrings = CommonStrings.getInstance();
    }

    ShaderInitializer() {
        this.initFieldsShaderInitializer();
    }
    

    static ShaderInitializer getInstance() {
        return ShaderInitializer.instance;
    }
    

    int init(GL10 gl, List<Shader?> shader, List<String?> attributeArray) {
        return -1;
    }
}

