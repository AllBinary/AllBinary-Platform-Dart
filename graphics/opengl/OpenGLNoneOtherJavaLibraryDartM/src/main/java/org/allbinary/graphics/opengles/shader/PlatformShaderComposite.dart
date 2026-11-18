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
import 'package:allbinary/org/allbinary/graphics/opengles/NullOpenGLProcessorFactory.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLProcessor.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/shader/ShaderComposite.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/shader/Shader.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/shader/CompositeShaderUpdater.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/shader/ShaderInitializer.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/shader/ModelViewProjection.dart';

class PlatformShaderComposite extends ShaderComposite {
    

    PlatformShaderComposite(String requiresOpenGLVersion, List<Shader?> shaderArray, CompositeShaderUpdater compositeShaderUpdater, ShaderInitializer shaderInitializer, ModelViewProjection modelViewProjection, OpenGLProcessor colorOpenGLProcessor, OpenGLProcessor vertexOpenGLProcessor) : super(requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, NullOpenGLProcessorFactory.getInstance()) {
        
    }
}

