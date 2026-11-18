/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
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
// package org.allbinary.graphics.opengles

import 'package:allbinary/allbinary_java.dart';
import 'package:allbinary/org/allbinary/graphics/opengles/OpenGLFeature.dart';

class OpenGLFeatureFactory {
    static final OpenGLFeatureFactory instance = OpenGLFeatureFactory();
    late OpenGLFeature OPENGL_OPTIONS;
    late OpenGLFeature OPENGL;
    late OpenGLFeature OPENGL_SURFACE_VIEW;
    late OpenGLFeature OPENGL_2D;
    late OpenGLFeature OPENGL_3D;
    late OpenGLFeature OPENGL_2D_AND_3D;
    late OpenGLFeature OPENGL_AUTO_SELECT;
    late OpenGLFeature OPENGL_MINIMUM;
    late OpenGLFeature OPENGL_AS_GAME_THREAD;
    late OpenGLFeature OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS;
    late OpenGLFeature IMAGE_COLOR_DEPTH_4444;
    late OpenGLFeature IMAGE_COLOR_DEPTH_8888;
    late OpenGLFeature IMAGE_COLOR_DEPTH_565;
    late OpenGLFeature OPENGL_COLOR_DEPTH_4444;
    late OpenGLFeature OPENGL_COLOR_DEPTH_8888;
    late OpenGLFeature OPENGL_COLOR_DEPTH_565;
    late OpenGLFeature OPENGL_DRAW_TEXTURE;
    late OpenGLFeature OPENGL_VERTEX_BUFFER_OBJECT;
    late OpenGLFeature OPENGL_SIMPLE_OBJECT3D_PROCESSOR;
    late OpenGLFeature OPENGL_COMPLEX_OBJECT3D_PROCESSOR;
    late OpenGLFeature OPENGL_SIMPLE_TEXTURE_PROCESSOR;
    late OpenGLFeature OPENGL_COMPLEX_TEXTURE_PROCESSOR;

    // Java field initializers run after the base constructor
    void initFieldsOpenGLFeatureFactory() {
    this.OPENGL_OPTIONS = OpenGLFeature("OpenGL Options");
    this.OPENGL = OpenGLFeature("OpenGL");
    this.OPENGL_SURFACE_VIEW = OpenGLFeature("GLSurfaceView");
    this.OPENGL_2D = OpenGLFeature("OpenGL 2D");
    this.OPENGL_3D = OpenGLFeature("OpenGL 3D");
    this.OPENGL_2D_AND_3D = OpenGLFeature("OpenGL 2D/3D");
    this.OPENGL_AUTO_SELECT = OpenGLFeature("Auto Select");
    this.OPENGL_MINIMUM = OpenGLFeature("Minimum");
    this.OPENGL_AS_GAME_THREAD = OpenGLFeature("As game thread");
    this.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS = OpenGLFeature("As different threads");
    this.IMAGE_COLOR_DEPTH_4444 = OpenGLFeature("4444");
    this.IMAGE_COLOR_DEPTH_8888 = OpenGLFeature("8888");
    this.IMAGE_COLOR_DEPTH_565 = OpenGLFeature("565");
    this.OPENGL_COLOR_DEPTH_4444 = OpenGLFeature("4444");
    this.OPENGL_COLOR_DEPTH_8888 = OpenGLFeature("8888");
    this.OPENGL_COLOR_DEPTH_565 = OpenGLFeature("565");
    this.OPENGL_DRAW_TEXTURE = OpenGLFeature("GL_OES_draw_texture");
    this.OPENGL_VERTEX_BUFFER_OBJECT = OpenGLFeature("vertex_buffer_object");
    this.OPENGL_SIMPLE_OBJECT3D_PROCESSOR = OpenGLFeature("Simple Object3d Processor");
    this.OPENGL_COMPLEX_OBJECT3D_PROCESSOR = OpenGLFeature("Complex Object3d Processor");
    this.OPENGL_SIMPLE_TEXTURE_PROCESSOR = OpenGLFeature("Simple Texture Processor");
    this.OPENGL_COMPLEX_TEXTURE_PROCESSOR = OpenGLFeature("Complex Texture Processor");
    }
    

    static OpenGLFeatureFactory getInstance() {
        return OpenGLFeatureFactory.instance;
    }
    

    OpenGLFeatureFactory() {
        this.initFieldsOpenGLFeatureFactory();
    }
}

