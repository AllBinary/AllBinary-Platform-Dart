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
import 'package:allbinary/org/allbinary/util/BasicArrayList.dart';

class ShaderManager {
    static final ShaderManager instance = ShaderManager(-1, -1);
    late String LOAD_SHADER;
    late CommonStrings commonStrings;
    int GL_VERTEX_SHADER = 0;
    int GL_FRAGMENT_SHADER = 0;

    // Java field initializers run after the base constructor
    void initFieldsShaderManager() {
    this.LOAD_SHADER = "loadShader";
    this.commonStrings = CommonStrings.getInstance();
    
    
    }
    

    static ShaderManager getInstance() {
        return ShaderManager.instance;
    }
    

    ShaderManager(int GL_VERTEX_SHADER, int GL_FRAGMENT_SHADER) {
        this.initFieldsShaderManager();
        this.GL_VERTEX_SHADER = GL_VERTEX_SHADER;
        this.GL_FRAGMENT_SHADER = GL_FRAGMENT_SHADER;
    }
    

    int load(GL10 gl, String resource, List<String?> shaderAsStringArray, int shaderType) {
        return -1;
    }
    

    int loadShader(GL10 gl, String resource, BasicArrayList stringList, int shaderType) {
        return -1;
    }
}

