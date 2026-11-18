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
import 'package:allbinary/org/allbinary/graphics/opengles/NullOpenGLProcessorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLProcessor.dart';
import 'package:allbinary/org/allbinary/logic/string/StringUtil.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/shader/Shader.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/shader/ShaderInitializer.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/shader/CompositeShaderUpdater.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/shader/ModelViewProjection.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/shader/NullOpenGLTextureProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/shader/OpenGLObject3dProcessor.dart';

class ShaderComposite {
    late OpenGLProcessor disableProgramShaderOpenGLProcessor;
    late String requiresOpenGLVersion;
    late List<Shader?> shaderArray;
    late ShaderInitializer shaderInitializer;
    late CompositeShaderUpdater compositeShaderUpdater;
    late ModelViewProjection modelViewProjection;
    late OpenGLProcessor colorOpenGLProcessor;
    late OpenGLProcessor vertexOpenGLProcessor;
    late OpenGLProcessor useProgramShaderOpenGLProcessor;
    late OpenGLProcessor shaderMatrixOpenGLProcessor;
    late OpenGLProcessor colorEnableVertexAttribArrayOpenGLProcessor;
    late OpenGLProcessor normalEnableVertexAttribArrayOpenGLProcessor;
    late OpenGLProcessor vertexEnableVertexAttribArrayOpenGLProcessor;
    late OpenGLProcessor textureEnableVertexAttribArrayOpenGLProcessor;
    late OpenGLProcessor colorDisableVertexAttribArrayOpenGLProcessor;
    late OpenGLProcessor normalDisableVertexAttribArrayOpenGLProcessor;
    late OpenGLProcessor vertexDisableVertexAttribArrayOpenGLProcessor;
    late OpenGLProcessor textureDisableVertexAttribArrayOpenGLProcessor;
    late OpenGLObject3dProcessor uniformLightPositionOpenGLProcessor;
    late OpenGLObject3dProcessor uniformLightColorOpenGLProcessor;
    late OpenGLObject3dProcessor uniformCameraPositionOpenGLProcessor;
    late OpenGLObject3dProcessor uniformTextureUnitOpenGLProcessor;
    int programHandle = 0;

    // Java field initializers run after the base constructor
    void initFieldsShaderComposite() {
    
    
    
    
    
    
    
    
    this.useProgramShaderOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.shaderMatrixOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.colorEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.normalEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.vertexEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.textureEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.colorDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.normalDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.vertexDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.textureDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance();
    this.uniformLightPositionOpenGLProcessor = NullOpenGLTextureProcessor.getInstance();
    this.uniformLightColorOpenGLProcessor = NullOpenGLTextureProcessor.getInstance();
    this.uniformCameraPositionOpenGLProcessor = NullOpenGLTextureProcessor.getInstance();
    this.uniformTextureUnitOpenGLProcessor = NullOpenGLTextureProcessor.getInstance();
    this.programHandle = 0;
    }
    

    ShaderComposite(String requiresOpenGLVersion, List<Shader?> shaderArray, CompositeShaderUpdater compositeShaderUpdater, ShaderInitializer shaderInitializer, ModelViewProjection modelViewProjection, OpenGLProcessor colorOpenGLProcessor, OpenGLProcessor vertexOpenGLProcessor, OpenGLProcessor disableProgramShaderOpenGLProcessor) {
        this.initFieldsShaderComposite();
        this.requiresOpenGLVersion = requiresOpenGLVersion;
        this.shaderArray = shaderArray;
        this.shaderInitializer = shaderInitializer;
        this.compositeShaderUpdater = compositeShaderUpdater;
        this.modelViewProjection = modelViewProjection;
        this.colorOpenGLProcessor = colorOpenGLProcessor;
        this.vertexOpenGLProcessor = vertexOpenGLProcessor;
        this.disableProgramShaderOpenGLProcessor = disableProgramShaderOpenGLProcessor;
    }
    

    void init(GL10 gl) {
        this.programHandle = this.shaderInitializer.init(gl, this.shaderArray, StringUtil.getInstance().getArrayInstance());
    }
}

